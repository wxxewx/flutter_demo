import 'package:baselib/domain/user/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final Avatar _avatar;

  final double _width;

  ///当没有装饰品的时候头像是否占满整个空间
  bool _fill = false;

  ///头像框和头像的宽高比例因子
  static const double _factor = 7 / 6;

  AvatarWidget(this._avatar, this._width, {bool fill})
      : this._fill = fill ?? false;

  @override
  Widget build(BuildContext context) {
    double width = _width;
    if (_avatar.hasDecorate) {
      double decorateWidth = width * _factor;
      return Container(child: _buildDecorateAvatar(decorateWidth, width));
    } else {
      double decorateWidth = _fill ? width * _factor : width;
      return Container(child: _buildFillAvatar(decorateWidth));
    }
  }

  Widget _buildFillAvatar(double decorateWidth) {
    return ClipOval(
      child: FadeInImage(
          fit: BoxFit.fill,
          fadeInDuration: Duration(milliseconds: 10),
          fadeOutDuration: Duration(milliseconds: 10),
          placeholder: AssetImage(_avatar.asset, package: 'baselib'),
          image: NetworkImage(_avatar.url),
          width: decorateWidth,
          height: decorateWidth),
    );
  }

  Widget _buildDecorateAvatar(double decorateWidth, double avatarWidth) {
    var avatar = ClipOval(
      child: FadeInImage(
          fit: BoxFit.fill,
          fadeInDuration: Duration(milliseconds: 10),
          fadeOutDuration: Duration(milliseconds: 10),
          placeholder: AssetImage(_avatar.asset, package: 'baselib'),
          image: NetworkImage(_avatar.url),
          width: avatarWidth,
          height: avatarWidth),
    );
    var children = <Widget>[];
    children.add(avatar);
    if (_avatar.decorate != null) {
      children.add(Image.network(
        _avatar.decorate,
        width: decorateWidth,
        height: decorateWidth,
      ));
    }
    return Stack(
      alignment: Alignment.center,
      children: children,
    );
  }
}
