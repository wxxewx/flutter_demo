import 'dart:ui';

import 'package:baselib/common/base/base_theme_widget.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 条目型菜单
 */
class MenuItem extends BaseThemeWidget {
  final Widget icon;
  final String title;
  final TextStyle textStyle;
  final bool showMore;
  final double vertical;
  final double horizontal;
  final GestureTapCallback onTab;

  MenuItem(this.icon, this.title,
      {textStyle, showMore, vertical, horizontal, onTab})
      : this.textStyle = textStyle ??
            TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),
        this.showMore = showMore ?? true,
        this.vertical = vertical ?? 12,
        this.onTab = onTab ?? (() {}),
        this.horizontal = horizontal ?? 14;

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    var children = <Widget>[
      icon,
      Text(
        title,
        style: textStyle,
      ),
      Spacer(),
    ];
    if (showMore) {
      children.add(Icon(
        Icons.navigate_next,
        color: theme.themeColor.themeGreyColor,
        size: 20,
      ));
    }
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: Row(
          children: children,
        ),
      ),
    );
  }
}
