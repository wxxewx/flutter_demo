//房间的工具栏
import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:room/model/room.dart';
import 'package:room/room/window_room.dart';

AppBar buildRoomToolBar(BuildContext context, MTheme theme, ChatRoom data) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    titleSpacing: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
        size: 18,
      ),
      onPressed: () {
        showWindowWidget(WindowChatRoom());
        Navigator.of(context).pop();
      },
      iconSize: 18,
    ),
    title: Container(
      constraints: BoxConstraints(maxWidth: 100),
      child: Text(
        data.title,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: theme.themeColor.themeTextWhiteColor,
            fontSize: theme.themeFontSize.fontSizeSmall),
      ),
    ),
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
          onPressed: null)
    ],
  );
}
