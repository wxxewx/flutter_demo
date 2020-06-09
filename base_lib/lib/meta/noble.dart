import 'dart:typed_data';

import 'package:baselib/api/url/url.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/base/base_cache_meta.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/user/noble.dart';
import 'package:baselib/proto/sys_message.pb.dart';

class NobleMeta extends BaseCacheMeta<List<Noble>, NobleListResp> {
  static NobleMeta get instance => _getInstance();
  static NobleMeta _instance;

  NobleMeta._internal() : super(NobleMeta.normal());

  static NobleMeta _getInstance() {
    if (_instance == null) {
      _instance = new NobleMeta._internal();
    }
    return _instance;
  }

  @override
  NobleListResp base64ToProto(Uint8List base64decode) {
    return NobleListResp.fromBuffer(base64decode);
  }

  @override
  Future<NobleListResp> request() async {
    var body = await App.mainRequest.get<NobleListResp>(UmbrellaUrl.NOBLE_LIST,
        (byte) async {
      var resp = NobleListResp.fromBuffer(byte);
      return ResultBody(true, data: resp);
    });
    return body.isSuccess ? body.data : null;
  }

  @override
  List<Noble> transform(NobleListResp proto) {
    return proto.nobles.map((noble) {
      return Noble(noble.nid, noble.title);
    }).toList();
  }

  static List<Noble> normal() {
    return List<Noble>();
  }
}
