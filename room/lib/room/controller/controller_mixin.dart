import 'package:baselib/common/base/base_theme_state.dart';
import 'package:room/model/room.dart';
import 'package:room/room/controller/room_global.dart';
import 'package:room/room/model/model.dart';

mixin RoomController {
  RoomGlobal roomGlobal;

  RoomSeatType get roomSeatType => roomGlobal.chatRoom?.layout == RoomLayout.seats_8
      ? RoomSeatType.normal
      : RoomSeatType.radio;

  bind(RoomGlobal roomGlobal) {
    this.roomGlobal = roomGlobal;
  }

  unBind() {
    this.roomGlobal = null;
    reSet();
  }

  void reSet();
}
