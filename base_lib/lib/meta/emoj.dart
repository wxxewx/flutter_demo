import 'dart:typed_data';

import 'package:baselib/api/url/url.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/base/base_cache_meta.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/user/noble.dart';
import 'package:baselib/proto/shop_message.pb.dart';
import 'package:baselib/proto/sys_message.pb.dart';

class EmojMeta extends BaseCacheMeta<List<Emoj>, StickersResp> {
  static EmojMeta get instance => _getInstance();
  static EmojMeta _instance;

  EmojMeta._internal() : super(EmojMeta.normal());

  static EmojMeta _getInstance() {
    if (_instance == null) {
      _instance = new EmojMeta._internal();
    }
    return _instance;
  }

  @override
  StickersResp base64ToProto(Uint8List base64decode) {
    return StickersResp.fromBuffer(base64decode);
  }

  @override
  Future<StickersResp> request() async {
    var body = await App.mainRequest.get<StickersResp>(UmbrellaUrl.STICKERS,
        (byte) async {
      var resp = StickersResp.fromBuffer(byte);
      return ResultBody(true, data: resp);
    });
    return body.isSuccess ? body.data : null;
  }

  @override
  List<Emoj> transform(StickersResp proto) {
    return proto.stickers.map((sticker) {
      var title = sticker.title;
      var icon = sticker.icon;
      return Emoj(title, icon);
    }).toList();
  }

  static List<Emoj> normal() {
    return List<Emoj>();
  }

  Future<Emoj> parseEmoj(String title) async {
    var list = await get();
    try {
      return list.firstWhere((element) {
        return "[${element.title}]" == title;
      });
    } catch (e) {
      return null;
    }
  }
}

class Emoj {
  final String title;
  final String icon;

  Emoj(this.title, this.icon);
}
