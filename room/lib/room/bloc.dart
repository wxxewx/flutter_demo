import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/meta/emoj.dart';
import 'package:baselib/utils/toast.dart';
import 'package:nim/nim.dart';
import 'package:room/room/controller/room_global.dart';
import 'package:room/room/model/message.dart';

class ChatRoomBloc extends BaseBloc {
  @override
  void initState() {}

  @override
  void dispose() {}

  ///发送文字消息
  void sentTextMsg(String msg) async {
    var currentChatRoomUserInfo = RoomGlobal.instance.currentChatRoomUserInfo;
    var mySeat = RoomGlobal.instance.seatController.myCurrentSeat;
    try {
      //发送消息成功
      //请求[messageHandler]添加一条消息
      var chatRoomMessage =
          TextChatRoomMessage(msg, mySeat?.seatIdx, currentChatRoomUserInfo);
     await RoomGlobal.instance.messageController
          .addMessage(chatRoomMessage, sendTex: msg);
    } catch (e) {
      ToastUtil.show(e.message);
    }
  }

  ///发送表情消息
  void sentEmojMsg(Emoj emoj) async {
    var currentChatRoomUserInfo = RoomGlobal.instance.currentChatRoomUserInfo;
    var mySeat = RoomGlobal.instance.seatController.myCurrentSeat;
    try {
      //发送消息成功
      //请求[messageHandler]添加一条消息
      var chatRoomMessage = EmojChatRoomMessage(
          emoj.icon, mySeat?.seatIdx, currentChatRoomUserInfo);
      await RoomGlobal.instance.messageController
          .addMessage(chatRoomMessage, sendTex: "[${emoj.title}]");
    } catch (e) {
      ToastUtil.show(e.message);
    }
  }
}
