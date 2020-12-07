///
//  Generated code. Do not modify.
//  source: social_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'social_message.pbenum.dart';

export 'social_message.pbenum.dart';

class ReadingsResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadingsResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'content')
    ..aOS(2, 'tag')
    ..hasRequiredFields = false
  ;

  ReadingsResp_Item._() : super();
  factory ReadingsResp_Item() => create();
  factory ReadingsResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadingsResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadingsResp_Item clone() => ReadingsResp_Item()..mergeFromMessage(this);
  ReadingsResp_Item copyWith(void Function(ReadingsResp_Item) updates) => super.copyWith((message) => updates(message as ReadingsResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadingsResp_Item create() => ReadingsResp_Item._();
  ReadingsResp_Item createEmptyInstance() => create();
  static $pb.PbList<ReadingsResp_Item> createRepeated() => $pb.PbList<ReadingsResp_Item>();
  @$core.pragma('dart2js:noInline')
  static ReadingsResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadingsResp_Item>(create);
  static ReadingsResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tag => $_getSZ(1);
  @$pb.TagNumber(2)
  set tag($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearTag() => clearField(2);
}

class ReadingsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadingsResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<ReadingsResp_Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: ReadingsResp_Item.create)
    ..hasRequiredFields = false
  ;

  ReadingsResp._() : super();
  factory ReadingsResp() => create();
  factory ReadingsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadingsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadingsResp clone() => ReadingsResp()..mergeFromMessage(this);
  ReadingsResp copyWith(void Function(ReadingsResp) updates) => super.copyWith((message) => updates(message as ReadingsResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadingsResp create() => ReadingsResp._();
  ReadingsResp createEmptyInstance() => create();
  static $pb.PbList<ReadingsResp> createRepeated() => $pb.PbList<ReadingsResp>();
  @$core.pragma('dart2js:noInline')
  static ReadingsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadingsResp>(create);
  static ReadingsResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ReadingsResp_Item> get items => $_getList(0);
}

class UserOAuthReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserOAuthReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<OAuthUpdateReq_Category>(3, 'category', $pb.PbFieldType.OE, defaultOrMaker: OAuthUpdateReq_Category.WX, valueOf: OAuthUpdateReq_Category.valueOf, enumValues: OAuthUpdateReq_Category.values)
    ..hasRequiredFields = false
  ;

  UserOAuthReq._() : super();
  factory UserOAuthReq() => create();
  factory UserOAuthReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserOAuthReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserOAuthReq clone() => UserOAuthReq()..mergeFromMessage(this);
  UserOAuthReq copyWith(void Function(UserOAuthReq) updates) => super.copyWith((message) => updates(message as UserOAuthReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserOAuthReq create() => UserOAuthReq._();
  UserOAuthReq createEmptyInstance() => create();
  static $pb.PbList<UserOAuthReq> createRepeated() => $pb.PbList<UserOAuthReq>();
  @$core.pragma('dart2js:noInline')
  static UserOAuthReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserOAuthReq>(create);
  static UserOAuthReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  OAuthUpdateReq_Category get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(OAuthUpdateReq_Category v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);
}

class UserOAuthResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserOAuthResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<UserOAuthResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: UserOAuthResp_Status.OK, valueOf: UserOAuthResp_Status.valueOf, enumValues: UserOAuthResp_Status.values)
    ..aOS(2, 'uid3rd', protoName: 'uid_3rd')
    ..hasRequiredFields = false
  ;

  UserOAuthResp._() : super();
  factory UserOAuthResp() => create();
  factory UserOAuthResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserOAuthResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserOAuthResp clone() => UserOAuthResp()..mergeFromMessage(this);
  UserOAuthResp copyWith(void Function(UserOAuthResp) updates) => super.copyWith((message) => updates(message as UserOAuthResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserOAuthResp create() => UserOAuthResp._();
  UserOAuthResp createEmptyInstance() => create();
  static $pb.PbList<UserOAuthResp> createRepeated() => $pb.PbList<UserOAuthResp>();
  @$core.pragma('dart2js:noInline')
  static UserOAuthResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserOAuthResp>(create);
  static UserOAuthResp _defaultInstance;

  @$pb.TagNumber(1)
  UserOAuthResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(UserOAuthResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid3rd => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid3rd($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid3rd() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid3rd() => clearField(2);
}

class OAuthUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OAuthUpdateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<OAuthUpdateReq_Category>(3, 'category', $pb.PbFieldType.OE, defaultOrMaker: OAuthUpdateReq_Category.WX, valueOf: OAuthUpdateReq_Category.valueOf, enumValues: OAuthUpdateReq_Category.values)
    ..aOS(4, 'uid3rd', protoName: 'uid_3rd')
    ..aOS(5, 'name3rd', protoName: 'name_3rd')
    ..hasRequiredFields = false
  ;

  OAuthUpdateReq._() : super();
  factory OAuthUpdateReq() => create();
  factory OAuthUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OAuthUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OAuthUpdateReq clone() => OAuthUpdateReq()..mergeFromMessage(this);
  OAuthUpdateReq copyWith(void Function(OAuthUpdateReq) updates) => super.copyWith((message) => updates(message as OAuthUpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OAuthUpdateReq create() => OAuthUpdateReq._();
  OAuthUpdateReq createEmptyInstance() => create();
  static $pb.PbList<OAuthUpdateReq> createRepeated() => $pb.PbList<OAuthUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static OAuthUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OAuthUpdateReq>(create);
  static OAuthUpdateReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  OAuthUpdateReq_Category get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(OAuthUpdateReq_Category v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uid3rd => $_getSZ(3);
  @$pb.TagNumber(4)
  set uid3rd($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUid3rd() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid3rd() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name3rd => $_getSZ(4);
  @$pb.TagNumber(5)
  set name3rd($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName3rd() => $_has(4);
  @$pb.TagNumber(5)
  void clearName3rd() => clearField(5);
}

class OAuthUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OAuthUpdateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<OAuthUpdateResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: OAuthUpdateResp_Status.OK, valueOf: OAuthUpdateResp_Status.valueOf, enumValues: OAuthUpdateResp_Status.values)
    ..hasRequiredFields = false
  ;

  OAuthUpdateResp._() : super();
  factory OAuthUpdateResp() => create();
  factory OAuthUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OAuthUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OAuthUpdateResp clone() => OAuthUpdateResp()..mergeFromMessage(this);
  OAuthUpdateResp copyWith(void Function(OAuthUpdateResp) updates) => super.copyWith((message) => updates(message as OAuthUpdateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OAuthUpdateResp create() => OAuthUpdateResp._();
  OAuthUpdateResp createEmptyInstance() => create();
  static $pb.PbList<OAuthUpdateResp> createRepeated() => $pb.PbList<OAuthUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static OAuthUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OAuthUpdateResp>(create);
  static OAuthUpdateResp _defaultInstance;

  @$pb.TagNumber(1)
  OAuthUpdateResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(OAuthUpdateResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class TagListResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TagListResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'tid', $pb.PbFieldType.O3)
    ..aOS(2, 'tag')
    ..aOS(3, 'category')
    ..a<$core.int>(4, 'priority', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TagListResp_Item._() : super();
  factory TagListResp_Item() => create();
  factory TagListResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagListResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TagListResp_Item clone() => TagListResp_Item()..mergeFromMessage(this);
  TagListResp_Item copyWith(void Function(TagListResp_Item) updates) => super.copyWith((message) => updates(message as TagListResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagListResp_Item create() => TagListResp_Item._();
  TagListResp_Item createEmptyInstance() => create();
  static $pb.PbList<TagListResp_Item> createRepeated() => $pb.PbList<TagListResp_Item>();
  @$core.pragma('dart2js:noInline')
  static TagListResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagListResp_Item>(create);
  static TagListResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tid => $_getIZ(0);
  @$pb.TagNumber(1)
  set tid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tag => $_getSZ(1);
  @$pb.TagNumber(2)
  set tag($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearTag() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get category => $_getSZ(2);
  @$pb.TagNumber(3)
  set category($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get priority => $_getIZ(3);
  @$pb.TagNumber(4)
  set priority($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPriority() => $_has(3);
  @$pb.TagNumber(4)
  void clearPriority() => clearField(4);
}

class TagListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TagListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<TagListResp_Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: TagListResp_Item.create)
    ..hasRequiredFields = false
  ;

  TagListResp._() : super();
  factory TagListResp() => create();
  factory TagListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TagListResp clone() => TagListResp()..mergeFromMessage(this);
  TagListResp copyWith(void Function(TagListResp) updates) => super.copyWith((message) => updates(message as TagListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagListResp create() => TagListResp._();
  TagListResp createEmptyInstance() => create();
  static $pb.PbList<TagListResp> createRepeated() => $pb.PbList<TagListResp>();
  @$core.pragma('dart2js:noInline')
  static TagListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagListResp>(create);
  static TagListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TagListResp_Item> get items => $_getList(0);
}

class TagListV2Resp_Tag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TagListV2Resp.Tag', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'category')
    ..pPS(2, 'tags')
    ..aOS(3, 'color')
    ..aOS(4, 'icon')
    ..aOS(5, 'desc')
    ..hasRequiredFields = false
  ;

  TagListV2Resp_Tag._() : super();
  factory TagListV2Resp_Tag() => create();
  factory TagListV2Resp_Tag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagListV2Resp_Tag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TagListV2Resp_Tag clone() => TagListV2Resp_Tag()..mergeFromMessage(this);
  TagListV2Resp_Tag copyWith(void Function(TagListV2Resp_Tag) updates) => super.copyWith((message) => updates(message as TagListV2Resp_Tag));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagListV2Resp_Tag create() => TagListV2Resp_Tag._();
  TagListV2Resp_Tag createEmptyInstance() => create();
  static $pb.PbList<TagListV2Resp_Tag> createRepeated() => $pb.PbList<TagListV2Resp_Tag>();
  @$core.pragma('dart2js:noInline')
  static TagListV2Resp_Tag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagListV2Resp_Tag>(create);
  static TagListV2Resp_Tag _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get category => $_getSZ(0);
  @$pb.TagNumber(1)
  set category($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get tags => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get desc => $_getSZ(4);
  @$pb.TagNumber(5)
  set desc($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesc() => clearField(5);
}

class TagListV2Resp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TagListV2Resp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<TagListV2Resp_Tag>(3, 'items', $pb.PbFieldType.PM, subBuilder: TagListV2Resp_Tag.create)
    ..hasRequiredFields = false
  ;

  TagListV2Resp._() : super();
  factory TagListV2Resp() => create();
  factory TagListV2Resp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagListV2Resp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TagListV2Resp clone() => TagListV2Resp()..mergeFromMessage(this);
  TagListV2Resp copyWith(void Function(TagListV2Resp) updates) => super.copyWith((message) => updates(message as TagListV2Resp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagListV2Resp create() => TagListV2Resp._();
  TagListV2Resp createEmptyInstance() => create();
  static $pb.PbList<TagListV2Resp> createRepeated() => $pb.PbList<TagListV2Resp>();
  @$core.pragma('dart2js:noInline')
  static TagListV2Resp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagListV2Resp>(create);
  static TagListV2Resp _defaultInstance;

  @$pb.TagNumber(3)
  $core.List<TagListV2Resp_Tag> get items => $_getList(0);
}

class Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Location', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.double>(1, 'lng', $pb.PbFieldType.OF)
    ..a<$core.double>(2, 'lat', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Location._() : super();
  factory Location() => create();
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Location clone() => Location()..mergeFromMessage(this);
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lng => $_getN(0);
  @$pb.TagNumber(1)
  set lng($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLng() => $_has(0);
  @$pb.TagNumber(1)
  void clearLng() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get lat => $_getN(1);
  @$pb.TagNumber(2)
  set lat($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => clearField(2);
}

class Tweet_User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Tweet.User', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'avatar')
    ..a<$core.int>(4, 'grade', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'showId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Tweet_User._() : super();
  factory Tweet_User() => create();
  factory Tweet_User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tweet_User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Tweet_User clone() => Tweet_User()..mergeFromMessage(this);
  Tweet_User copyWith(void Function(Tweet_User) updates) => super.copyWith((message) => updates(message as Tweet_User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tweet_User create() => Tweet_User._();
  Tweet_User createEmptyInstance() => create();
  static $pb.PbList<Tweet_User> createRepeated() => $pb.PbList<Tweet_User>();
  @$core.pragma('dart2js:noInline')
  static Tweet_User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tweet_User>(create);
  static Tweet_User _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get grade => $_getIZ(3);
  @$pb.TagNumber(4)
  set grade($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGrade() => $_has(3);
  @$pb.TagNumber(4)
  void clearGrade() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get showId => $_getIZ(4);
  @$pb.TagNumber(5)
  set showId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasShowId() => $_has(4);
  @$pb.TagNumber(5)
  void clearShowId() => clearField(5);
}

class Tweet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Tweet', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOM<Tweet_User>(1, 'user', subBuilder: Tweet_User.create)
    ..aOS(2, 'text')
    ..aOS(3, 'audio')
    ..aOM<Location>(4, 'location', subBuilder: Location.create)
    ..pPS(5, 'tags')
    ..pPS(6, 'photos')
    ..a<$core.int>(7, 'pubTime', $pb.PbFieldType.O3)
    ..aOB(8, 'isLiked')
    ..a<$core.int>(9, 'likeNum', $pb.PbFieldType.O3)
    ..aOS(10, 'tweetId')
    ..aOB(11, 'chat')
    ..aOB(12, 'setTop')
    ..hasRequiredFields = false
  ;

  Tweet._() : super();
  factory Tweet() => create();
  factory Tweet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tweet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Tweet clone() => Tweet()..mergeFromMessage(this);
  Tweet copyWith(void Function(Tweet) updates) => super.copyWith((message) => updates(message as Tweet));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tweet create() => Tweet._();
  Tweet createEmptyInstance() => create();
  static $pb.PbList<Tweet> createRepeated() => $pb.PbList<Tweet>();
  @$core.pragma('dart2js:noInline')
  static Tweet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tweet>(create);
  static Tweet _defaultInstance;

  @$pb.TagNumber(1)
  Tweet_User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(Tweet_User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  Tweet_User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get audio => $_getSZ(2);
  @$pb.TagNumber(3)
  set audio($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAudio() => $_has(2);
  @$pb.TagNumber(3)
  void clearAudio() => clearField(3);

  @$pb.TagNumber(4)
  Location get location => $_getN(3);
  @$pb.TagNumber(4)
  set location(Location v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => clearField(4);
  @$pb.TagNumber(4)
  Location ensureLocation() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get tags => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get photos => $_getList(5);

  @$pb.TagNumber(7)
  $core.int get pubTime => $_getIZ(6);
  @$pb.TagNumber(7)
  set pubTime($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPubTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearPubTime() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isLiked => $_getBF(7);
  @$pb.TagNumber(8)
  set isLiked($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsLiked() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsLiked() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get likeNum => $_getIZ(8);
  @$pb.TagNumber(9)
  set likeNum($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLikeNum() => $_has(8);
  @$pb.TagNumber(9)
  void clearLikeNum() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get tweetId => $_getSZ(9);
  @$pb.TagNumber(10)
  set tweetId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTweetId() => $_has(9);
  @$pb.TagNumber(10)
  void clearTweetId() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get chat => $_getBF(10);
  @$pb.TagNumber(11)
  set chat($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasChat() => $_has(10);
  @$pb.TagNumber(11)
  void clearChat() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get setTop => $_getBF(11);
  @$pb.TagNumber(12)
  set setTop($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSetTop() => $_has(11);
  @$pb.TagNumber(12)
  void clearSetTop() => clearField(12);
}

class GeneralResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GeneralResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<GeneralResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: GeneralResp_Status.OK, valueOf: GeneralResp_Status.valueOf, enumValues: GeneralResp_Status.values)
    ..hasRequiredFields = false
  ;

  GeneralResp._() : super();
  factory GeneralResp() => create();
  factory GeneralResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GeneralResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GeneralResp clone() => GeneralResp()..mergeFromMessage(this);
  GeneralResp copyWith(void Function(GeneralResp) updates) => super.copyWith((message) => updates(message as GeneralResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GeneralResp create() => GeneralResp._();
  GeneralResp createEmptyInstance() => create();
  static $pb.PbList<GeneralResp> createRepeated() => $pb.PbList<GeneralResp>();
  @$core.pragma('dart2js:noInline')
  static GeneralResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GeneralResp>(create);
  static GeneralResp _defaultInstance;

  @$pb.TagNumber(1)
  GeneralResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(GeneralResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class TweetListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TweetListReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..a<$core.int>(3, 'currentPage', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'numPerPage', $pb.PbFieldType.O3)
    ..aOM<Location>(5, 'currentLoc', subBuilder: Location.create)
    ..aOS(6, 'expectUid')
    ..a<$core.int>(7, 'expectAge', $pb.PbFieldType.O3)
    ..a<$core.int>(8, 'expectGender', $pb.PbFieldType.O3)
    ..a<$core.int>(9, 'expectDistance', $pb.PbFieldType.O3)
    ..e<TweetListReq_Category>(10, 'category', $pb.PbFieldType.OE, defaultOrMaker: TweetListReq_Category.RECENT, valueOf: TweetListReq_Category.valueOf, enumValues: TweetListReq_Category.values)
    ..a<$core.int>(11, 'selfGrade', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TweetListReq._() : super();
  factory TweetListReq() => create();
  factory TweetListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TweetListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TweetListReq clone() => TweetListReq()..mergeFromMessage(this);
  TweetListReq copyWith(void Function(TweetListReq) updates) => super.copyWith((message) => updates(message as TweetListReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TweetListReq create() => TweetListReq._();
  TweetListReq createEmptyInstance() => create();
  static $pb.PbList<TweetListReq> createRepeated() => $pb.PbList<TweetListReq>();
  @$core.pragma('dart2js:noInline')
  static TweetListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TweetListReq>(create);
  static TweetListReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get currentPage => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentPage($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentPage() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numPerPage => $_getIZ(3);
  @$pb.TagNumber(4)
  set numPerPage($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumPerPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumPerPage() => clearField(4);

  @$pb.TagNumber(5)
  Location get currentLoc => $_getN(4);
  @$pb.TagNumber(5)
  set currentLoc(Location v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrentLoc() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentLoc() => clearField(5);
  @$pb.TagNumber(5)
  Location ensureCurrentLoc() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get expectUid => $_getSZ(5);
  @$pb.TagNumber(6)
  set expectUid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExpectUid() => $_has(5);
  @$pb.TagNumber(6)
  void clearExpectUid() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get expectAge => $_getIZ(6);
  @$pb.TagNumber(7)
  set expectAge($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpectAge() => $_has(6);
  @$pb.TagNumber(7)
  void clearExpectAge() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get expectGender => $_getIZ(7);
  @$pb.TagNumber(8)
  set expectGender($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExpectGender() => $_has(7);
  @$pb.TagNumber(8)
  void clearExpectGender() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get expectDistance => $_getIZ(8);
  @$pb.TagNumber(9)
  set expectDistance($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExpectDistance() => $_has(8);
  @$pb.TagNumber(9)
  void clearExpectDistance() => clearField(9);

  @$pb.TagNumber(10)
  TweetListReq_Category get category => $_getN(9);
  @$pb.TagNumber(10)
  set category(TweetListReq_Category v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCategory() => $_has(9);
  @$pb.TagNumber(10)
  void clearCategory() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get selfGrade => $_getIZ(10);
  @$pb.TagNumber(11)
  set selfGrade($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSelfGrade() => $_has(10);
  @$pb.TagNumber(11)
  void clearSelfGrade() => clearField(11);
}

class TweetListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TweetListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<GeneralResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: GeneralResp_Status.OK, valueOf: GeneralResp_Status.valueOf, enumValues: GeneralResp_Status.values)
    ..pc<Tweet>(2, 'tweets', $pb.PbFieldType.PM, subBuilder: Tweet.create)
    ..hasRequiredFields = false
  ;

  TweetListResp._() : super();
  factory TweetListResp() => create();
  factory TweetListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TweetListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TweetListResp clone() => TweetListResp()..mergeFromMessage(this);
  TweetListResp copyWith(void Function(TweetListResp) updates) => super.copyWith((message) => updates(message as TweetListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TweetListResp create() => TweetListResp._();
  TweetListResp createEmptyInstance() => create();
  static $pb.PbList<TweetListResp> createRepeated() => $pb.PbList<TweetListResp>();
  @$core.pragma('dart2js:noInline')
  static TweetListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TweetListResp>(create);
  static TweetListResp _defaultInstance;

  @$pb.TagNumber(1)
  GeneralResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(GeneralResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Tweet> get tweets => $_getList(1);
}

class PubTweetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PubTweetReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOM<Tweet>(3, 'tweet', subBuilder: Tweet.create)
    ..hasRequiredFields = false
  ;

  PubTweetReq._() : super();
  factory PubTweetReq() => create();
  factory PubTweetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PubTweetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PubTweetReq clone() => PubTweetReq()..mergeFromMessage(this);
  PubTweetReq copyWith(void Function(PubTweetReq) updates) => super.copyWith((message) => updates(message as PubTweetReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PubTweetReq create() => PubTweetReq._();
  PubTweetReq createEmptyInstance() => create();
  static $pb.PbList<PubTweetReq> createRepeated() => $pb.PbList<PubTweetReq>();
  @$core.pragma('dart2js:noInline')
  static PubTweetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PubTweetReq>(create);
  static PubTweetReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  Tweet get tweet => $_getN(2);
  @$pb.TagNumber(3)
  set tweet(Tweet v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTweet() => $_has(2);
  @$pb.TagNumber(3)
  void clearTweet() => clearField(3);
  @$pb.TagNumber(3)
  Tweet ensureTweet() => $_ensure(2);
}

class LikeTweetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LikeTweetReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'tweetId')
    ..hasRequiredFields = false
  ;

  LikeTweetReq._() : super();
  factory LikeTweetReq() => create();
  factory LikeTweetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikeTweetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LikeTweetReq clone() => LikeTweetReq()..mergeFromMessage(this);
  LikeTweetReq copyWith(void Function(LikeTweetReq) updates) => super.copyWith((message) => updates(message as LikeTweetReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LikeTweetReq create() => LikeTweetReq._();
  LikeTweetReq createEmptyInstance() => create();
  static $pb.PbList<LikeTweetReq> createRepeated() => $pb.PbList<LikeTweetReq>();
  @$core.pragma('dart2js:noInline')
  static LikeTweetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeTweetReq>(create);
  static LikeTweetReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tweetId => $_getSZ(2);
  @$pb.TagNumber(3)
  set tweetId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTweetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTweetId() => clearField(3);
}

class UnPubTweetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnPubTweetReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'tweetId')
    ..hasRequiredFields = false
  ;

  UnPubTweetReq._() : super();
  factory UnPubTweetReq() => create();
  factory UnPubTweetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnPubTweetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UnPubTweetReq clone() => UnPubTweetReq()..mergeFromMessage(this);
  UnPubTweetReq copyWith(void Function(UnPubTweetReq) updates) => super.copyWith((message) => updates(message as UnPubTweetReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnPubTweetReq create() => UnPubTweetReq._();
  UnPubTweetReq createEmptyInstance() => create();
  static $pb.PbList<UnPubTweetReq> createRepeated() => $pb.PbList<UnPubTweetReq>();
  @$core.pragma('dart2js:noInline')
  static UnPubTweetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnPubTweetReq>(create);
  static UnPubTweetReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tweetId => $_getSZ(2);
  @$pb.TagNumber(3)
  set tweetId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTweetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTweetId() => clearField(3);
}

