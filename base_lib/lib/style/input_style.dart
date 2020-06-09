import 'package:flutter/material.dart';

class InputDecorationStyle {

  ///圆角矩形灰色背景
  static roundLightGreyBox(String hintText) {
    return InputDecoration(
      fillColor: Colors.grey[100],
      filled: true,
      counter: Container(),
      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: Colors.grey[100], width: 1)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: Colors.grey[100], width: 1)),
    );
  }
}
