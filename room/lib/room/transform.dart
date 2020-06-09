import 'dart:convert';

import 'package:baselib/domain/user/avatar.dart';
import 'package:baselib/domain/user/lv.dart';
import 'package:baselib/domain/user/noble.dart';
import 'package:baselib/meta/emoj.dart';
import 'package:baselib/meta/noble.dart';
import 'package:baselib/proto/room_message.pb.dart';
import 'package:baselib/proto/room_message.pbenum.dart';
import 'package:common_utils/common_utils.dart';
import 'package:nim/service/chatroom_service.dart';
import 'package:nim/types/types.dart';

import 'model/model.dart';

///转换为[SeatState]
SeatState transformToSeatState(SeatQueueItem_SeatState seatState) {
  if (seatState == SeatQueueItem_SeatState.LOCKED) {
    return SeatState.LOCKED;
  } else if (seatState == SeatQueueItem_SeatState.OCCUPIED) {
    return SeatState.OCCUPIED;
  } else if (seatState == SeatQueueItem_SeatState.OPEN) {
    return SeatState.OPEN;
  } else {
    return SeatState.UNK;
  }
}

///转换为[MicState]
MicState transformToMicState(ControlState micState) {
  if (micState == ControlState.DISABLE) {
    return MicState.DISABLE;
  } else if (micState == ControlState.ENABLE) {
    return MicState.ENABLE;
  } else {
    return MicState.UNK;
  }
}

///转换为[Seat]
Future<Seat> transformToSeat(seatIdx, seatValue, roomSeatType) async {
  var base64decode = base64Decode(seatValue);
  var seatQueueItem = SeatQueueItem.fromBuffer(base64decode);

  var seatState = transformToSeatState(seatQueueItem.seatState);
  var micState = transformToMicState(seatQueueItem.micState);
  var seat;
  if (seatQueueItem.uid == null || seatQueueItem.uid == "") {
    seat = Seat(seatIdx, seatState, micState, roomSeatType);
    return seat;
  } else {
    var avatar = Avatar.Female(seatQueueItem.userAvatar,
        decorate: seatQueueItem.avatarBox);
    var nobles = await NobleMeta.instance.get();
    var noble = Noble.buildNoble(seatQueueItem.userNoble, nobles);
    var roomUserInfo = ChatRoomUserInfo(seatQueueItem.uid,
        seatQueueItem.userName, avatar, Lv(seatQueueItem.userVip), noble);
    seat = Seat(seatIdx, seatState, micState, roomSeatType,
        userInfo: roomUserInfo);
  }
  LogUtil.v(seat, tag: "seat");
  return seat;
}
