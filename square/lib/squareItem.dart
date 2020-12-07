import 'dart:core';

import 'package:baselib/domain/location.dart';

class SquareItem {
  final String id;

  final String content;

  final String audioUrl;
  final Location location;
  final List<String> tags;
  final List<String> photos;

  final bool isLiked;

  final int likeNumber;
  final String pubUserName;
  final String pubUserAvatar;
  final String pubUserId;
  final int systemTime;
  final bool isSetTop;

  final int pubUserShowId;

  SquareItem(
      this.id,
      this.content,
      this.audioUrl,
      this.location,
      this.tags,
      this.photos,
      this.isLiked,
      this.likeNumber,
      this.pubUserName,
      this.pubUserAvatar,
      this.pubUserId,
      this.systemTime,
      this.isSetTop,
      this.pubUserShowId);
}
