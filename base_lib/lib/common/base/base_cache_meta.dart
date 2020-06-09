import 'dart:convert';
import 'dart:typed_data';

import 'package:baselib/app.dart';
import 'package:baselib/utils/key_value_cache.dart';
import 'package:common_utils/common_utils.dart';
import 'package:protobuf/protobuf.dart';

import 'base_meta.dart';

abstract class BaseCacheMeta<Meta, Proto extends GeneratedMessage>
    extends BaseMeta<Meta, Proto> {
  BaseCacheMeta(defaultValue) : super(defaultValue);

  @override
  Future<Meta> get() async {
    var expire = await getInt(getExpireKey()) ?? 0;
    var nowDateMs = DateUtil.getNowDateMs();
    if (nowDateMs - expire >= cachePeriod()) {
      if (value == defaultValue) {
        var proto = await request();
        if (proto != null) {
          await cacheMeta(proto);
          value = transform(proto);
          subject.add(value);
        } else {
          value = defaultValue;
          subject.add(value);
        }
      }
    } else {
      var proto = await getCacheMeta();
      value = transform(proto);
      subject.add(value);
    }
    return value;
  }

  void cacheMeta(Proto proto) async {
    var buffer = proto.writeToBuffer();
    var base64encode = base64Encode(buffer);
    await setString(getKey(), base64encode);
    var nowDateMs = DateUtil.getNowDateMs();
    await setInt(getExpireKey(), nowDateMs);
  }

  Future<Proto> getCacheMeta() async {
    var string = await getString(getKey());
    var base64decode = base64Decode(string);
    var proto = base64ToProto(base64decode);
    return proto;
  }

  Proto base64ToProto(Uint8List base64decode);

  String getKey() {
    return "META_${runtimeType.toString()}";
  }

  String getExpireKey() {
    return "ExpireTime_${runtimeType.toString()}";
  }

  int cachePeriod() {
    return App.metaCachePeriod;
  }
}
