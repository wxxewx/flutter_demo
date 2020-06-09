import 'dart:typed_data';

import 'package:baselib/app.dart';
import 'package:baselib/api/url/url.dart';
import 'package:baselib/common/base/base_cache_meta.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/proto/sys_message.pb.dart';

class CountryMeta extends BaseCacheMeta<List<Country>, SupportCountryResp> {
  static CountryMeta get instance => _getInstance();
  static CountryMeta _instance;

  CountryMeta._internal() : super(normal());

  static CountryMeta _getInstance() {
    if (_instance == null) {
      _instance = new CountryMeta._internal();
    }
    return _instance;
  }

  @override
  SupportCountryResp base64ToProto(Uint8List base64decode) {
    return SupportCountryResp.fromBuffer(base64decode);
  }

  @override
  Future<SupportCountryResp> request() async {
    var body = await App.mainRequest
        .get<SupportCountryResp>(UmbrellaUrl.COUNTRY_LIST, (byte) async {
      var countryResp = SupportCountryResp.fromBuffer(byte);
      return ResultBody(true, data: countryResp);
    });
    return body.isSuccess ? body.data : null;
  }

  @override
  List<Country> transform(SupportCountryResp proto) {
    return proto.items.length > 0
        ? proto.items.map((item) {
            return Country(item.name, item.code);
          }).toList()
        : normal();
  }

  static List<Country> normal() {
    var list = List<Country>();
    list.add(Country.normal());
    return list;
  }
}

class Country {
  final String name;
  final int code;

  Country(this.name, this.code);

  Country.normal()
      : name = "中国",
        code = 86;
}
