import 'package:baselib/agora/agora.dart';
import 'package:common_utils/common_utils.dart';
import 'package:nim/nim.dart';
import 'package:nim/service/chatroom_service.dart';
import 'package:nim/types/types.dart';
import 'package:room/model/room.dart';
import 'package:room/room/model/model.dart';
import 'package:room/room/transform.dart';
import 'package:rxdart/rxdart.dart';

import 'controller_mixin.dart';

class SeatController with RoomController {
  ///seat状态
  Map<SeatIdx, BehaviorSubject<Seat>> seatStreams = {};

  Map<SeatIdx, Seat> get seats =>
      seatStreams.map((key, value) => MapEntry(key, value.value));

  ///主播位
  BehaviorSubject<Seat> hostSeatStream = BehaviorSubject();

  ///我的当前的座位
  BehaviorSubject<Seat> myCurrentSeatStream = BehaviorSubject();

  Seat get myCurrentSeat => myCurrentSeatStream.value;

  Seat get hostSeat => hostSeatStream.value;

  List<SeatIdx> get layoutSeats =>
      roomGlobal.chatRoom?.layout == RoomLayout.seats_8
          ? layout_8_seats
          : layout_4_seats;

  //座位状态变化的回调
  SeatChangedHandler _seatChangedHandler;

  //初始化房间座位
  void initController({SeatChangedHandler seatChangedHandler}) {
    this._seatChangedHandler = seatChangedHandler;
    layoutSeats?.forEach((seatIdx) {
      seatStreams[seatIdx] = BehaviorSubject();
      var seat = Seat.normal(seatIdx, roomSeatType);
      seatStreams[seatIdx].add(seat);
    });
    var host = Seat.normal(SeatIdx.SEAT0, roomSeatType);
    hostSeatStream.add(host);
    _updateSeats(init: true);
    //监听队列的变化
    Nim.chatRoomService.addChatRoomMessageCall(_nimChatRoomMessage);
    //去监听声网音频信号，即当前讲话的用户
    AgoraGlobal.instance.addAudioVolumeIndication(audioVolumeIndication);
  }

  @override
  void reSet() {
    ///清理座位的数据监听流
    seatStreams.forEach((key, value) {
      value.close();
    });
    seatStreams.clear();
    _seatChangedHandler = null;
    Nim.chatRoomService.removeChatRoomMessageCall(_nimChatRoomMessage);
    AgoraGlobal.instance.removeAudioVolumeIndication(audioVolumeIndication);
  }

  void initSeats(ChatRoom chatRoom, ChatRoomUserInfo currentChatRoomUserInfo,
      {SeatChangedHandler seatChangedHandler}) async {}

  ///查询某个用户是在座位上
  SeatIdx queryUserSeatIdx(String userId) {
    var isHost = hostSeatStream?.value?.userInfo?.userId == userId;
    if (isHost) {
      return SeatIdx.SEAT0;
    } else {
      var seatIdx;
      seats.forEach((key, value) {
        if (value?.userInfo?.userId == userId) {
          seatIdx = key;
        }
      });
      return seatIdx;
    }
  }

  ///网易消息监听
  void _nimChatRoomMessage(NimChatRoomMessage nimChatRoomMessage) async {
    if (nimChatRoomMessage.msgType == MsgType.notification) {
      LogUtil.v(nimChatRoomMessage.attachment, tag: "notification-attachment");
      if (nimChatRoomMessage.attachment != null &&
          nimChatRoomMessage.attachment.type ==
              NotificationType.ChatRoomQueueChange) {
        _updateSeats();
      }
    }
  }

  ///收到新的消息（公屏消息）
  void newChatRoomMessageHandler(ChatRoomMessage chatRoomMessage) async {
    //如果是表情类消息,需要传递给座位
    if (chatRoomMessage is EmojChatRoomMessage) {
      var seatIdx = chatRoomMessage.seatIdx;
      if (seatIdx != null) {
        var seatStream = seatStreams[seatIdx];
        var seat = seatStream.value;
        //当前卓伟上没有显示麦位表情，有麦位表情的时候不插入
        if (seat.emojIcon == null) {
          seat.emojIcon = chatRoomMessage.emojIcon;
          seatStream.add(seat);
          //2秒以后再将其设置位null
          await Future.delayed(Duration(seconds: 2));
          seat.emojIcon = null;
          seatStream.add(seat);
        }
      }
    }
  }

