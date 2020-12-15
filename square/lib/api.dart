import 'package:baselib/api/url/social.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/domain/location.dart';
import 'package:baselib/proto/social_message.pb.dart' as proto;
import 'package:square/squareItem.dart';
import 'package:square/theme/model.dart';

///
/// [category]类型 (1:推荐，2：最新)
///
Future<ResultBody<List<SquareItem>>> getSquareList(Account account, int page,
    {int pageSize = 10,
    int category = 2,
    Location location,
    int age,
    int distance,
    int gender,
    String targetId}) async {
  var listReq = proto.TweetListReq.create()
    ..category = (category == 2
        ? proto.TweetListReq_Category.RECENT
        : proto.TweetListReq_Category.RECOMENDED)
    ..currentPage = page
    ..numPerPage = pageSize
    ..token = account.token
    ..uid = account.userId;

  if (location != null) {
    listReq
      ..currentLoc = (proto.Location.create()
        ..lat = location?.latitude
        ..lng = location?.longitude);
  }
  if (age != null) {
    listReq..expectAge = age;
  }
  if (distance != null) {
    listReq..expectDistance = distance;
  }
  if (targetId != null) {
    listReq..expectUid = targetId;
  }
  if (gender != null) {
    listReq..expectGender = gender;
  }

  return App.mainRequest.post<List<SquareItem>, proto.TweetListReq>(
      Social.TWEETS, listReq, (byte) async {
    var tweetListResp = proto.TweetListResp.fromBuffer(byte);
    return ResultBody(true,
        data: tweetListResp.tweets.map((e) {
          return SquareItem(
              e.tweetId,
              e.text,
              e.audio,
              Location.Coordinate(e.location.lng, e.location.lat),
              e.tags,
              e.photos,
              e.isLiked,
              e.likeNum,
              e.user.name,
              e.user.avatar,
              e.user.uid,
              e.pubTime,
              e.setTop,
              e.user.showId);
        }).toList());
  });
}

///
/// 为说说点赞
Future<ResultBody<bool>> likeTweet(Account account, SquareItem tweet) async {
  var req = proto.LikeTweetReq.create()
    ..uid = account.userId
    ..tweetId = tweet.id
    ..token = account.token;
  return App.mainRequest.post<bool, proto.LikeTweetReq>(Social.TWEETS_LIKE, req,
      (byte) async {
    var generalResp = proto.GeneralResp.fromBuffer(byte);
    if (generalResp.status == proto.GeneralResp_Status.OK) {
      return ResultBody(true, data: true);
    }
    return ResultBody(true, data: false, error: ResultError("请求失败！"));
  });
}

///
/// 获取说说主题
Future<ResultBody<List<TweetTheme>>> tags() async {
  return App.mainRequest.get<List<TweetTheme>>(Social.TWEETS_TAGS2,
      (byte) async {
    var listV2Resp = proto.TagListV2Resp.fromBuffer(byte);
    var tags = listV2Resp.items
        .map((e) => TweetTheme(e.category, e.icon, e.desc, e.color, e.tags)).toList();
    return ResultBody(true, data: tags);
  });
}
