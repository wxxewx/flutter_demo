import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/utils/color_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:room/model/room.dart';
import 'package:room/room/panel/bottom_menu.dart';
import 'package:room/room/panel/message.dart';
import 'package:room/room/panel/seat.dart';
import 'package:room/room/panel/toolbar.dart';
import 'package:room/room/window_room.dart';
import 'package:fsuper/fsuper.dart';

import 'bloc.dart';
import 'controller/room_global.dart';

class ChatRoomPage extends BlocPage<ChatRoomBloc, _ChatRoom> {
  ChatRoomPage(Parameters parameters) : super(parameters);

  @override
  ChatRoomBloc generateBloc() => ChatRoomBloc();

  @override
  _ChatRoom generateThemeState() => _ChatRoom();
}

class _ChatRoom extends BlocState<ChatRoomBloc> {
  @override
  ignoreWindowWidget() => true;

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return WillPopScope(
      child: StreamBuilder<ChatRoom>(
          stream: RoomGlobal.instance.chatRoomStream,
          initialData: RoomGlobal.instance.chatRoom,
          builder: (context, snapshot) {
            return _buildRoom(context, theme, snapshot.data);
          }),
      onWillPop: () async {
        showWindowWidget(WindowChatRoom());
        return true;
      },
    );
  }

  Widget _buildRoom(BuildContext context, MTheme theme, ChatRoom data) {
    return Material(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildRoomToolBar(context, theme, data),
        body: Stack(
          children: <Widget>[
            //房间背景
            _buildBackground(context, theme),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  //座位
                  Container(
                    child: buildSeats(context, theme),
                    margin: EdgeInsets.only(top: 66),
                  ),
                  //消息面板
                  Expanded(child: buildMessage(theme)),
                  //底部菜单
                  buildBottomMenu(context, theme,bloc)
                ],
              ),
            ),
            //公告按钮
            Positioned(
              child: FSuper(
                textSize: theme.themeFontSize.fontSizeLittle,
                textColor: theme.themeColor.themeTextWhiteColor,
                text: '公告',
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                corner: Corner(rightBottomCorner: 20, rightTopCorner: 20),
                backgroundColor: Colors.white24,
                textAlignment: Alignment.center,
              ),
              top: 80,
            ),

            //排行榜按钮
            Positioned(
              child: FSuper(
                textSize: theme.themeFontSize.fontSizeLittle,
                textColor: theme.themeColor.themeTextWhiteColor,
                text: '排行榜',
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                corner: Corner(leftBottomCorner: 20, leftTopCorner: 20),
                backgroundColor: Colors.white24,
                textAlignment: Alignment.center,
              ),
              top: 80,
              right: 0,
            )
          ],
        ),
      ),
    );
  }

  ///房间背景
  Widget _buildBackground(BuildContext context, MTheme theme) {
    return StreamBuilder<String>(
      stream:  RoomGlobal.instance.roomImgStream,
      builder: (context, snapshot) {
        return Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [color("#017491"), color("#01586E")]),
              image:snapshot.data==null?null: DecorationImage(
                  image: NetworkImage(snapshot?.data),
                  fit: BoxFit.cover)),
        );
      }
    );
  }
}
