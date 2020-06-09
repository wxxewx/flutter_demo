import 'package:baselib/meta/emoj.dart';
import 'package:room/room/model/user.dart';

class Seat {
  final SeatIdx seatIdx;
  final SeatState seatState;
  final MicState micState;
  final SeatUserType seatUserType;
  final RoomSeatType seatType;
  ChatRoomUserInfo userInfo;
  String emojIcon;
  bool isSpeak = false;

  bool get hasUser => userInfo != null;

  Seat.normal(seatIdx, seatType)
      : this(seatIdx, SeatState.OPEN, MicState.ENABLE, seatType);

  Seat(this.seatIdx, this.seatState, this.micState, this.seatType, {userInfo})
      : this.seatUserType = getSeatUserTypeBySeatIdx(seatIdx),
        this.userInfo = userInfo;

  static SeatUserType getSeatUserTypeBySeatIdx(SeatIdx seatIdx) {
    if (seatIdx == SeatIdx.SEAT0) {
      return SeatUserType.host;
    } else if (seatIdx == SeatIdx.SEAT8) {
      return SeatUserType.boss;
    } else {
      return SeatUserType.normal;
    }
  }

  @override
  String toString() {
    return 'Seat{seatIdx: $seatIdx, seatState: $seatState, micState: $micState, seatUserType: $seatUserType, seatType: $seatType, userInfo: $userInfo, emojIcon: $emojIcon, isSpeak: $isSpeak}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Seat &&
          runtimeType == other.runtimeType &&
          seatIdx == other.seatIdx &&
          seatState == other.seatState &&
          micState == other.micState &&
          emojIcon == other.emojIcon &&
          isSpeak == other.isSpeak &&
          seatUserType == other.seatUserType &&
          seatType == other.seatType &&
          userInfo == other.userInfo;

  @override
  int get hashCode =>
      seatIdx.hashCode ^
      seatState.hashCode ^
      micState.hashCode ^
      emojIcon.hashCode ^
      isSpeak.hashCode ^
      seatUserType.hashCode ^
      seatType.hashCode ^
      userInfo.hashCode;
}

enum SeatUserType { normal, host, boss }

enum RoomSeatType { normal, radio }

enum SeatIdx { SEAT0, SEAT1, SEAT2, SEAT3, SEAT4, SEAT5, SEAT6, SEAT7, SEAT8 }

const layout_8_seats = [
  SeatIdx.SEAT1,
  SeatIdx.SEAT2,
  SeatIdx.SEAT3,
  SeatIdx.SEAT4,
  SeatIdx.SEAT5,
  SeatIdx.SEAT6,
  SeatIdx.SEAT7,
  SeatIdx.SEAT8
];

const layout_4_seats = [
  SeatIdx.SEAT1,
  SeatIdx.SEAT2,
  SeatIdx.SEAT3,
  SeatIdx.SEAT4
];
enum SeatState {
  UNK, //未知
  LOCKED, //锁定
  OPEN, //开放
  OCCUPIED, //使用中
}
enum MicState {
  UNK, //未知
  DISABLE, //不可用
  ENABLE //可用
}
