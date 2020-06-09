import 'dart:typed_data';

import 'package:baselib/api/url/url.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/base/base_cache_meta.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/user/noble.dart';
import 'package:baselib/proto/sys_message.pb.dart';

class ConfigMeta extends BaseCacheMeta<AppConfig, AppConfigResp> {
  static ConfigMeta get instance => _getInstance();
  static ConfigMeta _instance;

  ConfigMeta._internal() : super(AppConfig.normal());

  static ConfigMeta _getInstance() {
    if (_instance == null) {
      _instance = new ConfigMeta._internal();
    }
    return _instance;
  }

  @override
  AppConfigResp base64ToProto(Uint8List base64decode) {
    return AppConfigResp.fromBuffer(base64decode);
  }

  @override
  Future<AppConfigResp> request() async {
    var body = await App.mainRequest.get<AppConfigResp>(UmbrellaUrl.APP_CONF,
        (byte) async {
      var resp = AppConfigResp.fromBuffer(byte);
      return ResultBody(true, data: resp);
    });
    return body.isSuccess ? body.data : null;
  }

  @override
  AppConfig transform(AppConfigResp proto) {
    Map<AppConfigKey, String> map = {};
    proto.configs.forEach((key, value) {
      var where =
          AppConfigKey.values.where((element) => element.index == key).toList();
      if (where.isNotEmpty) {
        map[where[0]] = value;
      }
    });
    return AppConfig(map);
  }
}

class AppConfig {
  final Map<AppConfigKey, String> _map;

  AppConfig.normal() : this({AppConfigKey.RoomDisplayNum: "3"});

  AppConfig(this._map);

  String get(AppConfigKey key) => _map[key] ?? "";
}

enum AppConfigKey {
  UnDefined,
  RoomDisplayNum,
}
