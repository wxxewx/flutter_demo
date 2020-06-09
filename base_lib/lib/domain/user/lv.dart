import 'package:baselib/proto/peer_message.pb.dart';
import 'package:baselib/utils/color_util.dart';
import 'package:flutter/cupertino.dart';

class Lv {
  final int lv;

  Lv(this.lv);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Lv &&
              runtimeType == other.runtimeType &&
              lv == other.lv;

  @override
  int get hashCode => lv.hashCode;

  String get bgAsset {
    var bgAsset;
    if (lv <= 5) {
      bgAsset = 'images/lv_tag_full_1_5.png';
    } else if (lv <= 10 && lv >= 6) {
      bgAsset = 'images/lv_tag_full_6_10.png';
    } else if (lv <= 15 && lv >= 11) {
      bgAsset = 'images/lv_tag_full_11_15.png';
    } else if (lv <= 20 && lv >= 16) {
      bgAsset = 'images/lv_tag_full_16_20.png';
    } else if (lv <= 25 && lv >= 21) {
      bgAsset = 'images/lv_tag_full_21_25.png';
    } else if (lv <= 30 && lv >= 26) {
      bgAsset = 'images/lv_tag_full_26_30.png';
    } else if (lv <= 35 && lv >= 31) {
      bgAsset = 'images/lv_tag_full_31_35.png';
    } else if (lv <= 40 && lv >= 36) {
      bgAsset = 'images/lv_tag_full_36_40.png';
    } else if (lv <= 50 && lv >= 41) {
      bgAsset = 'images/lv_tag_full_41_50.png';
    } else if (lv <= 60 && lv >= 51) {
      bgAsset = 'images/lv_tag_full_51_60.png';
    } else if (lv <= 80 && lv >= 61) {
      bgAsset = 'images/lv_tag_full_61_80.png';
    } else if (lv <= 100 && lv >= 81) {
      bgAsset = 'images/lv_tag_full_81_100.png';
    } else {
      bgAsset = 'images/lv_tag_full_111.png';
    }
    return bgAsset;
  }

  Color get textColor {
    var textColor;
    if (lv <= 5) {
      textColor = color('#4BC5DE');
    } else if (lv <= 10 && lv >= 6) {
      textColor = color('#4DFFD3');
    } else if (lv <= 15 && lv >= 11) {
      textColor = color('#37E346');
    } else if (lv <= 20 && lv >= 16) {
      textColor = color('#D00FFF');
    } else if (lv <= 25 && lv >= 21) {
      textColor = color('#FF63A3');
    } else if (lv <= 30 && lv >= 26) {
      textColor = color('#FF945B');
    } else if (lv <= 35 && lv >= 31) {
      textColor = color('#FFD200');
    } else if (lv <= 40 && lv >= 36) {
      textColor = color('#FF6327');
    } else if (lv <= 50 && lv >= 41) {
      textColor = color('#9CA6FF');
    } else if (lv <= 60 && lv >= 51) {
      textColor = color('#FFB9F8');
    } else if (lv <= 80 && lv >= 61) {
      textColor = color('#B588FF');
    } else if (lv <= 100 && lv >= 81) {
      textColor = color('#DA6280');
    } else {
      textColor = color('#DA6280');
    }
    return textColor;
  }

  @override
  String toString() {
    return 'Lv{lv: $lv}';
  }

  Level toProto() => Level.create()
    ..title = ""
    ..level = lv;
}
