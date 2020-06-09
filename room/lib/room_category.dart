import 'dart:typed_data';

import 'package:baselib/account/account_global.dart';
import 'package:baselib/api/url/hive.dart';
import 'package:baselib/app.dart';
import 'package:baselib/api/url/url.dart';
import 'package:baselib/common/base/base_cache_meta.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/proto/sys_message.pb.dart';

class RoomCategoryMeta
    extends BaseCacheMeta<List<RoomCategory>, RoomCategoryListResp> {
  static RoomCategoryMeta get instance => _getInstance();
  static RoomCategoryMeta _instance;

  RoomCategoryMeta._internal() : super(<RoomCategory>[]);

  static RoomCategoryMeta _getInstance() {
    if (_instance == null) {
      _instance = new RoomCategoryMeta._internal();
    }
    return _instance;
  }

  @override
  RoomCategoryListResp base64ToProto(Uint8List base64decode) {
    return RoomCategoryListResp.fromBuffer(base64decode);
  }

  @override
  Future<RoomCategoryListResp> request() async {
    var account = AccountGlobal.instance.getAccount();
    if (!account.isValid) return null;
    var roomCategoryListReq = RoomCategoryListReq.create()
      ..uid = account.userId
      ..token = account.token;
    var body = await App.mainRequest
        .post<RoomCategoryListResp, RoomCategoryListReq>(
            HiveService.CHATROOM_CATEGORY_LIST, roomCategoryListReq,
            (byte) async {
      var roomCategoryResp = RoomCategoryListResp.fromBuffer(byte);
      return ResultBody(true, data: roomCategoryResp);
    });
    return body.isSuccess ? body.data : null;
  }

  @override
  List<RoomCategory> transform(RoomCategoryListResp proto) {
    return proto.categories.map((item) {
      var topics = item.topics
          .map((e) => TopicPortal(e.icon, e.title, e.portal, e.controlled))
          .toList();
      return RoomCategory(item.cateId.toString(), item.title, topics);
    }).toList();
  }
}

class TopicPortal {
  final String icon;
  final String title;
  final String portal;
  final bool controlled;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TopicPortal &&
              runtimeType == other.runtimeType &&
              icon == other.icon &&
              title == other.title &&
              portal == other.portal &&
              controlled == other.controlled;

  @override
  int get hashCode =>
      icon.hashCode ^
      title.hashCode ^
      portal.hashCode ^
      controlled.hashCode;

  TopicPortal(this.icon, this.title, this.portal, this.controlled);
}

class RoomCategory {
  final String id;
  final String title;
  final List<TopicPortal> topics;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is RoomCategory &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              title == other.title &&
              topics == other.topics;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      topics.hashCode;

  RoomCategory(this.id, this.title,  this.topics);

  RoomCategory.Me():this("-1","我的",[]);
  RoomCategory.Hot():this("0","热门",[]);

  @override
  String toString() {
    return 'RoomCategory{id: $id, title: $title, topics: $topics}';
  }


}
