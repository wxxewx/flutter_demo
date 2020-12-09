import 'package:baselib/utils/color_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ThemeGlobal {
  static ThemeGlobal get instance => _getInstance();
  static ThemeGlobal _instance;

  ThemeGlobal._internal() {}

  static ThemeGlobal _getInstance() {
    if (_instance == null) {
      _instance = new ThemeGlobal._internal();
    }
    return _instance;
  }

  BehaviorSubject<MTheme> theme = BehaviorSubject();
  MTheme themeData=MTheme.normal();

  ThemeGlobal() {
    initTheme();
  }

  void initTheme() async {
    themeData = MTheme.normal();
    theme.add(themeData);
  }
}

class MTheme {
  final ThemeColor themeColor;
  final ThemeFontSize themeFontSize;

  MTheme(this.themeColor, this.themeFontSize);

  MTheme.normal() : this(ThemeColor.normal(), ThemeFontSize.normal());
}

class ThemeColor {
  Color themeLightColor = Colors.greenAccent;
  Color themeColor = Colors.green;
  Color themeDartColor = Colors.green;
  Color themeAccentColor = Colors.orange;

  Color themeBlackColor = Colors.black;
  Color themeGreyColor = Colors.grey;
  Color themeLightGreyColor = color("#9B9B9B");
  Color themeAccentGreyColor =Colors.grey[100];
  Color themeWhiteColor = Colors.white;
  Color themeDividerColor = Colors.grey[200];

  Color themeTextColor = Colors.black;
  Color themeTextLightColor = Colors.grey;
  Color themeTextShallowColor = Colors.grey[350];
  Color themeTextWhiteColor = Colors.white;
  Color themeTextBlueColor = Colors.lightBlue;


  ThemeColor(
      this.themeLightColor,
      this.themeColor,
      this.themeDartColor,
      this.themeAccentColor,
      this.themeBlackColor,
      this.themeGreyColor,
      this.themeLightGreyColor,
      this.themeAccentGreyColor,
      this.themeWhiteColor,
      this.themeDividerColor,
      this.themeTextColor,
      this.themeTextLightColor,
      this.themeTextShallowColor,
      this.themeTextWhiteColor,
      this.themeTextBlueColor);

  ThemeColor.normal();
}

class ThemeFontSize {
  double fontSizeMin = 10;
  double fontSizeLittle = 12;
  double fontSizeSmall = 14;
  double fontSizeNormal = 16;
  double fontSizeBig = 18;

  ThemeFontSize.normal();
}
