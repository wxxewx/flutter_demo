import 'package:baselib/fluro/routers.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/utils/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsuper/fsuper.dart';
import 'package:room/edit/page.dart';
import 'package:room/room/bloc.dart';
import 'package:fluro/fluro.dart';
import 'package:room/room/panel/emoj.dart';

Widget buildBottomMenu(BuildContext context, MTheme theme, ChatRoomBloc bloc) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8),
    margin: EdgeInsets.only(bottom: 8),
    child: Row(
      children: <Widget>[
        FSuper(
          width: 40,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 8),
          backgroundImage: AssetImage(
            'images/open_mic.png',
            package: 'room',
          ),
        ),
        Expanded(
            child: FSuper(
          width: double.infinity,
          onClick: () async {
            var msg = await showCupertinoModalPopup(
                context: context, builder: (context) => EditPage());
            if (msg != null) {
              bloc.sentTextMsg(msg);
            }
          },
          padding: EdgeInsets.symmetric(vertical: 5),
          text: '说点什么',
          textColor: Colors.white60,
          textSize: theme.themeFontSize.fontSizeNormal,
          backgroundColor: Colors.white24,
          margin: EdgeInsets.symmetric(horizontal: 8),
          corner: Corner.all(15),
        )),
        FSuper(
          width: 40,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 8),
          backgroundImage: AssetImage(
            'images/chat.png',
            package: 'room',
          ),
        ),
        FSuper(
          width: 40,
          height: 40,
          onClick: () async {
            showEmojPanel(context, theme).then((emoj) {
              if (emoj != null) bloc.sentEmojMsg(emoj);
            });
          },
          margin: EdgeInsets.symmetric(horizontal: 8),
          backgroundImage: AssetImage(
            'images/emoj.png',
            package: 'room',
          ),
        ),
        FSuper(
          width: 40,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 8),
          backgroundImage: AssetImage(
            'images/gift.png',
            package: 'room',
          ),
        ),
      ],
    ),
  );
}
