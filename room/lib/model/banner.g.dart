// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return Banner(
    json['code'] as int,
    json['msg'] as String,
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['on'] as bool,
    (json['banner_list'] as List)
        ?.map((e) =>
            e == null ? null : Banner_list.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'on': instance.on,
      'banner_list': instance.bannerList,
    };

Banner_list _$Banner_listFromJson(Map<String, dynamic> json) {
  return Banner_list(
    json['img_url'] as String,
    json['banner_url'] as String,
  );
}

Map<String, dynamic> _$Banner_listToJson(Banner_list instance) =>
    <String, dynamic>{
      'img_url': instance.imgUrl,
      'banner_url': instance.bannerUrl,
    };
