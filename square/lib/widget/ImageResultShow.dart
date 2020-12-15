import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const placeholder = "images/placeholder_wh.png";

class ImageResultShow extends StatelessWidget {
  final List<String> photos;

  final double width;
  final double space;

  ImageResultShow(this.photos, this.width, {space}) : this.space = space ?? 5;

  @override
  Widget build(BuildContext context) {
    var size = (width - space * 3) / 4;
    var showItem = 4;
    if (photos.length < 4) {
      showItem = photos.length + 1;
    }
    return Container(
      width: width,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: space,
            crossAxisSpacing: space),
        children: [
          for (int i = 0; i < showItem; i++)
            _buildItem(i, showItem, photos, size)
        ],
      ),
    );
  }

  _buildItem(int i, int showItem, List<String> photos, double size) {
    if (showItem < 4) {
      if (i == showItem - 1) {
        return Container(
          width: size,
          height: size,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100]
          ),
          child: Image.asset(
            "images/tweet_add_photo_icon.png",
            package: "square",
          ),
        );
      } else {
        return Container(
          width: size,
          height: size,
          child: CachedNetworkImage(
            imageUrl: photos[i],
            placeholder: (context, url) =>
                Image.asset(placeholder, package: "baselib"),
          ),
        );
      }
    } else {
      if (i == showItem - 1) {
        return Container(
          width: size,
          height: size,
          child: Stack(
            children: [
              Container(
                child: CachedNetworkImage(
                  imageUrl: photos[i],
                  placeholder: (context, url) =>
                      Image.asset(placeholder, package: "baselib"),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Visibility(
                    visible: photos.length - showItem > 0,
                    child: Text("+${photos.length - showItem}"),
                  ))
            ],
          ),
        );
      } else {
        return Container(
          width: size,
          height: size,
          child: CachedNetworkImage(
            imageUrl: photos[i],
            placeholder: (context, url) =>
                Image.asset(placeholder, package: "baselib"),
          ),
        );
      }
    }
  }
}
