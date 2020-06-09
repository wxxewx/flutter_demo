import 'package:baselib/proto/peer_message.pb.dart';

class Noble {
  final int lv;
  final String title;

  Noble(this.lv, title)
      : this.title = (title == null || title == "") ? "平民" : title;

  Noble.None() : this(0, "平民");

  String get iconAsset {
    var iconAsset;
    switch (lv) {
      case 0:
        iconAsset = 'images/noble_none.png';
        break;
      case 1:
        iconAsset = 'images/noble_golden.png';
        break;
      case 2:
        iconAsset = 'images/noble_platinum.png';
        break;
      case 3:
        iconAsset = 'images/noble_golden.png';
        break;
      case 4:
        iconAsset = 'images/noble_golden.png';
        break;
      case 5:
        iconAsset = 'images/noble_golden.png';
        break;
      case 6:
        iconAsset = 'images/noble_star.png';
        break;
      case 7:
        iconAsset = 'images/noble_star.png';
        break;
      case 8:
        iconAsset = 'images/noble_king.png';
        break;
    }
    return iconAsset;
  }

  String get tagAsset {
    var tagAsset;
    switch (lv) {
      case 0:
        tagAsset = 'images/noble_tag_none.png';
        break;
      case 1:
        tagAsset = 'images/noble_tag_golden.png';
        break;
      case 2:
        tagAsset = 'images/noble_tag_platinum.png';
        break;
      case 3:
        tagAsset = 'images/noble_tag_golden.png';
        break;
      case 4:
        tagAsset = 'images/noble_tag_golden.png';
        break;
      case 5:
        tagAsset = 'images/noble_tag_golden.png';
        break;
      case 6:
        tagAsset = 'images/noble_tag_star.png';
        break;
      case 7:
        tagAsset = 'images/noble_tag_star.png';
        break;
      case 8:
        tagAsset = 'images/noble_tag_king.png';
        break;
    }
    return tagAsset;
  }

  @override
  String toString() {
    return 'Noble{lv: $lv, title: $title}';
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Noble &&
              runtimeType == other.runtimeType &&
              lv == other.lv &&
              title == other.title;

  @override
  int get hashCode =>
      lv.hashCode ^
      title.hashCode;
  
  static Noble buildNoble( int lv, List<Noble> list,{name}) {
    var noble;
    if (lv == null || lv == 0) {
      noble = Noble.None();
    } else {
      if (name == null || name.isEmpty) {
        noble = list.firstWhere((item) {
          return item.lv == lv;
        });
      } else {
        noble = Noble(lv, name);
      }
    }
    return noble;
  }

  Level toProto() =>
      Level.create()
        ..level = lv
        ..title = title;
}
