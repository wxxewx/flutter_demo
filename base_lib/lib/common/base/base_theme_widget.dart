
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseThemeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeGlobal theme = ThemeGlobal.instance;
    return StreamBuilder<MTheme>(
        initialData: theme.themeData,
        stream: theme.theme.asBroadcastStream(),
        builder: (context, snapshot) {
          var ckTheme = snapshot.data;
          return buildChild(context, ckTheme);
        });
  }

  Widget buildChild(BuildContext context, MTheme theme);
}
