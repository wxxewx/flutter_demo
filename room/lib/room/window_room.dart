import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_widget.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:room/events.dart';
import 'package:room/model/room.dart';
import 'controller/room_global.dart';


class WindowChatRoom extends BaseThemeWidget {
  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    var roomGlobal = RoomGlobal.instance;
    return StreamBuilder<ChatRoom>(
        stream: roomGlobal.chatRoomStream,
        builder: (context, snapshot) {
          if (snapshot.data == null)
            return Container(
              width: 0,
              height: 0,
            );
          var chatRoom = snapshot.data;
          return Material(
              color: Colors.transparent,
              type: MaterialType.transparency,
              child: InkWell(
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Row(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                          chatRoom.roomImg,
                          width: 44,
                          height: 44,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: 60,
                        margin: EdgeInsets.only(left: 4),
                        child: Text(
                          chatRoom.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: theme.themeFontSize.fontSizeLittle,
                              color: theme.themeColor.themeAccentColor),
                        ),
                      ),
                      StreamBuilder<AllRemoteState>(
                          stream: roomGlobal.openAllRemoteStream,
                          builder: (context, snapshot) {
                            return Container(
                              margin: EdgeInsets.only(left: 6),
                              child: IconButton(
                                  icon: Image.asset(
                                    snapshot.data == AllRemoteState.close
                                        ? 'images/mute.png'
                                        : 'images/un_mute.png',
                                    package: 'room',
                                    width: 18,
                                    height: 18,
                                  ),
                                  onPressed: () {
                                    if (snapshot.data == AllRemoteState.open) {
                                      roomGlobal.muteAllRemote();
                                    } else {
                                      roomGlobal.openAllRemote();
                                    }
                                  }),
                            );
                          }),
                      Container(
                        width: 1,
                        height: 18,
                        color: Colors.black12,
                        margin: EdgeInsets.only(left: 6, right: 6),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: IconButton(
                            icon: Image.asset(
                              'images/leave_room.png',
                              package: 'room',
                              width: 18,
                              height: 18,
                            ),
                            onPressed: () {
                              roomGlobal.leaveRoom().then((value) {
                                if (value) {
                                  hideWindowWidget();
                                }
                              });
                            }),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  joinRoom(
                      context,
                      Parameters()
                        ..putObj('room', roomGlobal.chatRoom)
                        ..putString("roomId", roomGlobal.chatRoom.id));
                },
              ));
        });
  }
}
