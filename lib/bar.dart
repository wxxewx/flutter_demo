import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTab {
  String router;
  String title;
  String selectIcon;
  String unSelectIcon;
  Color selectTitleColor;
  Color unSelectTitleColor;
  double unSelectTitleSize;
  double selectTitleSize;
  int dots;

  BottomTab(this.selectIcon, this.unSelectIcon, this.router,
      {title,
      selectTitleColor,
      unSelectTitleColor,
      unSelectTitleSize,
      selectTitleSize,
      dots})
      : assert(selectIcon != null),
        assert(unSelectIcon != null),
        this.title = title ?? "",
        this.selectTitleColor = selectTitleColor ?? Colors.black,
        this.unSelectTitleColor = unSelectTitleColor ?? Colors.grey,
        this.unSelectTitleSize = unSelectTitleSize ?? 10,
        this.selectTitleSize = selectTitleSize ?? 10,
        this.dots = dots ?? 0;

  BottomTab.home()
      : this('images/main_home_selected.png',
            'images/main_home_un_selected.png', "/home",
            title: "首页");

  BottomTab.square()
      : this('images/main_square_selected.png',
            'images/main_square_un_selected.png', "/square",
            title: "社区");

  BottomTab.room()
      : this('images/main_chat_selected.png',
            'images/main_chat_un_selected.png', "/live",
            title: "直播");

  BottomTab.message()
      : this('images/main_message_selected.png',
            'images/main_message_un_selected.png', "/message",
            title: "消息");

  BottomTab.me()
      : this('images/main_me_selected.png', 'images/main_me_un_selected.png',
            "/me",
            title: "我的");
}
