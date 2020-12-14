import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';

const placeholder = "images/placeholder_wh.png";

class NineGridImage extends StatelessWidget {
  final List<String> photos;

  final double width;

  NineGridImage(this.photos, this.width)
      : assert(photos.isNotEmpty),
        assert(photos.length <= 9);

  @override
  Widget build(BuildContext context) {
    if (photos.length == 1) {
      return _build_1(context, width, photos);
    } else if (1 < photos.length && photos.length <= 3) {
      return _build_2_3(context, width, photos);
    } else if (photos.length == 4) {
      return _build_4(context, width, photos);
    } else {
      return _build_5_9(context, width, photos);
    }
  }

  ///
  ///cover
  Widget _buildCover(String photo, double width) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
              placeholder: (context, imageProvider) =>
                  Image.asset(placeholder, package: "baselib"),
              fit: BoxFit.cover,
              imageUrl: photo,
              fadeOutDuration: Duration(milliseconds: 100),
              fadeInDuration: Duration(milliseconds: 100),
              width: width,
              height: width),
        ));
  }

  /// 构建一个图片
  /// 当一张图片的时候，图片宽高为当前控件的1/2
  _build_1(BuildContext context, double width, List<String> photos) {
    var dw = width / 2 - 20;
    return Container(
      child: Row(
        children: [_buildCover(photos[0], dw)],
      ),
      margin: EdgeInsets.only(top: 10),
    );
  }

  /// 构建2-3张图片
  /// 当一张图片的时候，图片宽高为当前控件的1/2
  _build_2_3(BuildContext context, double width, List<String> photos) {
    var imageWidth = width / 3 - 10;
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: Row(
          children: photos.map((e) {
            return _buildCover(e, imageWidth);
          }).toList(),
        ));
  }

  /// 构建4张图片
  /// 当一张图片的时候，图片宽高为当前控件的1/2
  _build_4(BuildContext context, double width, List<String> photos) {
    var imageWidth = width / 3 - 10;
    return Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  _buildCover(photos[0], imageWidth),
                  _buildCover(photos[1], imageWidth),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  _buildCover(photos[2], imageWidth),
                  _buildCover(photos[3], imageWidth),
                ],
              ),
            )
          ],
        ));
  }

  /// 构建5-9张图片
  /// 当一张图片的时候，图片宽高为当前控件的1/2
  _build_5_9(BuildContext context, double width, List<String> photos) {
    var imageWidth = width / 3 - 10;
    var rows = photos.length ~/ 3;

    if (photos.length % 3 > 0) {
      rows = rows + 1;
    }

    List<Widget> columnWidgets = [];

    for (int i = 0; i < rows; i++) {
      var list;
      if (i == rows - 1) {
        list = photos.sublist(i * 3, photos.length);
      } else {
        list = photos.sublist(i * 3, i * 3 + 3);
      }
      List<Widget> rowWidgets = [];
      for (int j = 0; j < list.length; j++) {
        var cover = _buildCover(list[j], imageWidth);
        rowWidgets.add(cover);
      }
      columnWidgets.add(Container(
        child: Row(
          children: rowWidgets,
        ),
        margin: EdgeInsets.only(top: 10),
      ));
    }

    return Container(
        width: double.infinity,
        child: Column(
          children: columnWidgets,
        ));
  }
}
