import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditPage extends StatelessWidget {
  String msg;

  @override
  Widget build(BuildContext context) {
    ThemeGlobal instance = ThemeGlobal.instance;
    return StreamBuilder<MTheme>(
        stream: instance.theme,
        initialData: MTheme.normal(),
        builder: (context, snapshot) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  child: new Container(
                    color: Colors.transparent,
                  ),
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    await Future.delayed(Duration(milliseconds: 200));
                    Navigator.pop(context, msg);
                  },
                )),
                Container(
                    color: Colors.white,
                    alignment: Alignment.bottomCenter,
                    child: Row(children: <Widget>[
                      Expanded(
                          child: TextField(
                        maxLines: null,
                        autofocus: true,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(border: InputBorder.none),
                        onChanged: (m) {
                          msg = m;
                        },
                      )),
                      IconButton(
                        onPressed: () async {
                          if (msg != null && msg.isNotEmpty) {
                            FocusScope.of(context).requestFocus(FocusNode());
                            await Future.delayed(Duration(milliseconds: 200));
                            Navigator.pop(context, msg);
                          }
                        },
                        icon: Icon(Icons.send,
                            color: snapshot.data.themeColor.themeColor), //自定义图标
                      ),
                    ]))
              ],
            ),
          );
        });
  }
}
