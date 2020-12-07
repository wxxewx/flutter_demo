///
//  Generated code. Do not modify.
//  source: fans_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'fans_message.pbenum.dart';

export 'fans_message.pbenum.dart';

class FansClub extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClub', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'avatar')
    ..aOS(4, 'title')
    ..aOS(5, 'icon')
    ..a<$core.int>(6, 'fansNum', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  FansClub._() : super();
  factory FansClub() => create();
  factory FansClub.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClub.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClub clone() => FansClub()..mergeFromMessage(this);
  FansClub copyWith(void Function(FansClub) updates) => super.copyWith((message) => updates(message as FansClub));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClub create() => FansClub._();
  FansClub createEmptyInstance() => create();
  static $pb.PbList<FansClub> createRepeated() => $pb.PbList<FansClub>();
  @$core.pragma('dart2js:noInline')
  static FansClub getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClub>(create);
  static FansClub _defaultInstance;

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
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get icon => $_getSZ(4);
  @$pb.TagNumber(5)
  set icon($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearIcon() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get fansNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set fansNum($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFansNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearFansNum() => clearField(6);
}

class FansClubInfoReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubInfoReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'toUid')
    ..hasRequiredFields = false
  ;

  FansClubInfoReq._() : super();
  factory FansClubInfoReq() => create();
  factory FansClubInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubInfoReq clone() => FansClubInfoReq()..mergeFromMessage(this);
  FansClubInfoReq copyWith(void Function(FansClubInfoReq) updates) => super.copyWith((message) => updates(message as FansClubInfoReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubInfoReq create() => FansClubInfoReq._();
  FansClubInfoReq createEmptyInstance() => create();
  static $pb.PbList<FansClubInfoReq> createRepeated() => $pb.PbList<FansClubInfoReq>();
  @$core.pragma('dart2js:noInline')
  static FansClubInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubInfoReq>(create);
  static FansClubInfoReq _defaultInstance;

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
  $core.String get toUid => $_getSZ(2);
  @$pb.TagNumber(3)
  set toUid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearToUid() => clearField(3);
}

class FansClubInfoResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubInfoResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<FansClubInfoResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: FansClubInfoResp_Status.OK, valueOf: FansClubInfoResp_Status.valueOf, enumValues: FansClubInfoResp_Status.values)
    ..aOM<FansClub>(2, 'info', subBuilder: FansClub.create)
    ..a<$core.int>(3, 'income', $pb.PbFieldType.O3)
    ..aOB(4, 'isFans')
    ..hasRequiredFields = false
  ;

  FansClubInfoResp._() : super();
  factory FansClubInfoResp() => create();
  factory FansClubInfoResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubInfoResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubInfoResp clone() => FansClubInfoResp()..mergeFromMessage(this);
  FansClubInfoResp copyWith(void Function(FansClubInfoResp) updates) => super.copyWith((message) => updates(message as FansClubInfoResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubInfoResp create() => FansClubInfoResp._();
  FansClubInfoResp createEmptyInstance() => create();
  static $pb.PbList<FansClubInfoResp> createRepeated() => $pb.PbList<FansClubInfoResp>();
  @$core.pragma('dart2js:noInline')
  static FansClubInfoResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubInfoResp>(create);
  static FansClubInfoResp _defaultInstance;

  @$pb.TagNumber(1)
  FansClubInfoResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(FansClubInfoResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  FansClub get info => $_getN(1);
  @$pb.TagNumber(2)
  set info(FansClub v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearInfo() => clearField(2);
  @$pb.TagNumber(2)
  FansClub ensureInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get income => $_getIZ(2);
  @$pb.TagNumber(3)
  set income($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIncome() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncome() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isFans => $_getBF(3);
  @$pb.TagNumber(4)
  set isFans($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsFans() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsFans() => clearField(4);
}

class FansClubInfoEditReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubInfoEditReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'title')
    ..aOS(4, 'icon')
    ..hasRequiredFields = false
  ;

  FansClubInfoEditReq._() : super();
  factory FansClubInfoEditReq() => create();
  factory FansClubInfoEditReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubInfoEditReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubInfoEditReq clone() => FansClubInfoEditReq()..mergeFromMessage(this);
  FansClubInfoEditReq copyWith(void Function(FansClubInfoEditReq) updates) => super.copyWith((message) => updates(message as FansClubInfoEditReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubInfoEditReq create() => FansClubInfoEditReq._();
  FansClubInfoEditReq createEmptyInstance() => create();
  static $pb.PbList<FansClubInfoEditReq> createRepeated() => $pb.PbList<FansClubInfoEditReq>();
  @$core.pragma('dart2js:noInline')
  static FansClubInfoEditReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubInfoEditReq>(create);
  static FansClubInfoEditReq _defaultInstance;

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
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => clearField(4);
}

class FansClubInfoEditResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubInfoEditResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<FansClubInfoEditResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: FansClubInfoEditResp_Status.OK, valueOf: FansClubInfoEditResp_Status.valueOf, enumValues: FansClubInfoEditResp_Status.values)
    ..hasRequiredFields = false
  ;

  FansClubInfoEditResp._() : super();
  factory FansClubInfoEditResp() => create();
  factory FansClubInfoEditResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubInfoEditResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubInfoEditResp clone() => FansClubInfoEditResp()..mergeFromMessage(this);
  FansClubInfoEditResp copyWith(void Function(FansClubInfoEditResp) updates) => super.copyWith((message) => updates(message as FansClubInfoEditResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubInfoEditResp create() => FansClubInfoEditResp._();
  FansClubInfoEditResp createEmptyInstance() => create();
  static $pb.PbList<FansClubInfoEditResp> createRepeated() => $pb.PbList<FansClubInfoEditResp>();
  @$core.pragma('dart2js:noInline')
  static FansClubInfoEditResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubInfoEditResp>(create);
  static FansClubInfoEditResp _defaultInstance;

  @$pb.TagNumber(1)
  FansClubInfoEditResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(FansClubInfoEditResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class FansClubUserLevelReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubUserLevelReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'toUid')
    ..hasRequiredFields = false
  ;

  FansClubUserLevelReq._() : super();
  factory FansClubUserLevelReq() => create();
  factory FansClubUserLevelReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubUserLevelReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubUserLevelReq clone() => FansClubUserLevelReq()..mergeFromMessage(this);
  FansClubUserLevelReq copyWith(void Function(FansClubUserLevelReq) updates) => super.copyWith((message) => updates(message as FansClubUserLevelReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubUserLevelReq create() => FansClubUserLevelReq._();
  FansClubUserLevelReq createEmptyInstance() => create();
  static $pb.PbList<FansClubUserLevelReq> createRepeated() => $pb.PbList<FansClubUserLevelReq>();
  @$core.pragma('dart2js:noInline')
  static FansClubUserLevelReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubUserLevelReq>(create);
  static FansClubUserLevelReq _defaultInstance;

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
  $core.String get toUid => $_getSZ(2);
  @$pb.TagNumber(3)
  set toUid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearToUid() => clearField(3);
}

class FansClubUserLevelResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubUserLevelResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'totalScore', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'todayScore', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'level', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'nextLevelScore', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  FansClubUserLevelResp._() : super();
  factory FansClubUserLevelResp() => create();
  factory FansClubUserLevelResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubUserLevelResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubUserLevelResp clone() => FansClubUserLevelResp()..mergeFromMessage(this);
  FansClubUserLevelResp copyWith(void Function(FansClubUserLevelResp) updates) => super.copyWith((message) => updates(message as FansClubUserLevelResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubUserLevelResp create() => FansClubUserLevelResp._();
  FansClubUserLevelResp createEmptyInstance() => create();
  static $pb.PbList<FansClubUserLevelResp> createRepeated() => $pb.PbList<FansClubUserLevelResp>();
  @$core.pragma('dart2js:noInline')
  static FansClubUserLevelResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubUserLevelResp>(create);
  static FansClubUserLevelResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalScore => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalScore($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalScore() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get todayScore => $_getIZ(1);
  @$pb.TagNumber(2)
  set todayScore($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTodayScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearTodayScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get level => $_getIZ(2);
  @$pb.TagNumber(3)
  set level($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevel() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get nextLevelScore => $_getIZ(3);
  @$pb.TagNumber(4)
  set nextLevelScore($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNextLevelScore() => $_has(3);
  @$pb.TagNumber(4)
  void clearNextLevelScore() => clearField(4);
}

class FansClubListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubListReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  FansClubListReq._() : super();
  factory FansClubListReq() => create();
  factory FansClubListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubListReq clone() => FansClubListReq()..mergeFromMessage(this);
  FansClubListReq copyWith(void Function(FansClubListReq) updates) => super.copyWith((message) => updates(message as FansClubListReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubListReq create() => FansClubListReq._();
  FansClubListReq createEmptyInstance() => create();
  static $pb.PbList<FansClubListReq> createRepeated() => $pb.PbList<FansClubListReq>();
  @$core.pragma('dart2js:noInline')
  static FansClubListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubListReq>(create);
  static FansClubListReq _defaultInstance;

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
}

class FansClubListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<FansClub>(1, 'items', $pb.PbFieldType.PM, subBuilder: FansClub.create)
    ..hasRequiredFields = false
  ;

  FansClubListResp._() : super();
  factory FansClubListResp() => create();
  factory FansClubListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubListResp clone() => FansClubListResp()..mergeFromMessage(this);
  FansClubListResp copyWith(void Function(FansClubListResp) updates) => super.copyWith((message) => updates(message as FansClubListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubListResp create() => FansClubListResp._();
  FansClubListResp createEmptyInstance() => create();
  static $pb.PbList<FansClubListResp> createRepeated() => $pb.PbList<FansClubListResp>();
  @$core.pragma('dart2js:noInline')
  static FansClubListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubListResp>(create);
  static FansClubListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FansClub> get items => $_getList(0);
}

class FansClubTaskStateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubTaskStateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  FansClubTaskStateReq._() : super();
  factory FansClubTaskStateReq() => create();
  factory FansClubTaskStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubTaskStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubTaskStateReq clone() => FansClubTaskStateReq()..mergeFromMessage(this);
  FansClubTaskStateReq copyWith(void Function(FansClubTaskStateReq) updates) => super.copyWith((message) => updates(message as FansClubTaskStateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubTaskStateReq create() => FansClubTaskStateReq._();
  FansClubTaskStateReq createEmptyInstance() => create();
  static $pb.PbList<FansClubTaskStateReq> createRepeated() => $pb.PbList<FansClubTaskStateReq>();
  @$core.pragma('dart2js:noInline')
  static FansClubTaskStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubTaskStateReq>(create);
  static FansClubTaskStateReq _defaultInstance;

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
}

class FansClubTaskStateResp_TaskState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubTaskStateResp.TaskState', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<TaskCategory>(1, 'category', $pb.PbFieldType.OE, defaultOrMaker: TaskCategory.CONSUME, valueOf: TaskCategory.valueOf, enumValues: TaskCategory.values)
    ..a<$core.int>(2, 'todayScore', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'dailyLimit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  FansClubTaskStateResp_TaskState._() : super();
  factory FansClubTaskStateResp_TaskState() => create();
  factory FansClubTaskStateResp_TaskState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubTaskStateResp_TaskState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubTaskStateResp_TaskState clone() => FansClubTaskStateResp_TaskState()..mergeFromMessage(this);
  FansClubTaskStateResp_TaskState copyWith(void Function(FansClubTaskStateResp_TaskState) updates) => super.copyWith((message) => updates(message as FansClubTaskStateResp_TaskState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubTaskStateResp_TaskState create() => FansClubTaskStateResp_TaskState._();
  FansClubTaskStateResp_TaskState createEmptyInstance() => create();
  static $pb.PbList<FansClubTaskStateResp_TaskState> createRepeated() => $pb.PbList<FansClubTaskStateResp_TaskState>();
  @$core.pragma('dart2js:noInline')
  static FansClubTaskStateResp_TaskState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubTaskStateResp_TaskState>(create);
  static FansClubTaskStateResp_TaskState _defaultInstance;

  @$pb.TagNumber(1)
  TaskCategory get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(TaskCategory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get todayScore => $_getIZ(1);
  @$pb.TagNumber(2)
  set todayScore($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTodayScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearTodayScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get dailyLimit => $_getIZ(2);
  @$pb.TagNumber(3)
  set dailyLimit($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDailyLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearDailyLimit() => clearField(3);
}

class FansClubTaskStateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubTaskStateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<FansClubTaskStateResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: FansClubTaskStateResp_Status.OK, valueOf: FansClubTaskStateResp_Status.valueOf, enumValues: FansClubTaskStateResp_Status.values)
    ..pc<FansClubTaskStateResp_TaskState>(2, 'items', $pb.PbFieldType.PM, subBuilder: FansClubTaskStateResp_TaskState.create)
    ..hasRequiredFields = false
  ;

  FansClubTaskStateResp._() : super();
  factory FansClubTaskStateResp() => create();
  factory FansClubTaskStateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubTaskStateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubTaskStateResp clone() => FansClubTaskStateResp()..mergeFromMessage(this);
  FansClubTaskStateResp copyWith(void Function(FansClubTaskStateResp) updates) => super.copyWith((message) => updates(message as FansClubTaskStateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubTaskStateResp create() => FansClubTaskStateResp._();
  FansClubTaskStateResp createEmptyInstance() => create();
  static $pb.PbList<FansClubTaskStateResp> createRepeated() => $pb.PbList<FansClubTaskStateResp>();
  @$core.pragma('dart2js:noInline')
  static FansClubTaskStateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubTaskStateResp>(create);
  static FansClubTaskStateResp _defaultInstance;

  @$pb.TagNumber(1)
  FansClubTaskStateResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(FansClubTaskStateResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<FansClubTaskStateResp_TaskState> get items => $_getList(1);
}

class FansClubTaskAchieveReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubTaskAchieveReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'toUid')
    ..aOS(3, 'token')
    ..e<TaskCategory>(4, 'category', $pb.PbFieldType.OE, defaultOrMaker: TaskCategory.CONSUME, valueOf: TaskCategory.valueOf, enumValues: TaskCategory.values)
    ..a<$core.int>(5, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  FansClubTaskAchieveReq._() : super();
  factory FansClubTaskAchieveReq() => create();
  factory FansClubTaskAchieveReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubTaskAchieveReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubTaskAchieveReq clone() => FansClubTaskAchieveReq()..mergeFromMessage(this);
  FansClubTaskAchieveReq copyWith(void Function(FansClubTaskAchieveReq) updates) => super.copyWith((message) => updates(message as FansClubTaskAchieveReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubTaskAchieveReq create() => FansClubTaskAchieveReq._();
  FansClubTaskAchieveReq createEmptyInstance() => create();
  static $pb.PbList<FansClubTaskAchieveReq> createRepeated() => $pb.PbList<FansClubTaskAchieveReq>();
  @$core.pragma('dart2js:noInline')
  static FansClubTaskAchieveReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubTaskAchieveReq>(create);
  static FansClubTaskAchieveReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get toUid => $_getSZ(1);
  @$pb.TagNumber(2)
  set toUid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearToUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  TaskCategory get category => $_getN(3);
  @$pb.TagNumber(4)
  set category(TaskCategory v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get value => $_getIZ(4);
  @$pb.TagNumber(5)
  set value($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => clearField(5);
}

class FansClubTaskAchieveResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FansClubTaskAchieveResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<FansClubTaskAchieveResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: FansClubTaskAchieveResp_Status.OK, valueOf: FansClubTaskAchieveResp_Status.valueOf, enumValues: FansClubTaskAchieveResp_Status.values)
    ..hasRequiredFields = false
  ;

  FansClubTaskAchieveResp._() : super();
  factory FansClubTaskAchieveResp() => create();
  factory FansClubTaskAchieveResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FansClubTaskAchieveResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FansClubTaskAchieveResp clone() => FansClubTaskAchieveResp()..mergeFromMessage(this);
  FansClubTaskAchieveResp copyWith(void Function(FansClubTaskAchieveResp) updates) => super.copyWith((message) => updates(message as FansClubTaskAchieveResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FansClubTaskAchieveResp create() => FansClubTaskAchieveResp._();
  FansClubTaskAchieveResp createEmptyInstance() => create();
  static $pb.PbList<FansClubTaskAchieveResp> createRepeated() => $pb.PbList<FansClubTaskAchieveResp>();
  @$core.pragma('dart2js:noInline')
  static FansClubTaskAchieveResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FansClubTaskAchieveResp>(create);
  static FansClubTaskAchieveResp _defaultInstance;

  @$pb.TagNumber(1)
  FansClubTaskAchieveResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(FansClubTaskAchieveResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

