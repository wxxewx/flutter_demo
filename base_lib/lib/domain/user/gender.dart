import 'package:flutter/material.dart';

const Male = Gender.Male();

class Gender {
  final String title;
  final String des;
  final String symbol;
  final Color color;

  bool get isMale {
    return title == "男";
  }

  bool get isFeMale {
    return title == "女";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Gender &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          des == other.des &&
          symbol == other.symbol &&
          color == other.color;

  @override
  int get hashCode =>
      title.hashCode ^ des.hashCode ^ symbol.hashCode ^ color.hashCode;

  const Gender.Male() : this("M");

  const Gender.FeMale() : this("F");

  const Gender(this.des)
      : title = des == "M" ? "男" : "女",
        symbol = des == "M" ? "♂" : "♀",
        color = des == "M" ? Colors.blue : Colors.pinkAccent;

  @override
  String toString() {
    return 'Gender{title: $title, des: $des, symbol: $symbol, color: $color}';
  }
}
