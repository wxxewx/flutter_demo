import 'dart:typed_data';

import 'package:baselib/api/url/url.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/base/base_cache_meta.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/user/noble.dart';
import 'package:baselib/proto/sys_message.pb.dart';

class HobbyMeta extends BaseCacheMeta<List<Hobby>, HobbyListResp> {
  static HobbyMeta get instance => _getInstance();
  static HobbyMeta _instance;

  HobbyMeta._internal() : super(HobbyMeta.normal());

  static HobbyMeta _getInstance() {
    if (_instance == null) {
      _instance = new HobbyMeta._internal();
    }
    return _instance;
  }

  @override
  HobbyListResp base64ToProto(Uint8List base64decode) {
    return HobbyListResp.fromBuffer(base64decode);
  }

  @override
  Future<HobbyListResp> request() async {
    var body = await App.mainRequest.get<HobbyListResp>(UmbrellaUrl.HOBBY_LIST,
        (byte) async {
      var resp = HobbyListResp.fromBuffer(byte);
      return ResultBody(true, data: resp);
    });
    return body.isSuccess ? body.data : null;
  }

  @override
  List<Hobby> transform(HobbyListResp proto) {
    return proto.items.map((hobby) {
      return Hobby(hobby.hobbyId, hobby.category, hobby.title);
    }).toList();
  }

  static List<Hobby> normal() {
    return List<Hobby>();
  }
}

class Hobby {
  final int hobbyId;
  final String category;
  final String title;

  Hobby(this.hobbyId, this.category, this.title);
}
