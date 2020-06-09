import 'package:baselib/common/base/base_theme_widget.dart';
import 'package:baselib/domain/user/lv.dart';
import 'package:baselib/domain/user/noble.dart';
import 'package:baselib/domain/user/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/theme_global.dart';

class UserTagsWidget extends BaseThemeWidget {
  String name;
  Noble noble;
  Lv lv;
  List<InlineSpan> spans;

  final NobleStyle nobleStyle;

  final double nobleWidth;

  final double nobleHeight;

  final double lvTagWidth;
  final double lvTagHeight;

  final TextStyle nameTextStyle;

  final TagsOrder tagsOrder;

  UserTagsWidget(
      {this.name,
      this.noble,
      this.lv,
      this.spans,
      nobleStyle,
      nameTextStyle,
      tagsOrder,
      double nobleWidth,
      double nobleHeight,
      double lvTagWidth,
      double lvTagHeight})
      : this.nobleWidth = nobleWidth ?? 24,
        this.nobleHeight = nobleHeight ?? 24,
        this.lvTagWidth = lvTagWidth ?? 30,
        this.lvTagHeight = lvTagHeight ?? 14,
        this.tagsOrder = tagsOrder ?? TagsOrder.name_noble_lv,
        this.nobleStyle = nobleStyle ?? NobleStyle.icon,
        this.nameTextStyle = nameTextStyle ??
            TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w800);

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    var spans = <InlineSpan>[];

    if (noble != null && noble.lv > 0) {
      spans.add(WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 3),
            child: Image.asset(
                nobleStyle == NobleStyle.icon
                    ? noble.iconAsset
                    : noble.tagAsset,
                package: "baselib",
                fit: BoxFit.fill,
                width: nobleWidth,
                height: nobleHeight),
          )));
    }

    if (lv != null && lv.lv > 0) {
      spans.add(WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10),
            width: lvTagWidth,
            height: lvTagHeight,
            margin: EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(lv.bgAsset, package: "baselib"),
                    fit: BoxFit.fill)),
            child: Text(lv.lv.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: theme.themeColor.themeTextWhiteColor,
                    fontSize: theme.themeFontSize.fontSizeMin)),
          )));
    }

    if (name != null) {
      var nameSpan = TextSpan(text: name, style: nameTextStyle);

      if (tagsOrder == TagsOrder.name_noble_lv) {
        spans.insert(0, nameSpan);
      } else {
        spans.add(nameSpan);
      }
    }

    this.spans?.forEach((element) {
      spans.add(element);
    });

    return Text.rich(TextSpan(children: spans));
  }
}

enum TagsOrder { name_noble_lv, noble_lv_name }
enum NobleStyle { tag, icon }
