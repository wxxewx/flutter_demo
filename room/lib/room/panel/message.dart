import 'dart:async';

import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/widget/user_tags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:room/room/controller/room_global.dart';
import 'package:room/room/model/model.dart';

Widget buildMessage(MTheme theme) {
  return StreamBuilder<List<ChatRoomMessage>>(
      stream: RoomGlobal.instance.messageController.messageStream,
      initialData: <ChatRoomMessage>[],
      builder: (context, snapshot) {
        return Container(
          margin: EdgeInsets.all(16),
          child: ListView.builder(
            shrinkWrap: true,
            reverse: true,
            padding: EdgeInsets.only(top: 0),
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              var message = snapshot.data[index];
              return _buildMessageItem(message, theme);
            },
          ),
        );
      });
}

Widget _buildMessageItem(ChatRoomMessage message, MTheme theme) {
  if (message is TextChatRoomMessage) {
    return _buildTextMessageItem(message, theme);
  } else if (message is EmojChatRoomMessage) {
    return _buildEmojMessageItem(message, theme);
  } else if (message is MemberInChatRoomMessage) {
    return _buildMemberInChatRoomMessage(message, theme);
  } else if (message is SeatUserChatRoomMessage) {
    return _buildSeatChangedChatRoomMessage(message, theme);
  } else if (message is SeatMicChatRoomMessage) {
    return _buildSeatMicChatRoomMessage(message, theme);
  } else if (message is MuteTipChatRoomMessage) {
    return _buildMuteTipChatRoomMessage(message, theme);
  }
}

///被禁言提示
Widget _buildMuteTipChatRoomMessage(
    MuteTipChatRoomMessage message, MTheme theme) {
  return Text("${message.isMuteRoom ? '聊天室' : '您'}被禁言了!",
      style: TextStyle(
          fontSize: theme.themeFontSize.fontSizeSmall, color:theme.themeColor.themeAccentColor));
}

//麦位状态变更消息
Widget _buildSeatMicChatRoomMessage(
    SeatMicChatRoomMessage message, MTheme theme) {
  return _buildUserTagSpans(
      message.roomUserInfo,
      [
        TextSpan(
            text: "的麦克风被${message.enable ? "打开了" : "关闭了"}",
            style: TextStyle(
                fontSize: theme.themeFontSize.fontSizeSmall,
                color: theme.themeColor.themeAccentColor))
      ],
      theme);
}

///用户上下麦
Widget _buildSeatChangedChatRoomMessage(
    SeatUserChatRoomMessage message, MTheme theme) {
  return _buildUserTagSpans(
      message.roomUserInfo,
      [
        TextSpan(
            text:
                "${message.isGet ? "上" : "下"}了${message.seatIdx.index == 0 ? "主播" : '${message.seatIdx.index}号'}麦",
            style: TextStyle(
                fontSize: theme.themeFontSize.fontSizeSmall,
                color: theme.themeColor.themeAccentColor))
      ],
      theme);
}

///用户进入房间的消息
Widget _buildMemberInChatRoomMessage(
    MemberInChatRoomMessage message, MTheme theme) {
  return _buildUserTagSpans(
      message.roomUserInfo,
      [
        TextSpan(
            text: "来了",
            style: TextStyle(
                fontSize: theme.themeFontSize.fontSizeSmall,
                color: theme.themeColor.themeAccentColor))
      ],
      theme);
}

//表情类消息条目
Widget _buildEmojMessageItem(EmojChatRoomMessage message, MTheme theme) {
  return _buildUserTagSpans(
      message.roomUserInfo,
      [
        TextSpan(
            text: "：",
            style: TextStyle(
                fontSize: theme.themeFontSize.fontSizeSmall,
                color: theme.themeColor.themeAccentColor)),
        WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Image.network(
              message.emojIcon,
              width: 40,
              height: 40,
            ))
      ],
      theme,
      userSeatIdx: message.seatIdx);
}

//文字类消息条目
Widget _buildTextMessageItem(TextChatRoomMessage message, MTheme theme) {
  return _buildUserTagSpans(
      message.roomUserInfo,
      [
        TextSpan(
            text: "：",
            style: TextStyle(
                fontSize: theme.themeFontSize.fontSizeSmall,
                color: theme.themeColor.themeAccentColor)),
        TextSpan(
            text: message.content,
            style: TextStyle(
                fontSize: theme.themeFontSize.fontSizeSmall,
                color: message.roomUserInfo.lv.textColor))
      ],
      theme,
      userSeatIdx: message.seatIdx);
}

///标签
Widget _buildUserTagSpans(
    ChatRoomUserInfo roomUserInfo, List<InlineSpan> spans, MTheme theme,
    {SeatIdx userSeatIdx}) {
  if (userSeatIdx == SeatIdx.SEAT0) {
    spans.insert(
      0,
      TextSpan(
          text: roomUserInfo.nickName,
          style: TextStyle(
              fontSize: theme.themeFontSize.fontSizeSmall,
              color: Colors.white70)),
    );

    spans.insert(
        0,
        WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              child: Image.asset(
                'images/host_title.png',
                package: 'room',
                width: 30,
                height: 13,
                fit: BoxFit.fill,
              ),
            )));
  }
  return MessageItemContainer(UserTagsWidget(
    //如果时主播位，name标签自己添加
    name: userSeatIdx != SeatIdx.SEAT0 ? roomUserInfo.nickName : null,
    noble: roomUserInfo.noble,
    lv: roomUserInfo.lv,
    tagsOrder: TagsOrder.noble_lv_name,
    nobleStyle: NobleStyle.tag,
    nobleWidth: 50,
    nobleHeight: 18,
    nameTextStyle: TextStyle(
        fontSize: theme.themeFontSize.fontSizeSmall, color: Colors.white70),
    spans: spans,
  ));
}

class MessageItemContainer extends StatelessWidget {
  final Widget child;

  MessageItemContainer(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(3),
        margin: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: child);
  }
}
