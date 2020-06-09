import 'dart:convert';

import 'package:baselib/proto/room_message.pb.dart';

class ChatRoomExtensionInfo{
  int themeId  = 0;

  ChatRoomExtensionInfo(this.themeId);

//  @Deprecated("改用seatTimers") var seatTimer: SeatTimer = SeatTimer(SeatIdx.NO_SEAT, Time.EMPTY),
//  var seatTimers: MutableMap<SeatIdx, SeatTimer> = mutableMapOf(),
//  var topic: String = "", //聊天室当前话题
//  var dispatchedOrderCount: DispatchedOrderCount = DispatchedOrderCount.EMPTY, //派单厅本周派单数量
//  var enabledPluginTitle: String = "" //聊天室当前开启的插件title，如果为空则说明当前无开启的插件


  static  ChatRoomExtensionInfo  fromString(String string){
    var base64decode = base64Decode(string);
    var info = RoomExtInfo.fromBuffer(base64decode);
    return ChatRoomExtensionInfo(info.bgThemeId);
  }

}