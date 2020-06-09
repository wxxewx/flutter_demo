import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';


@JsonSerializable()
class Banner extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'data')
  Data data;

  Banner(this.code,this.msg,this.data,);

  factory Banner.fromJson(Map<String, dynamic> srcJson) => _$BannerFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BannerToJson(this);

}


@JsonSerializable()
class Data extends Object {

  @JsonKey(name: 'on')
  bool on;

  @JsonKey(name: 'banner_list')
  List<Banner_list> bannerList;

  Data(this.on,this.bannerList,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}


@JsonSerializable()
class Banner_list extends Object {

  @JsonKey(name: 'img_url')
  String imgUrl;

  @JsonKey(name: 'banner_url')
  String bannerUrl;

  Banner_list(this.imgUrl,this.bannerUrl,);

  factory Banner_list.fromJson(Map<String, dynamic> srcJson) => _$Banner_listFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Banner_listToJson(this);

}


