import 'package:room/room/model/model.dart';
import 'package:room/room/model/user.dart';

abstract class ChatRoomMessage {
  final ChatRoomUserInfo roomUserInfo;

  ChatRoomMessage(this.roomUserInfo);
}

///文字类消息
class TextChatRoomMessage extends ChatRoomMessage {
  final String content;
  final SeatIdx seatIdx;

  TextChatRoomMessage(this.content, this.seatIdx, roomUserInfo)
      : super(roomUserInfo);
}

///表情消息
class EmojChatRoomMessage extends ChatRoomMessage {
  final String emojIcon;
  final SeatIdx seatIdx;

  EmojChatRoomMessage(this.emojIcon, this.seatIdx, roomUserInfo)
      : super(roomUserInfo);
}

///用户加入房间的消息
class MemberInChatRoomMessage extends ChatRoomMessage {
  MemberInChatRoomMessage(ChatRoomUserInfo roomUserInfo) : super(roomUserInfo);
}

///座位上用户变更消息
class SeatUserChatRoomMessage extends ChatRoomMessage {
  final bool isGet;
  final SeatIdx seatIdx;

  SeatUserChatRoomMessage(this.isGet, this.seatIdx, roomUserInfo)
      : super(roomUserInfo);
}

///座位上麦克风状态变更消息
class SeatMicChatRoomMessage extends ChatRoomMessage {
  final bool enable;
  final SeatIdx seatIdx;

  SeatMicChatRoomMessage(this.enable, this.seatIdx, roomUserInfo)
      : super(roomUserInfo);
}

///禁言提示
class MuteTipChatRoomMessage extends ChatRoomMessage {

  ///[isMuteRoom]为true说明室整个房间禁言了，否则室个人被禁言
  final bool isMuteRoom;

  MuteTipChatRoomMessage(this.isMuteRoom,roomUserInfo) : super(roomUserInfo);
}