  //正在讲话的玩家
  void audioVolumeIndication(List<AudioVolume> speakers) {
    bool isHosSpeaker = false;
    seats.forEach((key, seat) {
      bool isSpeaker = false;
      speakers.forEach((speaker) {
        var uid = speaker.uid.toString();
        if (seat?.userInfo?.userId == uid) {
          isSpeaker = true;
        }
        if (hostSeat?.userInfo?.userId == uid) {
          isHosSpeaker = true;
        }
      });
      if (seat.isSpeak != isSpeaker) {
        seat.isSpeak = isSpeaker;
        seatStreams[key]?.add(seat);
      }
    });
    if (hostSeat.isSpeak != isHosSpeaker) {
      hostSeat.isSpeak = isHosSpeaker;
      hostSeatStream?.add(hostSeat);
    }
  }

  ///处理队列数据
  void _updateSeats({bool init = false}) async {
    var map =
        await Nim.chatRoomService.fetchQueue(roomGlobal.chatRoom.externRoomId);
    _logQueue(map);
    _handlerSeats(map, init: init);
  }

  ///打印log
  void _logQueue(Map map) {
    map.forEach((key, value) {
      LogUtil.v(key, tag: "_handlerQueue");
      LogUtil.v(value, tag: "_handlerQueue");
      LogUtil.v(
          "------------------------------------------------------------------------",
          tag: "_handlerQueue");
    });
  }

  ///处理座位
  Future _handlerSeats(Map map, {bool init = false}) async {
    //主播位
    _updateHostSeat(map, init);
    //普通座位
    for (int i = 0; i < layoutSeats.length; i++) {
      var seatIdx = layoutSeats[i];
      var index = seatIdx.index;
      var sidx = 'SEAT$index';
      var seatValue = map[sidx];
      _updateSeat(seatValue, seatIdx, init);
    }
  }

  ///刷新主播位
  Future _updateHostSeat(Map map, bool init) async {
    var seatValue = map['SEAT0'];
    Seat seat;
    if (seatValue == null) {
      seat = Seat.normal(SeatIdx.SEAT0, roomSeatType);
    } else {
      seat = await transformToSeat(SeatIdx.SEAT0, seatValue, roomSeatType);
    }
    var oldSeat = hostSeatStream?.value;
    //避免刷新所有的座位
    if (oldSeat != seat) {
      hostSeatStream.add(seat);
      _updateMySeat(seat);
      if (!init) {
        _seatChangedHandler?.call(oldSeat, seat);
      }
    }
  }

  ////更新座位状态
  Future _updateSeat(seatValue, SeatIdx seatIdx, bool init) async {
    var seat;
    if (seatValue == null) {
      seat = Seat.normal(seatIdx, roomSeatType);
    } else {
      seat = await transformToSeat(seatIdx, seatValue, roomSeatType);
    }
    var oldSeat = seatStreams[seatIdx]?.value;
    //避免刷新所有的座位
    if (oldSeat != seat) {
      seatStreams[seatIdx]?.add(seat);
      _updateMySeat(seat);
      if (!init) {
        _seatChangedHandler?.call(oldSeat, seat);
      }
    }
  }

  //更新我的座位
  void _updateMySeat(Seat seat) {
    if (roomGlobal.currentChatRoomUserInfo?.userId == seat?.userInfo?.userId) {
      if (seat.userInfo != null) {
        myCurrentSeatStream.add(seat);
      } else {
        myCurrentSeatStream.add(null);
      }
    } else {
      myCurrentSeatStream.add(null);
    }
  }
}

typedef SeatChangedHandler(Seat oldSeat, Seat newSeat);
