import 'package:baselib/common/base/base_theme_widget.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyPage extends BaseThemeWidget {
  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("404",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.w800)),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text("NoFount Page",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.w800)),
            )
          ],
        ),
      ),
    ));
  }
}
