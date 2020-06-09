import 'package:baselib/meta/emoj.dart';
import 'package:common_utils/common_utils.dart';
import 'package:nim/nim.dart';
import 'package:nim/service/chatroom_service.dart';
import 'package:nim/types/types.dart';
import 'package:room/model/room.dart';
import 'package:room/room/controller/room_global.dart';
import 'package:room/room/model/model.dart';
import 'package:rxdart/rxdart.dart';

import 'controller_mixin.dart';

class MessageController with RoomController {
  BehaviorSubject<List<ChatRoomMessage>> messageStream = BehaviorSubject();

  final List<ChatRoomMessage> _messages = List<ChatRoomMessage>();
  final int _maxMessage = 300;

  NewChatRoomMessageHandler _newChatRoomMessageHandler;

  //聊天室是否禁言
  bool isRoomMute = false;


  void initController({NewChatRoomMessageHandler newChatRoomMessageHandler}) {
    this._newChatRoomMessageHandler=newChatRoomMessageHandler;
    isRoomMute = roomGlobal.nimEnterChatRoomResultData.info.isMuted;
    messageStream.add(_messages);
    Nim.chatRoomService.addChatRoomMessageCall(chatRoomMessageCall);
  }

  //重置聊天记录
  @override
  void reSet() {
    _newChatRoomMessageHandler = null;
    Nim.chatRoomService.removeChatRoomMessageCall(chatRoomMessageCall);
    _messages.clear();
    messageStream.add(_messages);
  }

  //收到聊天室的消息
  void chatRoomMessageCall(NimChatRoomMessage nimChatRoomMessage) async {
    LogUtil.v(nimChatRoomMessage, tag: "chatRoomMessageCall");
    var roomMessage = await _parseMessage(nimChatRoomMessage);
    addMessage(roomMessage);
  }

  ///添加一条麦位变化的消息
  addSeatChangedMessage(Seat oldSeat, Seat newSeat) {
    if (!oldSeat.hasUser && !newSeat.hasUser)
      return;
    else if (!oldSeat.hasUser && newSeat.hasUser) {
      addMessage(
          SeatUserChatRoomMessage(true, newSeat.seatIdx, newSeat.userInfo));
    } else if (oldSeat.hasUser && !newSeat.hasUser) {
      addMessage(
          SeatUserChatRoomMessage(false, oldSeat.seatIdx, oldSeat.userInfo));
    }
    //同一个用户在座位上状态发生变化
    else {
      if (oldSeat.userInfo != newSeat.userInfo) {
        addMessage(
            SeatUserChatRoomMessage(true, newSeat.seatIdx, newSeat.userInfo));
        addMessage(
            SeatUserChatRoomMessage(false, oldSeat.seatIdx, oldSeat.userInfo));
      } else {
        if (oldSeat.micState != newSeat.micState) {
          addMessage(SeatMicChatRoomMessage(newSeat.micState == MicState.ENABLE,
              newSeat.seatIdx, newSeat.userInfo));
        }
      }
    }
  }

  ///[isSend]代表是发送的消息还是收到的消息
  void addMessage(ChatRoomMessage roomMessage, {String sendTex}) async {
    if (_messages.length >= _maxMessage) {
      _messages.removeAt(_messages.length - 1);
    }
    var canInsert = true;
    //如果聊天室禁言
    if (sendTex != null && isRoomMute) {
      roomMessage = MuteTipChatRoomMessage(true, null);
    }
    if (sendTex != null && !isRoomMute) {
      canInsert = await Nim.chatRoomService.sentChatRoomMsg(
          sendTex, RoomGlobal.instance.currentChatExternRoomId);
    }

    if (roomMessage != null && canInsert) {
      _messages.insert(0, roomMessage);
      messageStream.add(_messages);
      _newChatRoomMessageHandler?.call(roomMessage);
    }
  }

  ///[NimChatRoomMessage]解析为[ChatRoomMessage]
  Future<ChatRoomMessage> _parseMessage(NimChatRoomMessage nimMessage) async {
    var msgType = nimMessage.msgType;
    if (msgType == MsgType.text) {
      //消息的用户信息
      return await _parseTextMessage(nimMessage);
    } else if (msgType == MsgType.notification) {
      return await _parseNotificationMessage(nimMessage);
    } else {
      return null;
    }
  }

  ///解析通知类消息
  ///用户进场
  ///管理员权限，禁言等......
  Future<ChatRoomMessage> _parseNotificationMessage(
      NimChatRoomMessage nimMessage) async {
    var attachment = nimMessage.attachment;
    if (attachment == null) return null;
    //成员进入聊天室
    if (attachment.type == NotificationType.ChatRoomMemberIn) {
      var roomUserInfo = ChatRoomUserInfo.fromString(
          attachment.extension["USERINFO"],
          nick: nimMessage.senderNick);
      if (!roomUserInfo.invisible) {
        return MemberInChatRoomMessage(roomUserInfo);
      } else {
        return null;
      }
    }
  }

  ///解析文字消息，用户聊天消息
  Future<ChatRoomMessage> _parseTextMessage(
      NimChatRoomMessage nimMessage) async {
    //消息的用户信息
    var roomUserInfo = ChatRoomUserInfo.fromString(
        nimMessage.senderExtension["USERINFO"],
        nick: nimMessage.senderNick);
    //如果是text消息，则可能是表情消息，先去查询是否是表情消息
    var emoj = await EmojMeta.instance.parseEmoj(nimMessage.content);

    var seatIdx =
        roomGlobal.seatController.queryUserSeatIdx(roomUserInfo?.userId);
    if (emoj == null) {
      return TextChatRoomMessage(nimMessage.content, seatIdx, roomUserInfo);
    }
    //说明是表情消息
    else {
      return EmojChatRoomMessage(emoj.icon, seatIdx, roomUserInfo);
    }
  }
}

typedef NewChatRoomMessageHandler(ChatRoomMessage chatRoomMessage);
