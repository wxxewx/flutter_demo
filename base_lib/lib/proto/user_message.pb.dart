///
//  Generated code. Do not modify.
//  source: user_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user_message.pbenum.dart';

export 'user_message.pbenum.dart';

class UserInfoBrief extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserInfoBrief', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'avatar')
    ..aOS(4, 'nobleName')
    ..aOS(5, 'greatNum')
    ..aOS(6, 'location')
    ..a<$core.int>(7, 'fans', $pb.PbFieldType.O3)
    ..a<$core.int>(8, 'follows', $pb.PbFieldType.O3)
    ..a<$core.int>(9, 'age', $pb.PbFieldType.O3)
    ..aOS(10, 'gender')
    ..a<$core.int>(11, 'vip', $pb.PbFieldType.O3)
    ..a<$core.int>(12, 'noble', $pb.PbFieldType.O3)
    ..a<$core.int>(13, 'banbanGrade', $pb.PbFieldType.O3)
    ..aOS(14, 'lastLogin')
    ..aOS(15, 'celebrity')
    ..hasRequiredFields = false
  ;

  UserInfoBrief._() : super();
  factory UserInfoBrief() => create();
  factory UserInfoBrief.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoBrief.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserInfoBrief clone() => UserInfoBrief()..mergeFromMessage(this);
  UserInfoBrief copyWith(void Function(UserInfoBrief) updates) => super.copyWith((message) => updates(message as UserInfoBrief));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfoBrief create() => UserInfoBrief._();
  UserInfoBrief createEmptyInstance() => create();
  static $pb.PbList<UserInfoBrief> createRepeated() => $pb.PbList<UserInfoBrief>();
  @$core.pragma('dart2js:noInline')
  static UserInfoBrief getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoBrief>(create);
  static UserInfoBrief _defaultInstance;

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
  $core.String get nobleName => $_getSZ(3);
  @$pb.TagNumber(4)
  set nobleName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNobleName() => $_has(3);
  @$pb.TagNumber(4)
  void clearNobleName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get greatNum => $_getSZ(4);
  @$pb.TagNumber(5)
  set greatNum($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGreatNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearGreatNum() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get location => $_getSZ(5);
  @$pb.TagNumber(6)
  set location($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocation() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocation() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get fans => $_getIZ(6);
  @$pb.TagNumber(7)
  set fans($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFans() => $_has(6);
  @$pb.TagNumber(7)
  void clearFans() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get follows => $_getIZ(7);
  @$pb.TagNumber(8)
  set follows($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFollows() => $_has(7);
  @$pb.TagNumber(8)
  void clearFollows() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get age => $_getIZ(8);
  @$pb.TagNumber(9)
  set age($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAge() => $_has(8);
  @$pb.TagNumber(9)
  void clearAge() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get gender => $_getSZ(9);
  @$pb.TagNumber(10)
  set gender($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasGender() => $_has(9);
  @$pb.TagNumber(10)
  void clearGender() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get vip => $_getIZ(10);
  @$pb.TagNumber(11)
  set vip($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasVip() => $_has(10);
  @$pb.TagNumber(11)
  void clearVip() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get noble => $_getIZ(11);
  @$pb.TagNumber(12)
  set noble($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasNoble() => $_has(11);
  @$pb.TagNumber(12)
  void clearNoble() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get banbanGrade => $_getIZ(12);
  @$pb.TagNumber(13)
  set banbanGrade($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasBanbanGrade() => $_has(12);
  @$pb.TagNumber(13)
  void clearBanbanGrade() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get lastLogin => $_getSZ(13);
  @$pb.TagNumber(14)
  set lastLogin($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLastLogin() => $_has(13);
  @$pb.TagNumber(14)
  void clearLastLogin() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get celebrity => $_getSZ(14);
  @$pb.TagNumber(15)
  set celebrity($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCelebrity() => $_has(14);
  @$pb.TagNumber(15)
  void clearCelebrity() => clearField(15);
}

class NameCheckReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NameCheckReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  NameCheckReq._() : super();
  factory NameCheckReq() => create();
  factory NameCheckReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NameCheckReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NameCheckReq clone() => NameCheckReq()..mergeFromMessage(this);
  NameCheckReq copyWith(void Function(NameCheckReq) updates) => super.copyWith((message) => updates(message as NameCheckReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NameCheckReq create() => NameCheckReq._();
  NameCheckReq createEmptyInstance() => create();
  static $pb.PbList<NameCheckReq> createRepeated() => $pb.PbList<NameCheckReq>();
  @$core.pragma('dart2js:noInline')
  static NameCheckReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NameCheckReq>(create);
  static NameCheckReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class NameCheckResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NameCheckResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOB(1, 'canUse')
    ..pPS(2, 'names')
    ..hasRequiredFields = false
  ;

  NameCheckResp._() : super();
  factory NameCheckResp() => create();
  factory NameCheckResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NameCheckResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NameCheckResp clone() => NameCheckResp()..mergeFromMessage(this);
  NameCheckResp copyWith(void Function(NameCheckResp) updates) => super.copyWith((message) => updates(message as NameCheckResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NameCheckResp create() => NameCheckResp._();
  NameCheckResp createEmptyInstance() => create();
  static $pb.PbList<NameCheckResp> createRepeated() => $pb.PbList<NameCheckResp>();
  @$core.pragma('dart2js:noInline')
  static NameCheckResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NameCheckResp>(create);
  static NameCheckResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get canUse => $_getBF(0);
  @$pb.TagNumber(1)
  set canUse($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCanUse() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanUse() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get names => $_getList(1);
}

class UserRegisterReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserRegisterReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'phone')
    ..aOS(2, 'name')
    ..aOS(3, 'gender')
    ..aOS(4, 'avatar')
    ..aOS(5, 'birth')
    ..aOS(6, 'invitedCode')
    ..p<$core.int>(7, 'hobbyIds', $pb.PbFieldType.P3)
    ..p<$core.int>(8, 'skillIds', $pb.PbFieldType.P3)
    ..aOS(9, 'smsCode')
    ..aOS(10, 'deviceId')
    ..aOS(11, 'openId')
    ..a<$core.int>(12, 'country', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserRegisterReq._() : super();
  factory UserRegisterReq() => create();
  factory UserRegisterReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserRegisterReq clone() => UserRegisterReq()..mergeFromMessage(this);
  UserRegisterReq copyWith(void Function(UserRegisterReq) updates) => super.copyWith((message) => updates(message as UserRegisterReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRegisterReq create() => UserRegisterReq._();
  UserRegisterReq createEmptyInstance() => create();
  static $pb.PbList<UserRegisterReq> createRepeated() => $pb.PbList<UserRegisterReq>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterReq>(create);
  static UserRegisterReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get gender => $_getSZ(2);
  @$pb.TagNumber(3)
  set gender($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGender() => $_has(2);
  @$pb.TagNumber(3)
  void clearGender() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatar => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatar($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatar() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatar() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get birth => $_getSZ(4);
  @$pb.TagNumber(5)
  set birth($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBirth() => $_has(4);
  @$pb.TagNumber(5)
  void clearBirth() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get invitedCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set invitedCode($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInvitedCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearInvitedCode() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get hobbyIds => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.int> get skillIds => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get smsCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set smsCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSmsCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearSmsCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get deviceId => $_getSZ(9);
  @$pb.TagNumber(10)
  set deviceId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDeviceId() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeviceId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get openId => $_getSZ(10);
  @$pb.TagNumber(11)
  set openId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOpenId() => $_has(10);
  @$pb.TagNumber(11)
  void clearOpenId() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get country => $_getIZ(11);
  @$pb.TagNumber(12)
  set country($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCountry() => $_has(11);
  @$pb.TagNumber(12)
  void clearCountry() => clearField(12);
}

class UserRegisterResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserRegisterResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<UserRegisterResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: UserRegisterResp_STATUS.OK, valueOf: UserRegisterResp_STATUS.valueOf, enumValues: UserRegisterResp_STATUS.values)
    ..aOM<UserInfoBrief>(2, 'user', subBuilder: UserInfoBrief.create)
    ..aOS(3, 'token')
    ..hasRequiredFields = false
  ;

  UserRegisterResp._() : super();
  factory UserRegisterResp() => create();
  factory UserRegisterResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserRegisterResp clone() => UserRegisterResp()..mergeFromMessage(this);
  UserRegisterResp copyWith(void Function(UserRegisterResp) updates) => super.copyWith((message) => updates(message as UserRegisterResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRegisterResp create() => UserRegisterResp._();
  UserRegisterResp createEmptyInstance() => create();
  static $pb.PbList<UserRegisterResp> createRepeated() => $pb.PbList<UserRegisterResp>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterResp>(create);
  static UserRegisterResp _defaultInstance;

  @$pb.TagNumber(1)
  UserRegisterResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(UserRegisterResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  UserInfoBrief get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(UserInfoBrief v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  UserInfoBrief ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class BanbanListReq_Filter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BanbanListReq.Filter', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'field')
    ..aOS(2, 'value')
    ..hasRequiredFields = false
  ;

  BanbanListReq_Filter._() : super();
  factory BanbanListReq_Filter() => create();
  factory BanbanListReq_Filter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanbanListReq_Filter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BanbanListReq_Filter clone() => BanbanListReq_Filter()..mergeFromMessage(this);
  BanbanListReq_Filter copyWith(void Function(BanbanListReq_Filter) updates) => super.copyWith((message) => updates(message as BanbanListReq_Filter));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BanbanListReq_Filter create() => BanbanListReq_Filter._();
  BanbanListReq_Filter createEmptyInstance() => create();
  static $pb.PbList<BanbanListReq_Filter> createRepeated() => $pb.PbList<BanbanListReq_Filter>();
  @$core.pragma('dart2js:noInline')
  static BanbanListReq_Filter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanbanListReq_Filter>(create);
  static BanbanListReq_Filter _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get field_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set field_1($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasField_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearField_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class BanbanListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BanbanListReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..a<$core.int>(2, 'pageNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'numPerPage', $pb.PbFieldType.O3)
    ..pc<BanbanListReq_Filter>(4, 'filters', $pb.PbFieldType.PM, subBuilder: BanbanListReq_Filter.create)
    ..aOS(5, 'orderBy')
    ..aOB(6, 'desc')
    ..hasRequiredFields = false
  ;

  BanbanListReq._() : super();
  factory BanbanListReq() => create();
  factory BanbanListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanbanListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BanbanListReq clone() => BanbanListReq()..mergeFromMessage(this);
  BanbanListReq copyWith(void Function(BanbanListReq) updates) => super.copyWith((message) => updates(message as BanbanListReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BanbanListReq create() => BanbanListReq._();
  BanbanListReq createEmptyInstance() => create();
  static $pb.PbList<BanbanListReq> createRepeated() => $pb.PbList<BanbanListReq>();
  @$core.pragma('dart2js:noInline')
  static BanbanListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanbanListReq>(create);
  static BanbanListReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numPerPage => $_getIZ(2);
  @$pb.TagNumber(3)
  set numPerPage($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumPerPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumPerPage() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<BanbanListReq_Filter> get filters => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get orderBy => $_getSZ(4);
  @$pb.TagNumber(5)
  set orderBy($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrderBy() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrderBy() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get desc => $_getBF(5);
  @$pb.TagNumber(6)
  set desc($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDesc() => $_has(5);
  @$pb.TagNumber(6)
  void clearDesc() => clearField(6);
}

class BanBanListResp_VoiceCharacter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BanBanListResp.VoiceCharacter', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'avatar')
    ..aOS(4, 'skill')
    ..aOS(5, 'declaration')
    ..aOS(6, 'lastLogin')
    ..aOB(7, 'online')
    ..aOB(8, 'chating')
    ..aOB(9, 'freshMan')
    ..aOS(10, 'location')
    ..a<$core.int>(11, 'noble', $pb.PbFieldType.O3)
    ..aOS(12, 'gender')
    ..a<$core.int>(13, 'age', $pb.PbFieldType.O3)
    ..aOS(14, 'audio')
    ..a<$core.int>(15, 'audioDuration', $pb.PbFieldType.O3)
    ..aOS(16, 'nobleName')
    ..a<$core.int>(17, 'vip', $pb.PbFieldType.O3)
    ..aOS(18, 'vipStr')
    ..aOS(19, 'skillCategory')
    ..aOS(20, 'chatroomId')
    ..a<$core.int>(21, 'fans', $pb.PbFieldType.O3)
    ..a<$core.int>(22, 'follows', $pb.PbFieldType.O3)
    ..a<$core.int>(23, 'banbanGrade', $pb.PbFieldType.O3)
    ..aOS(24, 'greatNum')
    ..aOS(25, 'roomTitle')
    ..aOS(26, 'celebrity')
    ..aOS(27, 'roomCategory')
    ..hasRequiredFields = false
  ;

  BanBanListResp_VoiceCharacter._() : super();
  factory BanBanListResp_VoiceCharacter() => create();
  factory BanBanListResp_VoiceCharacter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanBanListResp_VoiceCharacter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BanBanListResp_VoiceCharacter clone() => BanBanListResp_VoiceCharacter()..mergeFromMessage(this);
  BanBanListResp_VoiceCharacter copyWith(void Function(BanBanListResp_VoiceCharacter) updates) => super.copyWith((message) => updates(message as BanBanListResp_VoiceCharacter));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BanBanListResp_VoiceCharacter create() => BanBanListResp_VoiceCharacter._();
  BanBanListResp_VoiceCharacter createEmptyInstance() => create();
  static $pb.PbList<BanBanListResp_VoiceCharacter> createRepeated() => $pb.PbList<BanBanListResp_VoiceCharacter>();
  @$core.pragma('dart2js:noInline')
  static BanBanListResp_VoiceCharacter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanBanListResp_VoiceCharacter>(create);
  static BanBanListResp_VoiceCharacter _defaultInstance;

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
  $core.String get skill => $_getSZ(3);
  @$pb.TagNumber(4)
  set skill($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSkill() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkill() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get declaration => $_getSZ(4);
  @$pb.TagNumber(5)
  set declaration($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeclaration() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeclaration() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastLogin => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastLogin($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastLogin() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastLogin() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get online => $_getBF(6);
  @$pb.TagNumber(7)
  set online($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOnline() => $_has(6);
  @$pb.TagNumber(7)
  void clearOnline() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get chating => $_getBF(7);
  @$pb.TagNumber(8)
  set chating($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasChating() => $_has(7);
  @$pb.TagNumber(8)
  void clearChating() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get freshMan => $_getBF(8);
  @$pb.TagNumber(9)
  set freshMan($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFreshMan() => $_has(8);
  @$pb.TagNumber(9)
  void clearFreshMan() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get location => $_getSZ(9);
  @$pb.TagNumber(10)
  set location($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLocation() => $_has(9);
  @$pb.TagNumber(10)
  void clearLocation() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get noble => $_getIZ(10);
  @$pb.TagNumber(11)
  set noble($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNoble() => $_has(10);
  @$pb.TagNumber(11)
  void clearNoble() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get gender => $_getSZ(11);
  @$pb.TagNumber(12)
  set gender($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasGender() => $_has(11);
  @$pb.TagNumber(12)
  void clearGender() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get age => $_getIZ(12);
  @$pb.TagNumber(13)
  set age($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAge() => $_has(12);
  @$pb.TagNumber(13)
  void clearAge() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get audio => $_getSZ(13);
  @$pb.TagNumber(14)
  set audio($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasAudio() => $_has(13);
  @$pb.TagNumber(14)
  void clearAudio() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get audioDuration => $_getIZ(14);
  @$pb.TagNumber(15)
  set audioDuration($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasAudioDuration() => $_has(14);
  @$pb.TagNumber(15)
  void clearAudioDuration() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get nobleName => $_getSZ(15);
  @$pb.TagNumber(16)
  set nobleName($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasNobleName() => $_has(15);
  @$pb.TagNumber(16)
  void clearNobleName() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get vip => $_getIZ(16);
  @$pb.TagNumber(17)
  set vip($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasVip() => $_has(16);
  @$pb.TagNumber(17)
  void clearVip() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get vipStr => $_getSZ(17);
  @$pb.TagNumber(18)
  set vipStr($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasVipStr() => $_has(17);
  @$pb.TagNumber(18)
  void clearVipStr() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get skillCategory => $_getSZ(18);
  @$pb.TagNumber(19)
  set skillCategory($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasSkillCategory() => $_has(18);
  @$pb.TagNumber(19)
  void clearSkillCategory() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get chatroomId => $_getSZ(19);
  @$pb.TagNumber(20)
  set chatroomId($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasChatroomId() => $_has(19);
  @$pb.TagNumber(20)
  void clearChatroomId() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get fans => $_getIZ(20);
  @$pb.TagNumber(21)
  set fans($core.int v) { $_setSignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasFans() => $_has(20);
  @$pb.TagNumber(21)
  void clearFans() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get follows => $_getIZ(21);
  @$pb.TagNumber(22)
  set follows($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasFollows() => $_has(21);
  @$pb.TagNumber(22)
  void clearFollows() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get banbanGrade => $_getIZ(22);
  @$pb.TagNumber(23)
  set banbanGrade($core.int v) { $_setSignedInt32(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasBanbanGrade() => $_has(22);
  @$pb.TagNumber(23)
  void clearBanbanGrade() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get greatNum => $_getSZ(23);
  @$pb.TagNumber(24)
  set greatNum($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasGreatNum() => $_has(23);
  @$pb.TagNumber(24)
  void clearGreatNum() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get roomTitle => $_getSZ(24);
  @$pb.TagNumber(25)
  set roomTitle($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasRoomTitle() => $_has(24);
  @$pb.TagNumber(25)
  void clearRoomTitle() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get celebrity => $_getSZ(25);
  @$pb.TagNumber(26)
  set celebrity($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasCelebrity() => $_has(25);
  @$pb.TagNumber(26)
  void clearCelebrity() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get roomCategory => $_getSZ(26);
  @$pb.TagNumber(27)
  set roomCategory($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasRoomCategory() => $_has(26);
  @$pb.TagNumber(27)
  void clearRoomCategory() => clearField(27);
}

class BanBanListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BanBanListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<BanBanListResp_VoiceCharacter>(1, 'banbans', $pb.PbFieldType.PM, subBuilder: BanBanListResp_VoiceCharacter.create)
    ..hasRequiredFields = false
  ;

  BanBanListResp._() : super();
  factory BanBanListResp() => create();
  factory BanBanListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanBanListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BanBanListResp clone() => BanBanListResp()..mergeFromMessage(this);
  BanBanListResp copyWith(void Function(BanBanListResp) updates) => super.copyWith((message) => updates(message as BanBanListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BanBanListResp create() => BanBanListResp._();
  BanBanListResp createEmptyInstance() => create();
  static $pb.PbList<BanBanListResp> createRepeated() => $pb.PbList<BanBanListResp>();
  @$core.pragma('dart2js:noInline')
  static BanBanListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanBanListResp>(create);
  static BanBanListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BanBanListResp_VoiceCharacter> get banbans => $_getList(0);
}

class SearchReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'keyword')
    ..a<$core.int>(2, 'pageNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'numPerPage', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SearchReq._() : super();
  factory SearchReq() => create();
  factory SearchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchReq clone() => SearchReq()..mergeFromMessage(this);
  SearchReq copyWith(void Function(SearchReq) updates) => super.copyWith((message) => updates(message as SearchReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchReq create() => SearchReq._();
  SearchReq createEmptyInstance() => create();
  static $pb.PbList<SearchReq> createRepeated() => $pb.PbList<SearchReq>();
  @$core.pragma('dart2js:noInline')
  static SearchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchReq>(create);
  static SearchReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numPerPage => $_getIZ(2);
  @$pb.TagNumber(3)
  set numPerPage($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumPerPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumPerPage() => clearField(3);
}

class SearchResp_SkillInfoBrief extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchResp.SkillInfoBrief', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'iconUrl')
    ..aOS(3, 'category')
    ..hasRequiredFields = false
  ;

  SearchResp_SkillInfoBrief._() : super();
  factory SearchResp_SkillInfoBrief() => create();
  factory SearchResp_SkillInfoBrief.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchResp_SkillInfoBrief.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchResp_SkillInfoBrief clone() => SearchResp_SkillInfoBrief()..mergeFromMessage(this);
  SearchResp_SkillInfoBrief copyWith(void Function(SearchResp_SkillInfoBrief) updates) => super.copyWith((message) => updates(message as SearchResp_SkillInfoBrief));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchResp_SkillInfoBrief create() => SearchResp_SkillInfoBrief._();
  SearchResp_SkillInfoBrief createEmptyInstance() => create();
  static $pb.PbList<SearchResp_SkillInfoBrief> createRepeated() => $pb.PbList<SearchResp_SkillInfoBrief>();
  @$core.pragma('dart2js:noInline')
  static SearchResp_SkillInfoBrief getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchResp_SkillInfoBrief>(create);
  static SearchResp_SkillInfoBrief _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get iconUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set iconUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIconUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearIconUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get category => $_getSZ(2);
  @$pb.TagNumber(3)
  set category($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);
}

class SearchResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..pc<SearchResp_SkillInfoBrief>(2, 'skills', $pb.PbFieldType.PM, subBuilder: SearchResp_SkillInfoBrief.create)
    ..pc<UserInfoBrief>(3, 'users', $pb.PbFieldType.PM, subBuilder: UserInfoBrief.create)
    ..hasRequiredFields = false
  ;

  SearchResp._() : super();
  factory SearchResp() => create();
  factory SearchResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchResp clone() => SearchResp()..mergeFromMessage(this);
  SearchResp copyWith(void Function(SearchResp) updates) => super.copyWith((message) => updates(message as SearchResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchResp create() => SearchResp._();
  SearchResp createEmptyInstance() => create();
  static $pb.PbList<SearchResp> createRepeated() => $pb.PbList<SearchResp>();
  @$core.pragma('dart2js:noInline')
  static SearchResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchResp>(create);
  static SearchResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<SearchResp_SkillInfoBrief> get skills => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<UserInfoBrief> get users => $_getList(2);
}

class UserOverviewReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserOverviewReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'dstUid')
    ..aOS(2, 'srcUid')
    ..aOS(3, 'token')
    ..hasRequiredFields = false
  ;

  UserOverviewReq._() : super();
  factory UserOverviewReq() => create();
  factory UserOverviewReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserOverviewReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserOverviewReq clone() => UserOverviewReq()..mergeFromMessage(this);
  UserOverviewReq copyWith(void Function(UserOverviewReq) updates) => super.copyWith((message) => updates(message as UserOverviewReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserOverviewReq create() => UserOverviewReq._();
  UserOverviewReq createEmptyInstance() => create();
  static $pb.PbList<UserOverviewReq> createRepeated() => $pb.PbList<UserOverviewReq>();
  @$core.pragma('dart2js:noInline')
  static UserOverviewReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserOverviewReq>(create);
  static UserOverviewReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dstUid => $_getSZ(0);
  @$pb.TagNumber(1)
  set dstUid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDstUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDstUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get srcUid => $_getSZ(1);
  @$pb.TagNumber(2)
  set srcUid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrcUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrcUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class UserOverviewResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserOverviewResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<UserOverviewResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: UserOverviewResp_STATUS.OK, valueOf: UserOverviewResp_STATUS.valueOf, enumValues: UserOverviewResp_STATUS.values)
    ..aOM<UserInfoBrief>(2, 'user', subBuilder: UserInfoBrief.create)
    ..aOB(3, 'followed')
    ..hasRequiredFields = false
  ;

  UserOverviewResp._() : super();
  factory UserOverviewResp() => create();
  factory UserOverviewResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserOverviewResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserOverviewResp clone() => UserOverviewResp()..mergeFromMessage(this);
  UserOverviewResp copyWith(void Function(UserOverviewResp) updates) => super.copyWith((message) => updates(message as UserOverviewResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserOverviewResp create() => UserOverviewResp._();
  UserOverviewResp createEmptyInstance() => create();
  static $pb.PbList<UserOverviewResp> createRepeated() => $pb.PbList<UserOverviewResp>();
  @$core.pragma('dart2js:noInline')
  static UserOverviewResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserOverviewResp>(create);
  static UserOverviewResp _defaultInstance;

  @$pb.TagNumber(1)
  UserOverviewResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(UserOverviewResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  UserInfoBrief get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(UserInfoBrief v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  UserInfoBrief ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get followed => $_getBF(2);
  @$pb.TagNumber(3)
  set followed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFollowed() => $_has(2);
  @$pb.TagNumber(3)
  void clearFollowed() => clearField(3);
}

class LoginReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'phone')
    ..aOS(2, 'smsCode')
    ..aOS(3, 'userId')
    ..aOS(4, 'openId')
    ..a<$core.int>(5, 'country', $pb.PbFieldType.O3)
    ..aOS(6, 'deviceId')
    ..hasRequiredFields = false
  ;

  LoginReq._() : super();
  factory LoginReq() => create();
  factory LoginReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginReq clone() => LoginReq()..mergeFromMessage(this);
  LoginReq copyWith(void Function(LoginReq) updates) => super.copyWith((message) => updates(message as LoginReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginReq create() => LoginReq._();
  LoginReq createEmptyInstance() => create();
  static $pb.PbList<LoginReq> createRepeated() => $pb.PbList<LoginReq>();
  @$core.pragma('dart2js:noInline')
  static LoginReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginReq>(create);
  static LoginReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get smsCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set smsCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSmsCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearSmsCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userId => $_getSZ(2);
  @$pb.TagNumber(3)
  set userId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get openId => $_getSZ(3);
  @$pb.TagNumber(4)
  set openId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOpenId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpenId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get country => $_getIZ(4);
  @$pb.TagNumber(5)
  set country($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCountry() => $_has(4);
  @$pb.TagNumber(5)
  void clearCountry() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get deviceId => $_getSZ(5);
  @$pb.TagNumber(6)
  set deviceId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeviceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceId() => clearField(6);
}

class LoginResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<LoginResp_STATUS>(1, 'code', $pb.PbFieldType.OE, defaultOrMaker: LoginResp_STATUS.OK, valueOf: LoginResp_STATUS.valueOf, enumValues: LoginResp_STATUS.values)
    ..aOS(2, 'uid')
    ..aOS(3, 'phone')
    ..aOS(4, 'nickName')
    ..aOS(5, 'avatar')
    ..aOS(6, 'token')
    ..aOM<UserInfoBrief>(7, 'user', subBuilder: UserInfoBrief.create)
    ..hasRequiredFields = false
  ;

  LoginResp._() : super();
  factory LoginResp() => create();
  factory LoginResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginResp clone() => LoginResp()..mergeFromMessage(this);
  LoginResp copyWith(void Function(LoginResp) updates) => super.copyWith((message) => updates(message as LoginResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResp create() => LoginResp._();
  LoginResp createEmptyInstance() => create();
  static $pb.PbList<LoginResp> createRepeated() => $pb.PbList<LoginResp>();
  @$core.pragma('dart2js:noInline')
  static LoginResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResp>(create);
  static LoginResp _defaultInstance;

  @$pb.TagNumber(1)
  LoginResp_STATUS get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(LoginResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phone => $_getSZ(2);
  @$pb.TagNumber(3)
  set phone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhone() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nickName => $_getSZ(3);
  @$pb.TagNumber(4)
  set nickName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNickName() => $_has(3);
  @$pb.TagNumber(4)
  void clearNickName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get token => $_getSZ(5);
  @$pb.TagNumber(6)
  set token($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasToken() => $_has(5);
  @$pb.TagNumber(6)
  void clearToken() => clearField(6);

  @$pb.TagNumber(7)
  UserInfoBrief get user => $_getN(6);
  @$pb.TagNumber(7)
  set user(UserInfoBrief v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUser() => $_has(6);
  @$pb.TagNumber(7)
  void clearUser() => clearField(7);
  @$pb.TagNumber(7)
  UserInfoBrief ensureUser() => $_ensure(6);
}

class HomePageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HomePageReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'tgtUid')
    ..aOS(2, 'srcUid')
    ..hasRequiredFields = false
  ;

  HomePageReq._() : super();
  factory HomePageReq() => create();
  factory HomePageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HomePageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HomePageReq clone() => HomePageReq()..mergeFromMessage(this);
  HomePageReq copyWith(void Function(HomePageReq) updates) => super.copyWith((message) => updates(message as HomePageReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HomePageReq create() => HomePageReq._();
  HomePageReq createEmptyInstance() => create();
  static $pb.PbList<HomePageReq> createRepeated() => $pb.PbList<HomePageReq>();
  @$core.pragma('dart2js:noInline')
  static HomePageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomePageReq>(create);
  static HomePageReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tgtUid => $_getSZ(0);
  @$pb.TagNumber(1)
  set tgtUid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTgtUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTgtUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get srcUid => $_getSZ(1);
  @$pb.TagNumber(2)
  set srcUid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrcUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrcUid() => clearField(2);
}

class HomePageResp_Personal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HomePageResp.Personal', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'gender')
    ..a<$core.int>(4, 'age', $pb.PbFieldType.O3)
    ..aOS(5, 'star')
    ..aOS(6, 'career')
    ..aOS(7, 'declaration')
    ..aOS(8, 'lastLogin')
    ..a<$core.int>(9, 'fans', $pb.PbFieldType.O3)
    ..pPS(10, 'imgUrls')
    ..aOS(11, 'avatar')
    ..aOS(13, 'audio')
    ..a<$core.int>(14, 'audioDuration', $pb.PbFieldType.O3)
    ..a<$core.int>(15, 'noble', $pb.PbFieldType.O3)
    ..aOS(16, 'birth')
    ..aOS(17, 'location')
    ..aOS(18, 'online')
    ..a<$core.int>(19, 'vip', $pb.PbFieldType.O3)
    ..a<$core.int>(20, 'follows', $pb.PbFieldType.O3)
    ..aOS(21, 'roomId')
    ..a<$core.int>(22, 'banbanGrade', $pb.PbFieldType.O3)
    ..aOS(23, 'greatNum')
    ..a<$core.int>(24, 'yesterdayFans', $pb.PbFieldType.O3)
    ..aOS(25, 'roomTitle')
    ..aOS(26, 'celebrity')
    ..hasRequiredFields = false
  ;

  HomePageResp_Personal._() : super();
  factory HomePageResp_Personal() => create();
  factory HomePageResp_Personal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HomePageResp_Personal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HomePageResp_Personal clone() => HomePageResp_Personal()..mergeFromMessage(this);
  HomePageResp_Personal copyWith(void Function(HomePageResp_Personal) updates) => super.copyWith((message) => updates(message as HomePageResp_Personal));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HomePageResp_Personal create() => HomePageResp_Personal._();
  HomePageResp_Personal createEmptyInstance() => create();
  static $pb.PbList<HomePageResp_Personal> createRepeated() => $pb.PbList<HomePageResp_Personal>();
  @$core.pragma('dart2js:noInline')
  static HomePageResp_Personal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomePageResp_Personal>(create);
  static HomePageResp_Personal _defaultInstance;

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
  $core.String get gender => $_getSZ(2);
  @$pb.TagNumber(3)
  set gender($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGender() => $_has(2);
  @$pb.TagNumber(3)
  void clearGender() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get age => $_getIZ(3);
  @$pb.TagNumber(4)
  set age($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAge() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get star => $_getSZ(4);
  @$pb.TagNumber(5)
  set star($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStar() => $_has(4);
  @$pb.TagNumber(5)
  void clearStar() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get career => $_getSZ(5);
  @$pb.TagNumber(6)
  set career($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCareer() => $_has(5);
  @$pb.TagNumber(6)
  void clearCareer() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get declaration => $_getSZ(6);
  @$pb.TagNumber(7)
  set declaration($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeclaration() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeclaration() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastLogin => $_getSZ(7);
  @$pb.TagNumber(8)
  set lastLogin($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastLogin() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastLogin() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get fans => $_getIZ(8);
  @$pb.TagNumber(9)
  set fans($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFans() => $_has(8);
  @$pb.TagNumber(9)
  void clearFans() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.String> get imgUrls => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get avatar => $_getSZ(10);
  @$pb.TagNumber(11)
  set avatar($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAvatar() => $_has(10);
  @$pb.TagNumber(11)
  void clearAvatar() => clearField(11);

  @$pb.TagNumber(13)
  $core.String get audio => $_getSZ(11);
  @$pb.TagNumber(13)
  set audio($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasAudio() => $_has(11);
  @$pb.TagNumber(13)
  void clearAudio() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get audioDuration => $_getIZ(12);
  @$pb.TagNumber(14)
  set audioDuration($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasAudioDuration() => $_has(12);
  @$pb.TagNumber(14)
  void clearAudioDuration() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get noble => $_getIZ(13);
  @$pb.TagNumber(15)
  set noble($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasNoble() => $_has(13);
  @$pb.TagNumber(15)
  void clearNoble() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get birth => $_getSZ(14);
  @$pb.TagNumber(16)
  set birth($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasBirth() => $_has(14);
  @$pb.TagNumber(16)
  void clearBirth() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get location => $_getSZ(15);
  @$pb.TagNumber(17)
  set location($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(17)
  $core.bool hasLocation() => $_has(15);
  @$pb.TagNumber(17)
  void clearLocation() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get online => $_getSZ(16);
  @$pb.TagNumber(18)
  set online($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(18)
  $core.bool hasOnline() => $_has(16);
  @$pb.TagNumber(18)
  void clearOnline() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get vip => $_getIZ(17);
  @$pb.TagNumber(19)
  set vip($core.int v) { $_setSignedInt32(17, v); }
  @$pb.TagNumber(19)
  $core.bool hasVip() => $_has(17);
  @$pb.TagNumber(19)
  void clearVip() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get follows => $_getIZ(18);
  @$pb.TagNumber(20)
  set follows($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(20)
  $core.bool hasFollows() => $_has(18);
  @$pb.TagNumber(20)
  void clearFollows() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get roomId => $_getSZ(19);
  @$pb.TagNumber(21)
  set roomId($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(21)
  $core.bool hasRoomId() => $_has(19);
  @$pb.TagNumber(21)
  void clearRoomId() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get banbanGrade => $_getIZ(20);
  @$pb.TagNumber(22)
  set banbanGrade($core.int v) { $_setSignedInt32(20, v); }
  @$pb.TagNumber(22)
  $core.bool hasBanbanGrade() => $_has(20);
  @$pb.TagNumber(22)
  void clearBanbanGrade() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get greatNum => $_getSZ(21);
  @$pb.TagNumber(23)
  set greatNum($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(23)
  $core.bool hasGreatNum() => $_has(21);
  @$pb.TagNumber(23)
  void clearGreatNum() => clearField(23);

  @$pb.TagNumber(24)
  $core.int get yesterdayFans => $_getIZ(22);
  @$pb.TagNumber(24)
  set yesterdayFans($core.int v) { $_setSignedInt32(22, v); }
  @$pb.TagNumber(24)
  $core.bool hasYesterdayFans() => $_has(22);
  @$pb.TagNumber(24)
  void clearYesterdayFans() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get roomTitle => $_getSZ(23);
  @$pb.TagNumber(25)
  set roomTitle($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(25)
  $core.bool hasRoomTitle() => $_has(23);
  @$pb.TagNumber(25)
  void clearRoomTitle() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get celebrity => $_getSZ(24);
  @$pb.TagNumber(26)
  set celebrity($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(26)
  $core.bool hasCelebrity() => $_has(24);
  @$pb.TagNumber(26)
  void clearCelebrity() => clearField(26);
}

class HomePageResp_Gift extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HomePageResp.Gift', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'icon')
    ..a<$core.int>(3, 'amount', $pb.PbFieldType.O3)
    ..aOS(4, 'title')
    ..aOS(5, 'badge')
    ..hasRequiredFields = false
  ;

  HomePageResp_Gift._() : super();
  factory HomePageResp_Gift() => create();
  factory HomePageResp_Gift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HomePageResp_Gift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HomePageResp_Gift clone() => HomePageResp_Gift()..mergeFromMessage(this);
  HomePageResp_Gift copyWith(void Function(HomePageResp_Gift) updates) => super.copyWith((message) => updates(message as HomePageResp_Gift));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HomePageResp_Gift create() => HomePageResp_Gift._();
  HomePageResp_Gift createEmptyInstance() => create();
  static $pb.PbList<HomePageResp_Gift> createRepeated() => $pb.PbList<HomePageResp_Gift>();
  @$core.pragma('dart2js:noInline')
  static HomePageResp_Gift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomePageResp_Gift>(create);
  static HomePageResp_Gift _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get badge => $_getSZ(4);
  @$pb.TagNumber(5)
  set badge($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBadge() => $_has(4);
  @$pb.TagNumber(5)
  void clearBadge() => clearField(5);
}

class HomePageResp_Interest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HomePageResp.Interest', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'skillId')
    ..aOS(2, 'title')
    ..hasRequiredFields = false
  ;

  HomePageResp_Interest._() : super();
  factory HomePageResp_Interest() => create();
  factory HomePageResp_Interest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HomePageResp_Interest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HomePageResp_Interest clone() => HomePageResp_Interest()..mergeFromMessage(this);
  HomePageResp_Interest copyWith(void Function(HomePageResp_Interest) updates) => super.copyWith((message) => updates(message as HomePageResp_Interest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HomePageResp_Interest create() => HomePageResp_Interest._();
  HomePageResp_Interest createEmptyInstance() => create();
  static $pb.PbList<HomePageResp_Interest> createRepeated() => $pb.PbList<HomePageResp_Interest>();
  @$core.pragma('dart2js:noInline')
  static HomePageResp_Interest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomePageResp_Interest>(create);
  static HomePageResp_Interest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get skillId => $_getSZ(0);
  @$pb.TagNumber(1)
  set skillId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkillId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkillId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

class HomePageResp_Skill extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HomePageResp.Skill', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'skillId', $pb.PbFieldType.O3)
    ..aOS(2, 'description')
    ..a<$core.int>(3, 'priority', $pb.PbFieldType.O3)
    ..aOS(4, 'grade')
    ..aOS(5, 'imgUrl')
    ..aOS(6, 'audioUrl')
    ..aOS(7, 'skillIcon')
    ..aOS(8, 'skillTitle')
    ..hasRequiredFields = false
  ;

  HomePageResp_Skill._() : super();
  factory HomePageResp_Skill() => create();
  factory HomePageResp_Skill.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HomePageResp_Skill.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HomePageResp_Skill clone() => HomePageResp_Skill()..mergeFromMessage(this);
  HomePageResp_Skill copyWith(void Function(HomePageResp_Skill) updates) => super.copyWith((message) => updates(message as HomePageResp_Skill));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HomePageResp_Skill create() => HomePageResp_Skill._();
  HomePageResp_Skill createEmptyInstance() => create();
  static $pb.PbList<HomePageResp_Skill> createRepeated() => $pb.PbList<HomePageResp_Skill>();
  @$core.pragma('dart2js:noInline')
  static HomePageResp_Skill getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomePageResp_Skill>(create);
  static HomePageResp_Skill _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get skillId => $_getIZ(0);
  @$pb.TagNumber(1)
  set skillId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkillId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkillId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get priority => $_getIZ(2);
  @$pb.TagNumber(3)
  set priority($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPriority() => $_has(2);
  @$pb.TagNumber(3)
  void clearPriority() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get grade => $_getSZ(3);
  @$pb.TagNumber(4)
  set grade($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGrade() => $_has(3);
  @$pb.TagNumber(4)
  void clearGrade() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get imgUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set imgUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImgUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearImgUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get audioUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set audioUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAudioUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearAudioUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get skillIcon => $_getSZ(6);
  @$pb.TagNumber(7)
  set skillIcon($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSkillIcon() => $_has(6);
  @$pb.TagNumber(7)
  void clearSkillIcon() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get skillTitle => $_getSZ(7);
  @$pb.TagNumber(8)
  set skillTitle($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSkillTitle() => $_has(7);
  @$pb.TagNumber(8)
  void clearSkillTitle() => clearField(8);
}

class HomePageResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HomePageResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOM<HomePageResp_Personal>(1, 'personal', subBuilder: HomePageResp_Personal.create)
    ..a<$core.int>(4, 'totalGift', $pb.PbFieldType.O3)
    ..pc<HomePageResp_Gift>(5, 'gifts', $pb.PbFieldType.PM, subBuilder: HomePageResp_Gift.create)
    ..pc<HomePageResp_Skill>(6, 'skills', $pb.PbFieldType.PM, subBuilder: HomePageResp_Skill.create)
    ..pc<HomePageResp_Interest>(8, 'interests', $pb.PbFieldType.PM, subBuilder: HomePageResp_Interest.create)
    ..a<$core.int>(10, 'totalCpNum', $pb.PbFieldType.O3)
    ..aOB(11, 'followed')
    ..p<$core.int>(12, 'hobby', $pb.PbFieldType.P3)
    ..p<$core.int>(13, 'showIds', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  HomePageResp._() : super();
  factory HomePageResp() => create();
  factory HomePageResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HomePageResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HomePageResp clone() => HomePageResp()..mergeFromMessage(this);
  HomePageResp copyWith(void Function(HomePageResp) updates) => super.copyWith((message) => updates(message as HomePageResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HomePageResp create() => HomePageResp._();
  HomePageResp createEmptyInstance() => create();
  static $pb.PbList<HomePageResp> createRepeated() => $pb.PbList<HomePageResp>();
  @$core.pragma('dart2js:noInline')
  static HomePageResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomePageResp>(create);
  static HomePageResp _defaultInstance;

  @$pb.TagNumber(1)
  HomePageResp_Personal get personal => $_getN(0);
  @$pb.TagNumber(1)
  set personal(HomePageResp_Personal v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPersonal() => $_has(0);
  @$pb.TagNumber(1)
  void clearPersonal() => clearField(1);
  @$pb.TagNumber(1)
  HomePageResp_Personal ensurePersonal() => $_ensure(0);

  @$pb.TagNumber(4)
  $core.int get totalGift => $_getIZ(1);
  @$pb.TagNumber(4)
  set totalGift($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalGift() => $_has(1);
  @$pb.TagNumber(4)
  void clearTotalGift() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<HomePageResp_Gift> get gifts => $_getList(2);

  @$pb.TagNumber(6)
  $core.List<HomePageResp_Skill> get skills => $_getList(3);

  @$pb.TagNumber(8)
  $core.List<HomePageResp_Interest> get interests => $_getList(4);

  @$pb.TagNumber(10)
  $core.int get totalCpNum => $_getIZ(5);
  @$pb.TagNumber(10)
  set totalCpNum($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasTotalCpNum() => $_has(5);
  @$pb.TagNumber(10)
  void clearTotalCpNum() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get followed => $_getBF(6);
  @$pb.TagNumber(11)
  set followed($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(11)
  $core.bool hasFollowed() => $_has(6);
  @$pb.TagNumber(11)
  void clearFollowed() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get hobby => $_getList(7);

  @$pb.TagNumber(13)
  $core.List<$core.int> get showIds => $_getList(8);
}

class UserSkillsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserSkillsReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  UserSkillsReq._() : super();
  factory UserSkillsReq() => create();
  factory UserSkillsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSkillsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserSkillsReq clone() => UserSkillsReq()..mergeFromMessage(this);
  UserSkillsReq copyWith(void Function(UserSkillsReq) updates) => super.copyWith((message) => updates(message as UserSkillsReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserSkillsReq create() => UserSkillsReq._();
  UserSkillsReq createEmptyInstance() => create();
  static $pb.PbList<UserSkillsReq> createRepeated() => $pb.PbList<UserSkillsReq>();
  @$core.pragma('dart2js:noInline')
  static UserSkillsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSkillsReq>(create);
  static UserSkillsReq _defaultInstance;

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

class UserSkillsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserSkillsResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<HomePageResp_Skill>(1, 'skills', $pb.PbFieldType.PM, subBuilder: HomePageResp_Skill.create)
    ..hasRequiredFields = false
  ;

  UserSkillsResp._() : super();
  factory UserSkillsResp() => create();
  factory UserSkillsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSkillsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserSkillsResp clone() => UserSkillsResp()..mergeFromMessage(this);
  UserSkillsResp copyWith(void Function(UserSkillsResp) updates) => super.copyWith((message) => updates(message as UserSkillsResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserSkillsResp create() => UserSkillsResp._();
  UserSkillsResp createEmptyInstance() => create();
  static $pb.PbList<UserSkillsResp> createRepeated() => $pb.PbList<UserSkillsResp>();
  @$core.pragma('dart2js:noInline')
  static UserSkillsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSkillsResp>(create);
  static UserSkillsResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HomePageResp_Skill> get skills => $_getList(0);
}

class LocationUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LocationUpdateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'location')
    ..aOB(4, 'hideLocation')
    ..hasRequiredFields = false
  ;

  LocationUpdateReq._() : super();
  factory LocationUpdateReq() => create();
  factory LocationUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LocationUpdateReq clone() => LocationUpdateReq()..mergeFromMessage(this);
  LocationUpdateReq copyWith(void Function(LocationUpdateReq) updates) => super.copyWith((message) => updates(message as LocationUpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationUpdateReq create() => LocationUpdateReq._();
  LocationUpdateReq createEmptyInstance() => create();
  static $pb.PbList<LocationUpdateReq> createRepeated() => $pb.PbList<LocationUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static LocationUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationUpdateReq>(create);
  static LocationUpdateReq _defaultInstance;

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
  $core.String get location => $_getSZ(2);
  @$pb.TagNumber(3)
  set location($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get hideLocation => $_getBF(3);
  @$pb.TagNumber(4)
  set hideLocation($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHideLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearHideLocation() => clearField(4);
}

class LocationUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LocationUpdateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  LocationUpdateResp._() : super();
  factory LocationUpdateResp() => create();
  factory LocationUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LocationUpdateResp clone() => LocationUpdateResp()..mergeFromMessage(this);
  LocationUpdateResp copyWith(void Function(LocationUpdateResp) updates) => super.copyWith((message) => updates(message as LocationUpdateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationUpdateResp create() => LocationUpdateResp._();
  LocationUpdateResp createEmptyInstance() => create();
  static $pb.PbList<LocationUpdateResp> createRepeated() => $pb.PbList<LocationUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static LocationUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationUpdateResp>(create);
  static LocationUpdateResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class UserInfoUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserInfoUpdateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'phone')
    ..aOS(4, 'name')
    ..aOS(5, 'gender')
    ..aOS(6, 'birth')
    ..a<$core.int>(7, 'careerId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserInfoUpdateReq._() : super();
  factory UserInfoUpdateReq() => create();
  factory UserInfoUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserInfoUpdateReq clone() => UserInfoUpdateReq()..mergeFromMessage(this);
  UserInfoUpdateReq copyWith(void Function(UserInfoUpdateReq) updates) => super.copyWith((message) => updates(message as UserInfoUpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfoUpdateReq create() => UserInfoUpdateReq._();
  UserInfoUpdateReq createEmptyInstance() => create();
  static $pb.PbList<UserInfoUpdateReq> createRepeated() => $pb.PbList<UserInfoUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static UserInfoUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoUpdateReq>(create);
  static UserInfoUpdateReq _defaultInstance;

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
  $core.String get phone => $_getSZ(2);
  @$pb.TagNumber(3)
  set phone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhone() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get gender => $_getSZ(4);
  @$pb.TagNumber(5)
  set gender($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearGender() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get birth => $_getSZ(5);
  @$pb.TagNumber(6)
  set birth($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBirth() => $_has(5);
  @$pb.TagNumber(6)
  void clearBirth() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get careerId => $_getIZ(6);
  @$pb.TagNumber(7)
  set careerId($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCareerId() => $_has(6);
  @$pb.TagNumber(7)
  void clearCareerId() => clearField(7);
}

class UserInfoUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserInfoUpdateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  UserInfoUpdateResp._() : super();
  factory UserInfoUpdateResp() => create();
  factory UserInfoUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserInfoUpdateResp clone() => UserInfoUpdateResp()..mergeFromMessage(this);
  UserInfoUpdateResp copyWith(void Function(UserInfoUpdateResp) updates) => super.copyWith((message) => updates(message as UserInfoUpdateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfoUpdateResp create() => UserInfoUpdateResp._();
  UserInfoUpdateResp createEmptyInstance() => create();
  static $pb.PbList<UserInfoUpdateResp> createRepeated() => $pb.PbList<UserInfoUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static UserInfoUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoUpdateResp>(create);
  static UserInfoUpdateResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class UserExtInfoUpdateReq_Media extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserExtInfoUpdateReq.Media', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<UserExtInfoUpdateReq_Cmd>(1, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: UserExtInfoUpdateReq_Cmd.UNK, valueOf: UserExtInfoUpdateReq_Cmd.valueOf, enumValues: UserExtInfoUpdateReq_Cmd.values)
    ..aOS(2, 'url')
    ..a<$core.int>(3, 'duration', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserExtInfoUpdateReq_Media._() : super();
  factory UserExtInfoUpdateReq_Media() => create();
  factory UserExtInfoUpdateReq_Media.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserExtInfoUpdateReq_Media.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserExtInfoUpdateReq_Media clone() => UserExtInfoUpdateReq_Media()..mergeFromMessage(this);
  UserExtInfoUpdateReq_Media copyWith(void Function(UserExtInfoUpdateReq_Media) updates) => super.copyWith((message) => updates(message as UserExtInfoUpdateReq_Media));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserExtInfoUpdateReq_Media create() => UserExtInfoUpdateReq_Media._();
  UserExtInfoUpdateReq_Media createEmptyInstance() => create();
  static $pb.PbList<UserExtInfoUpdateReq_Media> createRepeated() => $pb.PbList<UserExtInfoUpdateReq_Media>();
  @$core.pragma('dart2js:noInline')
  static UserExtInfoUpdateReq_Media getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserExtInfoUpdateReq_Media>(create);
  static UserExtInfoUpdateReq_Media _defaultInstance;

  @$pb.TagNumber(1)
  UserExtInfoUpdateReq_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(UserExtInfoUpdateReq_Cmd v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get duration => $_getIZ(2);
  @$pb.TagNumber(3)
  set duration($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => clearField(3);
}

class UserExtInfoUpdateReq_Gallery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserExtInfoUpdateReq.Gallery', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<UserExtInfoUpdateReq_Cmd>(1, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: UserExtInfoUpdateReq_Cmd.UNK, valueOf: UserExtInfoUpdateReq_Cmd.valueOf, enumValues: UserExtInfoUpdateReq_Cmd.values)
    ..pPS(2, 'gallery')
    ..hasRequiredFields = false
  ;

  UserExtInfoUpdateReq_Gallery._() : super();
  factory UserExtInfoUpdateReq_Gallery() => create();
  factory UserExtInfoUpdateReq_Gallery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserExtInfoUpdateReq_Gallery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserExtInfoUpdateReq_Gallery clone() => UserExtInfoUpdateReq_Gallery()..mergeFromMessage(this);
  UserExtInfoUpdateReq_Gallery copyWith(void Function(UserExtInfoUpdateReq_Gallery) updates) => super.copyWith((message) => updates(message as UserExtInfoUpdateReq_Gallery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserExtInfoUpdateReq_Gallery create() => UserExtInfoUpdateReq_Gallery._();
  UserExtInfoUpdateReq_Gallery createEmptyInstance() => create();
  static $pb.PbList<UserExtInfoUpdateReq_Gallery> createRepeated() => $pb.PbList<UserExtInfoUpdateReq_Gallery>();
  @$core.pragma('dart2js:noInline')
  static UserExtInfoUpdateReq_Gallery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserExtInfoUpdateReq_Gallery>(create);
  static UserExtInfoUpdateReq_Gallery _defaultInstance;

  @$pb.TagNumber(1)
  UserExtInfoUpdateReq_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(UserExtInfoUpdateReq_Cmd v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get gallery => $_getList(1);
}

class UserExtInfoUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserExtInfoUpdateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOM<UserExtInfoUpdateReq_Media>(3, 'avatar', subBuilder: UserExtInfoUpdateReq_Media.create)
    ..aOM<UserExtInfoUpdateReq_Media>(4, 'declaration', subBuilder: UserExtInfoUpdateReq_Media.create)
    ..aOM<UserExtInfoUpdateReq_Gallery>(5, 'gallery', subBuilder: UserExtInfoUpdateReq_Gallery.create)
    ..aOM<UserExtInfoUpdateReq_Media>(6, 'audio', subBuilder: UserExtInfoUpdateReq_Media.create)
    ..aOM<UserExtInfoUpdateReq_Media>(7, 'video', subBuilder: UserExtInfoUpdateReq_Media.create)
    ..hasRequiredFields = false
  ;

  UserExtInfoUpdateReq._() : super();
  factory UserExtInfoUpdateReq() => create();
  factory UserExtInfoUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserExtInfoUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserExtInfoUpdateReq clone() => UserExtInfoUpdateReq()..mergeFromMessage(this);
  UserExtInfoUpdateReq copyWith(void Function(UserExtInfoUpdateReq) updates) => super.copyWith((message) => updates(message as UserExtInfoUpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserExtInfoUpdateReq create() => UserExtInfoUpdateReq._();
  UserExtInfoUpdateReq createEmptyInstance() => create();
  static $pb.PbList<UserExtInfoUpdateReq> createRepeated() => $pb.PbList<UserExtInfoUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static UserExtInfoUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserExtInfoUpdateReq>(create);
  static UserExtInfoUpdateReq _defaultInstance;

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
  UserExtInfoUpdateReq_Media get avatar => $_getN(2);
  @$pb.TagNumber(3)
  set avatar(UserExtInfoUpdateReq_Media v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);
  @$pb.TagNumber(3)
  UserExtInfoUpdateReq_Media ensureAvatar() => $_ensure(2);

  @$pb.TagNumber(4)
  UserExtInfoUpdateReq_Media get declaration => $_getN(3);
  @$pb.TagNumber(4)
  set declaration(UserExtInfoUpdateReq_Media v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeclaration() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeclaration() => clearField(4);
  @$pb.TagNumber(4)
  UserExtInfoUpdateReq_Media ensureDeclaration() => $_ensure(3);

  @$pb.TagNumber(5)
  UserExtInfoUpdateReq_Gallery get gallery => $_getN(4);
  @$pb.TagNumber(5)
  set gallery(UserExtInfoUpdateReq_Gallery v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGallery() => $_has(4);
  @$pb.TagNumber(5)
  void clearGallery() => clearField(5);
  @$pb.TagNumber(5)
  UserExtInfoUpdateReq_Gallery ensureGallery() => $_ensure(4);

  @$pb.TagNumber(6)
  UserExtInfoUpdateReq_Media get audio => $_getN(5);
  @$pb.TagNumber(6)
  set audio(UserExtInfoUpdateReq_Media v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAudio() => $_has(5);
  @$pb.TagNumber(6)
  void clearAudio() => clearField(6);
  @$pb.TagNumber(6)
  UserExtInfoUpdateReq_Media ensureAudio() => $_ensure(5);

  @$pb.TagNumber(7)
  UserExtInfoUpdateReq_Media get video => $_getN(6);
  @$pb.TagNumber(7)
  set video(UserExtInfoUpdateReq_Media v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasVideo() => $_has(6);
  @$pb.TagNumber(7)
  void clearVideo() => clearField(7);
  @$pb.TagNumber(7)
  UserExtInfoUpdateReq_Media ensureVideo() => $_ensure(6);
}

class UserExtInfoUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserExtInfoUpdateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  UserExtInfoUpdateResp._() : super();
  factory UserExtInfoUpdateResp() => create();
  factory UserExtInfoUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserExtInfoUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserExtInfoUpdateResp clone() => UserExtInfoUpdateResp()..mergeFromMessage(this);
  UserExtInfoUpdateResp copyWith(void Function(UserExtInfoUpdateResp) updates) => super.copyWith((message) => updates(message as UserExtInfoUpdateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserExtInfoUpdateResp create() => UserExtInfoUpdateResp._();
  UserExtInfoUpdateResp createEmptyInstance() => create();
  static $pb.PbList<UserExtInfoUpdateResp> createRepeated() => $pb.PbList<UserExtInfoUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static UserExtInfoUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserExtInfoUpdateResp>(create);
  static UserExtInfoUpdateResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class UserInterestsUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserInterestsUpdateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<UserInterestsUpdateReq_METHOD>(3, 'method', $pb.PbFieldType.OE, defaultOrMaker: UserInterestsUpdateReq_METHOD.UNK, valueOf: UserInterestsUpdateReq_METHOD.valueOf, enumValues: UserInterestsUpdateReq_METHOD.values)
    ..a<$core.int>(4, 'skillId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserInterestsUpdateReq._() : super();
  factory UserInterestsUpdateReq() => create();
  factory UserInterestsUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInterestsUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserInterestsUpdateReq clone() => UserInterestsUpdateReq()..mergeFromMessage(this);
  UserInterestsUpdateReq copyWith(void Function(UserInterestsUpdateReq) updates) => super.copyWith((message) => updates(message as UserInterestsUpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInterestsUpdateReq create() => UserInterestsUpdateReq._();
  UserInterestsUpdateReq createEmptyInstance() => create();
  static $pb.PbList<UserInterestsUpdateReq> createRepeated() => $pb.PbList<UserInterestsUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static UserInterestsUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInterestsUpdateReq>(create);
  static UserInterestsUpdateReq _defaultInstance;

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
  UserInterestsUpdateReq_METHOD get method => $_getN(2);
  @$pb.TagNumber(3)
  set method(UserInterestsUpdateReq_METHOD v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearMethod() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get skillId => $_getIZ(3);
  @$pb.TagNumber(4)
  set skillId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSkillId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkillId() => clearField(4);
}

class UserInterestsUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserInterestsUpdateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  UserInterestsUpdateResp._() : super();
  factory UserInterestsUpdateResp() => create();
  factory UserInterestsUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInterestsUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserInterestsUpdateResp clone() => UserInterestsUpdateResp()..mergeFromMessage(this);
  UserInterestsUpdateResp copyWith(void Function(UserInterestsUpdateResp) updates) => super.copyWith((message) => updates(message as UserInterestsUpdateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInterestsUpdateResp create() => UserInterestsUpdateResp._();
  UserInterestsUpdateResp createEmptyInstance() => create();
  static $pb.PbList<UserInterestsUpdateResp> createRepeated() => $pb.PbList<UserInterestsUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static UserInterestsUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInterestsUpdateResp>(create);
  static UserInterestsUpdateResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class UserHobbyUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserHobbyUpdateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<UserHobbyUpdateReq_METHOD>(3, 'method', $pb.PbFieldType.OE, defaultOrMaker: UserHobbyUpdateReq_METHOD.UNK, valueOf: UserHobbyUpdateReq_METHOD.valueOf, enumValues: UserHobbyUpdateReq_METHOD.values)
    ..a<$core.int>(4, 'hobbyId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserHobbyUpdateReq._() : super();
  factory UserHobbyUpdateReq() => create();
  factory UserHobbyUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserHobbyUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserHobbyUpdateReq clone() => UserHobbyUpdateReq()..mergeFromMessage(this);
  UserHobbyUpdateReq copyWith(void Function(UserHobbyUpdateReq) updates) => super.copyWith((message) => updates(message as UserHobbyUpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserHobbyUpdateReq create() => UserHobbyUpdateReq._();
  UserHobbyUpdateReq createEmptyInstance() => create();
  static $pb.PbList<UserHobbyUpdateReq> createRepeated() => $pb.PbList<UserHobbyUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static UserHobbyUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserHobbyUpdateReq>(create);
  static UserHobbyUpdateReq _defaultInstance;

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
  UserHobbyUpdateReq_METHOD get method => $_getN(2);
  @$pb.TagNumber(3)
  set method(UserHobbyUpdateReq_METHOD v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearMethod() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get hobbyId => $_getIZ(3);
  @$pb.TagNumber(4)
  set hobbyId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHobbyId() => $_has(3);
  @$pb.TagNumber(4)
  void clearHobbyId() => clearField(4);
}

class UserHobbyUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserHobbyUpdateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  UserHobbyUpdateResp._() : super();
  factory UserHobbyUpdateResp() => create();
  factory UserHobbyUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserHobbyUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserHobbyUpdateResp clone() => UserHobbyUpdateResp()..mergeFromMessage(this);
  UserHobbyUpdateResp copyWith(void Function(UserHobbyUpdateResp) updates) => super.copyWith((message) => updates(message as UserHobbyUpdateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserHobbyUpdateResp create() => UserHobbyUpdateResp._();
  UserHobbyUpdateResp createEmptyInstance() => create();
  static $pb.PbList<UserHobbyUpdateResp> createRepeated() => $pb.PbList<UserHobbyUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static UserHobbyUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserHobbyUpdateResp>(create);
  static UserHobbyUpdateResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class TokenOssResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenOssResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'accessKeyId')
    ..aOS(2, 'accessKeySecret')
    ..aOS(3, 'securityToken')
    ..a<$core.int>(4, 'expiration', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TokenOssResp._() : super();
  factory TokenOssResp() => create();
  factory TokenOssResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenOssResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenOssResp clone() => TokenOssResp()..mergeFromMessage(this);
  TokenOssResp copyWith(void Function(TokenOssResp) updates) => super.copyWith((message) => updates(message as TokenOssResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenOssResp create() => TokenOssResp._();
  TokenOssResp createEmptyInstance() => create();
  static $pb.PbList<TokenOssResp> createRepeated() => $pb.PbList<TokenOssResp>();
  @$core.pragma('dart2js:noInline')
  static TokenOssResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenOssResp>(create);
  static TokenOssResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessKeyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessKeyId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessKeyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessKeyId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessKeySecret => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessKeySecret($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessKeySecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessKeySecret() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get securityToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set securityToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecurityToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecurityToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get expiration => $_getIZ(3);
  @$pb.TagNumber(4)
  set expiration($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpiration() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiration() => clearField(4);
}

class TokenAgoraReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenAgoraReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'channel')
    ..aOS(2, 'uid')
    ..hasRequiredFields = false
  ;

  TokenAgoraReq._() : super();
  factory TokenAgoraReq() => create();
  factory TokenAgoraReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenAgoraReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenAgoraReq clone() => TokenAgoraReq()..mergeFromMessage(this);
  TokenAgoraReq copyWith(void Function(TokenAgoraReq) updates) => super.copyWith((message) => updates(message as TokenAgoraReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenAgoraReq create() => TokenAgoraReq._();
  TokenAgoraReq createEmptyInstance() => create();
  static $pb.PbList<TokenAgoraReq> createRepeated() => $pb.PbList<TokenAgoraReq>();
  @$core.pragma('dart2js:noInline')
  static TokenAgoraReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenAgoraReq>(create);
  static TokenAgoraReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channel => $_getSZ(0);
  @$pb.TagNumber(1)
  set channel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);
}

class TokenAgoraResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenAgoraResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  TokenAgoraResp._() : super();
  factory TokenAgoraResp() => create();
  factory TokenAgoraResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenAgoraResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenAgoraResp clone() => TokenAgoraResp()..mergeFromMessage(this);
  TokenAgoraResp copyWith(void Function(TokenAgoraResp) updates) => super.copyWith((message) => updates(message as TokenAgoraResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenAgoraResp create() => TokenAgoraResp._();
  TokenAgoraResp createEmptyInstance() => create();
  static $pb.PbList<TokenAgoraResp> createRepeated() => $pb.PbList<TokenAgoraResp>();
  @$core.pragma('dart2js:noInline')
  static TokenAgoraResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenAgoraResp>(create);
  static TokenAgoraResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class FollowReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FollowReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'srcUid')
    ..aOS(2, 'tgtUid')
    ..aOB(3, 'flag')
    ..aOS(4, 'token')
    ..e<FollowReq_Cmd>(5, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: FollowReq_Cmd.FOLLOW, valueOf: FollowReq_Cmd.valueOf, enumValues: FollowReq_Cmd.values)
    ..hasRequiredFields = false
  ;

  FollowReq._() : super();
  factory FollowReq() => create();
  factory FollowReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FollowReq clone() => FollowReq()..mergeFromMessage(this);
  FollowReq copyWith(void Function(FollowReq) updates) => super.copyWith((message) => updates(message as FollowReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FollowReq create() => FollowReq._();
  FollowReq createEmptyInstance() => create();
  static $pb.PbList<FollowReq> createRepeated() => $pb.PbList<FollowReq>();
  @$core.pragma('dart2js:noInline')
  static FollowReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowReq>(create);
  static FollowReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get srcUid => $_getSZ(0);
  @$pb.TagNumber(1)
  set srcUid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tgtUid => $_getSZ(1);
  @$pb.TagNumber(2)
  set tgtUid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTgtUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTgtUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get flag => $_getBF(2);
  @$pb.TagNumber(3)
  set flag($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlag() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);

  @$pb.TagNumber(5)
  FollowReq_Cmd get cmd => $_getN(4);
  @$pb.TagNumber(5)
  set cmd(FollowReq_Cmd v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCmd() => $_has(4);
  @$pb.TagNumber(5)
  void clearCmd() => clearField(5);
}

class FollowResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FollowResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  FollowResp._() : super();
  factory FollowResp() => create();
  factory FollowResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FollowResp clone() => FollowResp()..mergeFromMessage(this);
  FollowResp copyWith(void Function(FollowResp) updates) => super.copyWith((message) => updates(message as FollowResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FollowResp create() => FollowResp._();
  FollowResp createEmptyInstance() => create();
  static $pb.PbList<FollowResp> createRepeated() => $pb.PbList<FollowResp>();
  @$core.pragma('dart2js:noInline')
  static FollowResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowResp>(create);
  static FollowResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SmsCodeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SmsCodeReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'phone')
    ..a<$core.int>(2, 'country', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SmsCodeReq._() : super();
  factory SmsCodeReq() => create();
  factory SmsCodeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmsCodeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SmsCodeReq clone() => SmsCodeReq()..mergeFromMessage(this);
  SmsCodeReq copyWith(void Function(SmsCodeReq) updates) => super.copyWith((message) => updates(message as SmsCodeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmsCodeReq create() => SmsCodeReq._();
  SmsCodeReq createEmptyInstance() => create();
  static $pb.PbList<SmsCodeReq> createRepeated() => $pb.PbList<SmsCodeReq>();
  @$core.pragma('dart2js:noInline')
  static SmsCodeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmsCodeReq>(create);
  static SmsCodeReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get country => $_getIZ(1);
  @$pb.TagNumber(2)
  set country($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountry() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountry() => clearField(2);
}

class SmsCodeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SmsCodeResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SmsCodeResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: SmsCodeResp_STATUS.OK, valueOf: SmsCodeResp_STATUS.valueOf, enumValues: SmsCodeResp_STATUS.values)
    ..aOB(2, 'registered')
    ..aOS(3, 'code')
    ..aOS(4, 'uid')
    ..aOS(5, 'description')
    ..hasRequiredFields = false
  ;

  SmsCodeResp._() : super();
  factory SmsCodeResp() => create();
  factory SmsCodeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmsCodeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SmsCodeResp clone() => SmsCodeResp()..mergeFromMessage(this);
  SmsCodeResp copyWith(void Function(SmsCodeResp) updates) => super.copyWith((message) => updates(message as SmsCodeResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmsCodeResp create() => SmsCodeResp._();
  SmsCodeResp createEmptyInstance() => create();
  static $pb.PbList<SmsCodeResp> createRepeated() => $pb.PbList<SmsCodeResp>();
  @$core.pragma('dart2js:noInline')
  static SmsCodeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmsCodeResp>(create);
  static SmsCodeResp _defaultInstance;

  @$pb.TagNumber(1)
  SmsCodeResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SmsCodeResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get registered => $_getBF(1);
  @$pb.TagNumber(2)
  set registered($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistered() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistered() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uid => $_getSZ(3);
  @$pb.TagNumber(4)
  set uid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
}

class SmsCodeVerifyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SmsCodeVerifyReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'phone')
    ..aOS(2, 'code')
    ..a<$core.int>(3, 'country', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SmsCodeVerifyReq._() : super();
  factory SmsCodeVerifyReq() => create();
  factory SmsCodeVerifyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmsCodeVerifyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SmsCodeVerifyReq clone() => SmsCodeVerifyReq()..mergeFromMessage(this);
  SmsCodeVerifyReq copyWith(void Function(SmsCodeVerifyReq) updates) => super.copyWith((message) => updates(message as SmsCodeVerifyReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmsCodeVerifyReq create() => SmsCodeVerifyReq._();
  SmsCodeVerifyReq createEmptyInstance() => create();
  static $pb.PbList<SmsCodeVerifyReq> createRepeated() => $pb.PbList<SmsCodeVerifyReq>();
  @$core.pragma('dart2js:noInline')
  static SmsCodeVerifyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmsCodeVerifyReq>(create);
  static SmsCodeVerifyReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get country => $_getIZ(2);
  @$pb.TagNumber(3)
  set country($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCountry() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountry() => clearField(3);
}

class SmsCodeVerifyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SmsCodeVerifyResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SmsCodeVerifyResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: SmsCodeVerifyResp_STATUS.OK, valueOf: SmsCodeVerifyResp_STATUS.valueOf, enumValues: SmsCodeVerifyResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  SmsCodeVerifyResp._() : super();
  factory SmsCodeVerifyResp() => create();
  factory SmsCodeVerifyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmsCodeVerifyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SmsCodeVerifyResp clone() => SmsCodeVerifyResp()..mergeFromMessage(this);
  SmsCodeVerifyResp copyWith(void Function(SmsCodeVerifyResp) updates) => super.copyWith((message) => updates(message as SmsCodeVerifyResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmsCodeVerifyResp create() => SmsCodeVerifyResp._();
  SmsCodeVerifyResp createEmptyInstance() => create();
  static $pb.PbList<SmsCodeVerifyResp> createRepeated() => $pb.PbList<SmsCodeVerifyResp>();
  @$core.pragma('dart2js:noInline')
  static SmsCodeVerifyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmsCodeVerifyResp>(create);
  static SmsCodeVerifyResp _defaultInstance;

  @$pb.TagNumber(1)
  SmsCodeVerifyResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SmsCodeVerifyResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class UserCpRelationsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserCpRelationsReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..hasRequiredFields = false
  ;

  UserCpRelationsReq._() : super();
  factory UserCpRelationsReq() => create();
  factory UserCpRelationsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCpRelationsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserCpRelationsReq clone() => UserCpRelationsReq()..mergeFromMessage(this);
  UserCpRelationsReq copyWith(void Function(UserCpRelationsReq) updates) => super.copyWith((message) => updates(message as UserCpRelationsReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCpRelationsReq create() => UserCpRelationsReq._();
  UserCpRelationsReq createEmptyInstance() => create();
  static $pb.PbList<UserCpRelationsReq> createRepeated() => $pb.PbList<UserCpRelationsReq>();
  @$core.pragma('dart2js:noInline')
  static UserCpRelationsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCpRelationsReq>(create);
  static UserCpRelationsReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class UserCpRelationsResp_CpRelation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserCpRelationsResp.CpRelation', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOM<UserInfoBrief>(1, 'user', subBuilder: UserInfoBrief.create)
    ..a<$core.int>(2, 'daysLeft', $pb.PbFieldType.O3)
    ..e<UserCpRelationsResp_Couple_Type>(3, 'cpType', $pb.PbFieldType.OE, defaultOrMaker: UserCpRelationsResp_Couple_Type.UNK, valueOf: UserCpRelationsResp_Couple_Type.valueOf, enumValues: UserCpRelationsResp_Couple_Type.values)
    ..aOS(4, 'cpTitle')
    ..aOS(5, 'expire')
    ..hasRequiredFields = false
  ;

  UserCpRelationsResp_CpRelation._() : super();
  factory UserCpRelationsResp_CpRelation() => create();
  factory UserCpRelationsResp_CpRelation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCpRelationsResp_CpRelation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserCpRelationsResp_CpRelation clone() => UserCpRelationsResp_CpRelation()..mergeFromMessage(this);
  UserCpRelationsResp_CpRelation copyWith(void Function(UserCpRelationsResp_CpRelation) updates) => super.copyWith((message) => updates(message as UserCpRelationsResp_CpRelation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCpRelationsResp_CpRelation create() => UserCpRelationsResp_CpRelation._();
  UserCpRelationsResp_CpRelation createEmptyInstance() => create();
  static $pb.PbList<UserCpRelationsResp_CpRelation> createRepeated() => $pb.PbList<UserCpRelationsResp_CpRelation>();
  @$core.pragma('dart2js:noInline')
  static UserCpRelationsResp_CpRelation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCpRelationsResp_CpRelation>(create);
  static UserCpRelationsResp_CpRelation _defaultInstance;

  @$pb.TagNumber(1)
  UserInfoBrief get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(UserInfoBrief v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  UserInfoBrief ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get daysLeft => $_getIZ(1);
  @$pb.TagNumber(2)
  set daysLeft($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDaysLeft() => $_has(1);
  @$pb.TagNumber(2)
  void clearDaysLeft() => clearField(2);

  @$pb.TagNumber(3)
  UserCpRelationsResp_Couple_Type get cpType => $_getN(2);
  @$pb.TagNumber(3)
  set cpType(UserCpRelationsResp_Couple_Type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCpType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCpType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get cpTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set cpTitle($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCpTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearCpTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get expire => $_getSZ(4);
  @$pb.TagNumber(5)
  set expire($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpire() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpire() => clearField(5);
}

class UserCpRelationsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserCpRelationsResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<UserCpRelationsResp_CpRelation>(1, 'relations', $pb.PbFieldType.PM, subBuilder: UserCpRelationsResp_CpRelation.create)
    ..hasRequiredFields = false
  ;

  UserCpRelationsResp._() : super();
  factory UserCpRelationsResp() => create();
  factory UserCpRelationsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCpRelationsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserCpRelationsResp clone() => UserCpRelationsResp()..mergeFromMessage(this);
  UserCpRelationsResp copyWith(void Function(UserCpRelationsResp) updates) => super.copyWith((message) => updates(message as UserCpRelationsResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCpRelationsResp create() => UserCpRelationsResp._();
  UserCpRelationsResp createEmptyInstance() => create();
  static $pb.PbList<UserCpRelationsResp> createRepeated() => $pb.PbList<UserCpRelationsResp>();
  @$core.pragma('dart2js:noInline')
  static UserCpRelationsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCpRelationsResp>(create);
  static UserCpRelationsResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserCpRelationsResp_CpRelation> get relations => $_getList(0);
}

class UserGuardiansReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserGuardiansReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'roomId')
    ..e<UserGuardiansReq_Category>(4, 'category', $pb.PbFieldType.OE, defaultOrMaker: UserGuardiansReq_Category.ALL, valueOf: UserGuardiansReq_Category.valueOf, enumValues: UserGuardiansReq_Category.values)
    ..aOS(5, 'toUserId')
    ..hasRequiredFields = false
  ;

  UserGuardiansReq._() : super();
  factory UserGuardiansReq() => create();
  factory UserGuardiansReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserGuardiansReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserGuardiansReq clone() => UserGuardiansReq()..mergeFromMessage(this);
  UserGuardiansReq copyWith(void Function(UserGuardiansReq) updates) => super.copyWith((message) => updates(message as UserGuardiansReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserGuardiansReq create() => UserGuardiansReq._();
  UserGuardiansReq createEmptyInstance() => create();
  static $pb.PbList<UserGuardiansReq> createRepeated() => $pb.PbList<UserGuardiansReq>();
  @$core.pragma('dart2js:noInline')
  static UserGuardiansReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserGuardiansReq>(create);
  static UserGuardiansReq _defaultInstance;

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
  $core.String get roomId => $_getSZ(2);
  @$pb.TagNumber(3)
  set roomId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);

  @$pb.TagNumber(4)
  UserGuardiansReq_Category get category => $_getN(3);
  @$pb.TagNumber(4)
  set category(UserGuardiansReq_Category v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get toUserId => $_getSZ(4);
  @$pb.TagNumber(5)
  set toUserId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasToUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearToUserId() => clearField(5);
}

class UserGuardiansResp_Guardian extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserGuardiansResp.Guardian', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<UserGuardiansReq_Category>(1, 'category', $pb.PbFieldType.OE, defaultOrMaker: UserGuardiansReq_Category.ALL, valueOf: UserGuardiansReq_Category.valueOf, enumValues: UserGuardiansReq_Category.values)
    ..aOS(2, 'roomId')
    ..aOS(3, 'toUserId')
    ..aOS(4, 'expiresAt')
    ..hasRequiredFields = false
  ;

  UserGuardiansResp_Guardian._() : super();
  factory UserGuardiansResp_Guardian() => create();
  factory UserGuardiansResp_Guardian.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserGuardiansResp_Guardian.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserGuardiansResp_Guardian clone() => UserGuardiansResp_Guardian()..mergeFromMessage(this);
  UserGuardiansResp_Guardian copyWith(void Function(UserGuardiansResp_Guardian) updates) => super.copyWith((message) => updates(message as UserGuardiansResp_Guardian));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserGuardiansResp_Guardian create() => UserGuardiansResp_Guardian._();
  UserGuardiansResp_Guardian createEmptyInstance() => create();
  static $pb.PbList<UserGuardiansResp_Guardian> createRepeated() => $pb.PbList<UserGuardiansResp_Guardian>();
  @$core.pragma('dart2js:noInline')
  static UserGuardiansResp_Guardian getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserGuardiansResp_Guardian>(create);
  static UserGuardiansResp_Guardian _defaultInstance;

  @$pb.TagNumber(1)
  UserGuardiansReq_Category get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(UserGuardiansReq_Category v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get toUserId => $_getSZ(2);
  @$pb.TagNumber(3)
  set toUserId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearToUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get expiresAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set expiresAt($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpiresAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiresAt() => clearField(4);
}

class UserGuardiansResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserGuardiansResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..pc<UserGuardiansResp_Guardian>(2, 'guardians', $pb.PbFieldType.PM, subBuilder: UserGuardiansResp_Guardian.create)
    ..hasRequiredFields = false
  ;

  UserGuardiansResp._() : super();
  factory UserGuardiansResp() => create();
  factory UserGuardiansResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserGuardiansResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserGuardiansResp clone() => UserGuardiansResp()..mergeFromMessage(this);
  UserGuardiansResp copyWith(void Function(UserGuardiansResp) updates) => super.copyWith((message) => updates(message as UserGuardiansResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserGuardiansResp create() => UserGuardiansResp._();
  UserGuardiansResp createEmptyInstance() => create();
  static $pb.PbList<UserGuardiansResp> createRepeated() => $pb.PbList<UserGuardiansResp>();
  @$core.pragma('dart2js:noInline')
  static UserGuardiansResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserGuardiansResp>(create);
  static UserGuardiansResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<UserGuardiansResp_Guardian> get guardians => $_getList(1);
}

class UserFriendsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserFriendsReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<UserFriendsReq_Category>(3, 'category', $pb.PbFieldType.OE, defaultOrMaker: UserFriendsReq_Category.MY_FANS, valueOf: UserFriendsReq_Category.valueOf, enumValues: UserFriendsReq_Category.values)
    ..a<$core.int>(4, 'pageNum', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserFriendsReq._() : super();
  factory UserFriendsReq() => create();
  factory UserFriendsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFriendsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserFriendsReq clone() => UserFriendsReq()..mergeFromMessage(this);
  UserFriendsReq copyWith(void Function(UserFriendsReq) updates) => super.copyWith((message) => updates(message as UserFriendsReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserFriendsReq create() => UserFriendsReq._();
  UserFriendsReq createEmptyInstance() => create();
  static $pb.PbList<UserFriendsReq> createRepeated() => $pb.PbList<UserFriendsReq>();
  @$core.pragma('dart2js:noInline')
  static UserFriendsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFriendsReq>(create);
  static UserFriendsReq _defaultInstance;

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
  UserFriendsReq_Category get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(UserFriendsReq_Category v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageNum($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPageNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageNum() => clearField(4);
}

class UserFriendsResp_Relation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserFriendsResp.Relation', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOM<UserInfoBrief>(1, 'user', subBuilder: UserInfoBrief.create)
    ..a<$core.int>(2, 'time', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserFriendsResp_Relation._() : super();
  factory UserFriendsResp_Relation() => create();
  factory UserFriendsResp_Relation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFriendsResp_Relation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserFriendsResp_Relation clone() => UserFriendsResp_Relation()..mergeFromMessage(this);
  UserFriendsResp_Relation copyWith(void Function(UserFriendsResp_Relation) updates) => super.copyWith((message) => updates(message as UserFriendsResp_Relation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserFriendsResp_Relation create() => UserFriendsResp_Relation._();
  UserFriendsResp_Relation createEmptyInstance() => create();
  static $pb.PbList<UserFriendsResp_Relation> createRepeated() => $pb.PbList<UserFriendsResp_Relation>();
  @$core.pragma('dart2js:noInline')
  static UserFriendsResp_Relation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFriendsResp_Relation>(create);
  static UserFriendsResp_Relation _defaultInstance;

  @$pb.TagNumber(1)
  UserInfoBrief get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(UserInfoBrief v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  UserInfoBrief ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get time => $_getIZ(1);
  @$pb.TagNumber(2)
  set time($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);
}

class UserFriendsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserFriendsResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..pc<UserFriendsResp_Relation>(2, 'items', $pb.PbFieldType.PM, subBuilder: UserFriendsResp_Relation.create)
    ..hasRequiredFields = false
  ;

  UserFriendsResp._() : super();
  factory UserFriendsResp() => create();
  factory UserFriendsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFriendsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserFriendsResp clone() => UserFriendsResp()..mergeFromMessage(this);
  UserFriendsResp copyWith(void Function(UserFriendsResp) updates) => super.copyWith((message) => updates(message as UserFriendsResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserFriendsResp create() => UserFriendsResp._();
  UserFriendsResp createEmptyInstance() => create();
  static $pb.PbList<UserFriendsResp> createRepeated() => $pb.PbList<UserFriendsResp>();
  @$core.pragma('dart2js:noInline')
  static UserFriendsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFriendsResp>(create);
  static UserFriendsResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<UserFriendsResp_Relation> get items => $_getList(1);
}

class IsFollowedReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IsFollowedReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'tgtUid')
    ..aOB(4, 'reversed')
    ..hasRequiredFields = false
  ;

  IsFollowedReq._() : super();
  factory IsFollowedReq() => create();
  factory IsFollowedReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsFollowedReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IsFollowedReq clone() => IsFollowedReq()..mergeFromMessage(this);
  IsFollowedReq copyWith(void Function(IsFollowedReq) updates) => super.copyWith((message) => updates(message as IsFollowedReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsFollowedReq create() => IsFollowedReq._();
  IsFollowedReq createEmptyInstance() => create();
  static $pb.PbList<IsFollowedReq> createRepeated() => $pb.PbList<IsFollowedReq>();
  @$core.pragma('dart2js:noInline')
  static IsFollowedReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsFollowedReq>(create);
  static IsFollowedReq _defaultInstance;

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
  $core.String get tgtUid => $_getSZ(2);
  @$pb.TagNumber(3)
  set tgtUid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTgtUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearTgtUid() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get reversed => $_getBF(3);
  @$pb.TagNumber(4)
  set reversed($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReversed() => $_has(3);
  @$pb.TagNumber(4)
  void clearReversed() => clearField(4);
}

class IsFollowedResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IsFollowedResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..aOB(2, 'flag')
    ..hasRequiredFields = false
  ;

  IsFollowedResp._() : super();
  factory IsFollowedResp() => create();
  factory IsFollowedResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsFollowedResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IsFollowedResp clone() => IsFollowedResp()..mergeFromMessage(this);
  IsFollowedResp copyWith(void Function(IsFollowedResp) updates) => super.copyWith((message) => updates(message as IsFollowedResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsFollowedResp create() => IsFollowedResp._();
  IsFollowedResp createEmptyInstance() => create();
  static $pb.PbList<IsFollowedResp> createRepeated() => $pb.PbList<IsFollowedResp>();
  @$core.pragma('dart2js:noInline')
  static IsFollowedResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsFollowedResp>(create);
  static IsFollowedResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get flag => $_getBF(1);
  @$pb.TagNumber(2)
  set flag($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearFlag() => clearField(2);
}

class BagReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BagReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  BagReq._() : super();
  factory BagReq() => create();
  factory BagReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BagReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BagReq clone() => BagReq()..mergeFromMessage(this);
  BagReq copyWith(void Function(BagReq) updates) => super.copyWith((message) => updates(message as BagReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BagReq create() => BagReq._();
  BagReq createEmptyInstance() => create();
  static $pb.PbList<BagReq> createRepeated() => $pb.PbList<BagReq>();
  @$core.pragma('dart2js:noInline')
  static BagReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BagReq>(create);
  static BagReq _defaultInstance;

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

class BagResp_Product extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BagResp.Product', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'pid', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..aOS(3, 'icon')
    ..e<BagResp_CATEGORY>(4, 'category', $pb.PbFieldType.OE, defaultOrMaker: BagResp_CATEGORY.ALL, valueOf: BagResp_CATEGORY.valueOf, enumValues: BagResp_CATEGORY.values)
    ..e<BagResp_PRODUCT_GRADE>(5, 'grade', $pb.PbFieldType.OE, defaultOrMaker: BagResp_PRODUCT_GRADE.NONE, valueOf: BagResp_PRODUCT_GRADE.valueOf, enumValues: BagResp_PRODUCT_GRADE.values)
    ..a<$core.int>(6, 'count', $pb.PbFieldType.O3)
    ..aOB(7, 'permant')
    ..aOS(8, 'expire')
    ..e<BagResp_STATE>(9, 'state', $pb.PbFieldType.OE, defaultOrMaker: BagResp_STATE.UNUSED, valueOf: BagResp_STATE.valueOf, enumValues: BagResp_STATE.values)
    ..aOS(10, 'badge')
    ..hasRequiredFields = false
  ;

  BagResp_Product._() : super();
  factory BagResp_Product() => create();
  factory BagResp_Product.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BagResp_Product.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BagResp_Product clone() => BagResp_Product()..mergeFromMessage(this);
  BagResp_Product copyWith(void Function(BagResp_Product) updates) => super.copyWith((message) => updates(message as BagResp_Product));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BagResp_Product create() => BagResp_Product._();
  BagResp_Product createEmptyInstance() => create();
  static $pb.PbList<BagResp_Product> createRepeated() => $pb.PbList<BagResp_Product>();
  @$core.pragma('dart2js:noInline')
  static BagResp_Product getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BagResp_Product>(create);
  static BagResp_Product _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pid => $_getIZ(0);
  @$pb.TagNumber(1)
  set pid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);

  @$pb.TagNumber(4)
  BagResp_CATEGORY get category => $_getN(3);
  @$pb.TagNumber(4)
  set category(BagResp_CATEGORY v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);

  @$pb.TagNumber(5)
  BagResp_PRODUCT_GRADE get grade => $_getN(4);
  @$pb.TagNumber(5)
  set grade(BagResp_PRODUCT_GRADE v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGrade() => $_has(4);
  @$pb.TagNumber(5)
  void clearGrade() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get count => $_getIZ(5);
  @$pb.TagNumber(6)
  set count($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get permant => $_getBF(6);
  @$pb.TagNumber(7)
  set permant($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPermant() => $_has(6);
  @$pb.TagNumber(7)
  void clearPermant() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get expire => $_getSZ(7);
  @$pb.TagNumber(8)
  set expire($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExpire() => $_has(7);
  @$pb.TagNumber(8)
  void clearExpire() => clearField(8);

  @$pb.TagNumber(9)
  BagResp_STATE get state => $_getN(8);
  @$pb.TagNumber(9)
  set state(BagResp_STATE v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasState() => $_has(8);
  @$pb.TagNumber(9)
  void clearState() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get badge => $_getSZ(9);
  @$pb.TagNumber(10)
  set badge($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBadge() => $_has(9);
  @$pb.TagNumber(10)
  void clearBadge() => clearField(10);
}

class BagResp_Coupon extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BagResp.Coupon', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cid', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'pid', $pb.PbFieldType.O3)
    ..aOS(3, 'title')
    ..aOS(4, 'icon')
    ..aOB(5, 'permant')
    ..a<$core.int>(6, 'count', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BagResp_Coupon._() : super();
  factory BagResp_Coupon() => create();
  factory BagResp_Coupon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BagResp_Coupon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BagResp_Coupon clone() => BagResp_Coupon()..mergeFromMessage(this);
  BagResp_Coupon copyWith(void Function(BagResp_Coupon) updates) => super.copyWith((message) => updates(message as BagResp_Coupon));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BagResp_Coupon create() => BagResp_Coupon._();
  BagResp_Coupon createEmptyInstance() => create();
  static $pb.PbList<BagResp_Coupon> createRepeated() => $pb.PbList<BagResp_Coupon>();
  @$core.pragma('dart2js:noInline')
  static BagResp_Coupon getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BagResp_Coupon>(create);
  static BagResp_Coupon _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cid => $_getIZ(0);
  @$pb.TagNumber(1)
  set cid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pid => $_getIZ(1);
  @$pb.TagNumber(2)
  set pid($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPid() => $_has(1);
  @$pb.TagNumber(2)
  void clearPid() => clearField(2);

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

  @$pb.TagNumber(5)
  $core.bool get permant => $_getBF(4);
  @$pb.TagNumber(5)
  set permant($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPermant() => $_has(4);
  @$pb.TagNumber(5)
  void clearPermant() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get count => $_getIZ(5);
  @$pb.TagNumber(6)
  set count($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get value => $_getIZ(6);
  @$pb.TagNumber(7)
  set value($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearValue() => clearField(7);
}

class BagResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BagResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<BagResp_Product>(1, 'products', $pb.PbFieldType.PM, subBuilder: BagResp_Product.create)
    ..pc<BagResp_Coupon>(2, 'coupons', $pb.PbFieldType.PM, subBuilder: BagResp_Coupon.create)
    ..e<STATUS>(3, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  BagResp._() : super();
  factory BagResp() => create();
  factory BagResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BagResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BagResp clone() => BagResp()..mergeFromMessage(this);
  BagResp copyWith(void Function(BagResp) updates) => super.copyWith((message) => updates(message as BagResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BagResp create() => BagResp._();
  BagResp createEmptyInstance() => create();
  static $pb.PbList<BagResp> createRepeated() => $pb.PbList<BagResp>();
  @$core.pragma('dart2js:noInline')
  static BagResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BagResp>(create);
  static BagResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BagResp_Product> get products => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<BagResp_Coupon> get coupons => $_getList(1);

  @$pb.TagNumber(3)
  STATUS get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(STATUS v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class AccountBalanceReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountBalanceReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  AccountBalanceReq._() : super();
  factory AccountBalanceReq() => create();
  factory AccountBalanceReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountBalanceReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountBalanceReq clone() => AccountBalanceReq()..mergeFromMessage(this);
  AccountBalanceReq copyWith(void Function(AccountBalanceReq) updates) => super.copyWith((message) => updates(message as AccountBalanceReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountBalanceReq create() => AccountBalanceReq._();
  AccountBalanceReq createEmptyInstance() => create();
  static $pb.PbList<AccountBalanceReq> createRepeated() => $pb.PbList<AccountBalanceReq>();
  @$core.pragma('dart2js:noInline')
  static AccountBalanceReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountBalanceReq>(create);
  static AccountBalanceReq _defaultInstance;

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

class AccountBalanceResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountBalanceResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..a<$core.int>(2, 'diamond', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'attraction', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AccountBalanceResp._() : super();
  factory AccountBalanceResp() => create();
  factory AccountBalanceResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountBalanceResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountBalanceResp clone() => AccountBalanceResp()..mergeFromMessage(this);
  AccountBalanceResp copyWith(void Function(AccountBalanceResp) updates) => super.copyWith((message) => updates(message as AccountBalanceResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountBalanceResp create() => AccountBalanceResp._();
  AccountBalanceResp createEmptyInstance() => create();
  static $pb.PbList<AccountBalanceResp> createRepeated() => $pb.PbList<AccountBalanceResp>();
  @$core.pragma('dart2js:noInline')
  static AccountBalanceResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountBalanceResp>(create);
  static AccountBalanceResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get diamond => $_getIZ(1);
  @$pb.TagNumber(2)
  set diamond($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDiamond() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiamond() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get attraction => $_getIZ(2);
  @$pb.TagNumber(3)
  set attraction($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAttraction() => $_has(2);
  @$pb.TagNumber(3)
  void clearAttraction() => clearField(3);
}

class IdentityInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IdentityInfo', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'idName')
    ..aOS(2, 'idNumber')
    ..aOS(3, 'idFrontImg')
    ..aOS(4, 'idBackImg')
    ..aOS(5, 'phone')
    ..hasRequiredFields = false
  ;

  IdentityInfo._() : super();
  factory IdentityInfo() => create();
  factory IdentityInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IdentityInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IdentityInfo clone() => IdentityInfo()..mergeFromMessage(this);
  IdentityInfo copyWith(void Function(IdentityInfo) updates) => super.copyWith((message) => updates(message as IdentityInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IdentityInfo create() => IdentityInfo._();
  IdentityInfo createEmptyInstance() => create();
  static $pb.PbList<IdentityInfo> createRepeated() => $pb.PbList<IdentityInfo>();
  @$core.pragma('dart2js:noInline')
  static IdentityInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IdentityInfo>(create);
  static IdentityInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get idName => $_getSZ(0);
  @$pb.TagNumber(1)
  set idName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdName() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get idNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set idNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get idFrontImg => $_getSZ(2);
  @$pb.TagNumber(3)
  set idFrontImg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdFrontImg() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdFrontImg() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get idBackImg => $_getSZ(3);
  @$pb.TagNumber(4)
  set idBackImg($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdBackImg() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdBackImg() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(5)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhone() => clearField(5);
}

class RealNameVerifyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RealNameVerifyReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<RealNameVerifyReq_Cmd>(3, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: RealNameVerifyReq_Cmd.QUERY, valueOf: RealNameVerifyReq_Cmd.valueOf, enumValues: RealNameVerifyReq_Cmd.values)
    ..aOM<IdentityInfo>(4, 'info', subBuilder: IdentityInfo.create)
    ..hasRequiredFields = false
  ;

  RealNameVerifyReq._() : super();
  factory RealNameVerifyReq() => create();
  factory RealNameVerifyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RealNameVerifyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RealNameVerifyReq clone() => RealNameVerifyReq()..mergeFromMessage(this);
  RealNameVerifyReq copyWith(void Function(RealNameVerifyReq) updates) => super.copyWith((message) => updates(message as RealNameVerifyReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RealNameVerifyReq create() => RealNameVerifyReq._();
  RealNameVerifyReq createEmptyInstance() => create();
  static $pb.PbList<RealNameVerifyReq> createRepeated() => $pb.PbList<RealNameVerifyReq>();
  @$core.pragma('dart2js:noInline')
  static RealNameVerifyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RealNameVerifyReq>(create);
  static RealNameVerifyReq _defaultInstance;

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
  RealNameVerifyReq_Cmd get cmd => $_getN(2);
  @$pb.TagNumber(3)
  set cmd(RealNameVerifyReq_Cmd v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCmd() => $_has(2);
  @$pb.TagNumber(3)
  void clearCmd() => clearField(3);

  @$pb.TagNumber(4)
  IdentityInfo get info => $_getN(3);
  @$pb.TagNumber(4)
  set info(IdentityInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);
  @$pb.TagNumber(4)
  IdentityInfo ensureInfo() => $_ensure(3);
}

class RealNameVerifyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RealNameVerifyResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..e<RealNameVerifyResp_State>(2, 'state', $pb.PbFieldType.OE, defaultOrMaker: RealNameVerifyResp_State.NOT_VERIFY, valueOf: RealNameVerifyResp_State.valueOf, enumValues: RealNameVerifyResp_State.values)
    ..aOM<IdentityInfo>(3, 'info', subBuilder: IdentityInfo.create)
    ..aOS(4, 'comment')
    ..hasRequiredFields = false
  ;

  RealNameVerifyResp._() : super();
  factory RealNameVerifyResp() => create();
  factory RealNameVerifyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RealNameVerifyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RealNameVerifyResp clone() => RealNameVerifyResp()..mergeFromMessage(this);
  RealNameVerifyResp copyWith(void Function(RealNameVerifyResp) updates) => super.copyWith((message) => updates(message as RealNameVerifyResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RealNameVerifyResp create() => RealNameVerifyResp._();
  RealNameVerifyResp createEmptyInstance() => create();
  static $pb.PbList<RealNameVerifyResp> createRepeated() => $pb.PbList<RealNameVerifyResp>();
  @$core.pragma('dart2js:noInline')
  static RealNameVerifyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RealNameVerifyResp>(create);
  static RealNameVerifyResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  RealNameVerifyResp_State get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(RealNameVerifyResp_State v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  IdentityInfo get info => $_getN(2);
  @$pb.TagNumber(3)
  set info(IdentityInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfo() => clearField(3);
  @$pb.TagNumber(3)
  IdentityInfo ensureInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get comment => $_getSZ(3);
  @$pb.TagNumber(4)
  set comment($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasComment() => $_has(3);
  @$pb.TagNumber(4)
  void clearComment() => clearField(4);
}

class Celebrity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Celebrity', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'description')
    ..hasRequiredFields = false
  ;

  Celebrity._() : super();
  factory Celebrity() => create();
  factory Celebrity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Celebrity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Celebrity clone() => Celebrity()..mergeFromMessage(this);
  Celebrity copyWith(void Function(Celebrity) updates) => super.copyWith((message) => updates(message as Celebrity));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Celebrity create() => Celebrity._();
  Celebrity createEmptyInstance() => create();
  static $pb.PbList<Celebrity> createRepeated() => $pb.PbList<Celebrity>();
  @$core.pragma('dart2js:noInline')
  static Celebrity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Celebrity>(create);
  static Celebrity _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);
}

class CelebrityVerifyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CelebrityVerifyReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<CelebrityVerifyReq_Cmd>(1, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: CelebrityVerifyReq_Cmd.QUERY, valueOf: CelebrityVerifyReq_Cmd.valueOf, enumValues: CelebrityVerifyReq_Cmd.values)
    ..aOS(2, 'uid')
    ..aOS(3, 'token')
    ..aOM<Celebrity>(4, 'info', subBuilder: Celebrity.create)
    ..hasRequiredFields = false
  ;

  CelebrityVerifyReq._() : super();
  factory CelebrityVerifyReq() => create();
  factory CelebrityVerifyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CelebrityVerifyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CelebrityVerifyReq clone() => CelebrityVerifyReq()..mergeFromMessage(this);
  CelebrityVerifyReq copyWith(void Function(CelebrityVerifyReq) updates) => super.copyWith((message) => updates(message as CelebrityVerifyReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CelebrityVerifyReq create() => CelebrityVerifyReq._();
  CelebrityVerifyReq createEmptyInstance() => create();
  static $pb.PbList<CelebrityVerifyReq> createRepeated() => $pb.PbList<CelebrityVerifyReq>();
  @$core.pragma('dart2js:noInline')
  static CelebrityVerifyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CelebrityVerifyReq>(create);
  static CelebrityVerifyReq _defaultInstance;

  @$pb.TagNumber(1)
  CelebrityVerifyReq_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(CelebrityVerifyReq_Cmd v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  Celebrity get info => $_getN(3);
  @$pb.TagNumber(4)
  set info(Celebrity v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);
  @$pb.TagNumber(4)
  Celebrity ensureInfo() => $_ensure(3);
}

class CelebrityVerifyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CelebrityVerifyResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..e<CelebrityVerifyResp_State>(2, 'state', $pb.PbFieldType.OE, defaultOrMaker: CelebrityVerifyResp_State.NOT_VERIFY, valueOf: CelebrityVerifyResp_State.valueOf, enumValues: CelebrityVerifyResp_State.values)
    ..aOM<Celebrity>(3, 'info', subBuilder: Celebrity.create)
    ..hasRequiredFields = false
  ;

  CelebrityVerifyResp._() : super();
  factory CelebrityVerifyResp() => create();
  factory CelebrityVerifyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CelebrityVerifyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CelebrityVerifyResp clone() => CelebrityVerifyResp()..mergeFromMessage(this);
  CelebrityVerifyResp copyWith(void Function(CelebrityVerifyResp) updates) => super.copyWith((message) => updates(message as CelebrityVerifyResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CelebrityVerifyResp create() => CelebrityVerifyResp._();
  CelebrityVerifyResp createEmptyInstance() => create();
  static $pb.PbList<CelebrityVerifyResp> createRepeated() => $pb.PbList<CelebrityVerifyResp>();
  @$core.pragma('dart2js:noInline')
  static CelebrityVerifyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CelebrityVerifyResp>(create);
  static CelebrityVerifyResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  CelebrityVerifyResp_State get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(CelebrityVerifyResp_State v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  Celebrity get info => $_getN(2);
  @$pb.TagNumber(3)
  set info(Celebrity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfo() => clearField(3);
  @$pb.TagNumber(3)
  Celebrity ensureInfo() => $_ensure(2);
}

class UserNobleStateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserNobleStateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  UserNobleStateReq._() : super();
  factory UserNobleStateReq() => create();
  factory UserNobleStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserNobleStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserNobleStateReq clone() => UserNobleStateReq()..mergeFromMessage(this);
  UserNobleStateReq copyWith(void Function(UserNobleStateReq) updates) => super.copyWith((message) => updates(message as UserNobleStateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserNobleStateReq create() => UserNobleStateReq._();
  UserNobleStateReq createEmptyInstance() => create();
  static $pb.PbList<UserNobleStateReq> createRepeated() => $pb.PbList<UserNobleStateReq>();
  @$core.pragma('dart2js:noInline')
  static UserNobleStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserNobleStateReq>(create);
  static UserNobleStateReq _defaultInstance;

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

class UserNobleStateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserNobleStateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'noble', $pb.PbFieldType.O3)
    ..aOS(2, 'nobleName')
    ..aOS(3, 'expires')
    ..hasRequiredFields = false
  ;

  UserNobleStateResp._() : super();
  factory UserNobleStateResp() => create();
  factory UserNobleStateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserNobleStateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserNobleStateResp clone() => UserNobleStateResp()..mergeFromMessage(this);
  UserNobleStateResp copyWith(void Function(UserNobleStateResp) updates) => super.copyWith((message) => updates(message as UserNobleStateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserNobleStateResp create() => UserNobleStateResp._();
  UserNobleStateResp createEmptyInstance() => create();
  static $pb.PbList<UserNobleStateResp> createRepeated() => $pb.PbList<UserNobleStateResp>();
  @$core.pragma('dart2js:noInline')
  static UserNobleStateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserNobleStateResp>(create);
  static UserNobleStateResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get noble => $_getIZ(0);
  @$pb.TagNumber(1)
  set noble($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNoble() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoble() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nobleName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nobleName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNobleName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNobleName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get expires => $_getSZ(2);
  @$pb.TagNumber(3)
  set expires($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpires() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpires() => clearField(3);
}

class UserVipStateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserVipStateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  UserVipStateReq._() : super();
  factory UserVipStateReq() => create();
  factory UserVipStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserVipStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserVipStateReq clone() => UserVipStateReq()..mergeFromMessage(this);
  UserVipStateReq copyWith(void Function(UserVipStateReq) updates) => super.copyWith((message) => updates(message as UserVipStateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserVipStateReq create() => UserVipStateReq._();
  UserVipStateReq createEmptyInstance() => create();
  static $pb.PbList<UserVipStateReq> createRepeated() => $pb.PbList<UserVipStateReq>();
  @$core.pragma('dart2js:noInline')
  static UserVipStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserVipStateReq>(create);
  static UserVipStateReq _defaultInstance;

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

class UserVipStateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserVipStateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'vip', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserVipStateResp._() : super();
  factory UserVipStateResp() => create();
  factory UserVipStateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserVipStateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserVipStateResp clone() => UserVipStateResp()..mergeFromMessage(this);
  UserVipStateResp copyWith(void Function(UserVipStateResp) updates) => super.copyWith((message) => updates(message as UserVipStateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserVipStateResp create() => UserVipStateResp._();
  UserVipStateResp createEmptyInstance() => create();
  static $pb.PbList<UserVipStateResp> createRepeated() => $pb.PbList<UserVipStateResp>();
  @$core.pragma('dart2js:noInline')
  static UserVipStateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserVipStateResp>(create);
  static UserVipStateResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get vip => $_getIZ(0);
  @$pb.TagNumber(1)
  set vip($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVip() => $_has(0);
  @$pb.TagNumber(1)
  void clearVip() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get value => $_getIZ(1);
  @$pb.TagNumber(2)
  set value($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class DailyCheckInReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DailyCheckInReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<DailyCheckInReq_Category>(3, 'category', $pb.PbFieldType.OE, defaultOrMaker: DailyCheckInReq_Category.UNK, valueOf: DailyCheckInReq_Category.valueOf, enumValues: DailyCheckInReq_Category.values)
    ..hasRequiredFields = false
  ;

  DailyCheckInReq._() : super();
  factory DailyCheckInReq() => create();
  factory DailyCheckInReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DailyCheckInReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DailyCheckInReq clone() => DailyCheckInReq()..mergeFromMessage(this);
  DailyCheckInReq copyWith(void Function(DailyCheckInReq) updates) => super.copyWith((message) => updates(message as DailyCheckInReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DailyCheckInReq create() => DailyCheckInReq._();
  DailyCheckInReq createEmptyInstance() => create();
  static $pb.PbList<DailyCheckInReq> createRepeated() => $pb.PbList<DailyCheckInReq>();
  @$core.pragma('dart2js:noInline')
  static DailyCheckInReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DailyCheckInReq>(create);
  static DailyCheckInReq _defaultInstance;

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
  DailyCheckInReq_Category get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(DailyCheckInReq_Category v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);
}

class DailyCheckInResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DailyCheckInResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..e<DailyCheckInReq_Category>(2, 'category', $pb.PbFieldType.OE, defaultOrMaker: DailyCheckInReq_Category.UNK, valueOf: DailyCheckInReq_Category.valueOf, enumValues: DailyCheckInReq_Category.values)
    ..a<$core.int>(3, 'count', $pb.PbFieldType.O3)
    ..e<DailyCheckInResp_Grade>(4, 'grade', $pb.PbFieldType.OE, defaultOrMaker: DailyCheckInResp_Grade.NONE, valueOf: DailyCheckInResp_Grade.valueOf, enumValues: DailyCheckInResp_Grade.values)
    ..hasRequiredFields = false
  ;

  DailyCheckInResp._() : super();
  factory DailyCheckInResp() => create();
  factory DailyCheckInResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DailyCheckInResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DailyCheckInResp clone() => DailyCheckInResp()..mergeFromMessage(this);
  DailyCheckInResp copyWith(void Function(DailyCheckInResp) updates) => super.copyWith((message) => updates(message as DailyCheckInResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DailyCheckInResp create() => DailyCheckInResp._();
  DailyCheckInResp createEmptyInstance() => create();
  static $pb.PbList<DailyCheckInResp> createRepeated() => $pb.PbList<DailyCheckInResp>();
  @$core.pragma('dart2js:noInline')
  static DailyCheckInResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DailyCheckInResp>(create);
  static DailyCheckInResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  DailyCheckInReq_Category get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(DailyCheckInReq_Category v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get count => $_getIZ(2);
  @$pb.TagNumber(3)
  set count($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => clearField(3);

  @$pb.TagNumber(4)
  DailyCheckInResp_Grade get grade => $_getN(3);
  @$pb.TagNumber(4)
  set grade(DailyCheckInResp_Grade v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGrade() => $_has(3);
  @$pb.TagNumber(4)
  void clearGrade() => clearField(4);
}

class WearProductReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WearProductReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<WearProductReq_Cmd>(3, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: WearProductReq_Cmd.OFF, valueOf: WearProductReq_Cmd.valueOf, enumValues: WearProductReq_Cmd.values)
    ..a<$core.int>(4, 'category', $pb.PbFieldType.O3)
    ..aOB(5, 'useNew')
    ..a<$core.int>(6, 'productId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WearProductReq._() : super();
  factory WearProductReq() => create();
  factory WearProductReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WearProductReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WearProductReq clone() => WearProductReq()..mergeFromMessage(this);
  WearProductReq copyWith(void Function(WearProductReq) updates) => super.copyWith((message) => updates(message as WearProductReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WearProductReq create() => WearProductReq._();
  WearProductReq createEmptyInstance() => create();
  static $pb.PbList<WearProductReq> createRepeated() => $pb.PbList<WearProductReq>();
  @$core.pragma('dart2js:noInline')
  static WearProductReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WearProductReq>(create);
  static WearProductReq _defaultInstance;

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
  WearProductReq_Cmd get cmd => $_getN(2);
  @$pb.TagNumber(3)
  set cmd(WearProductReq_Cmd v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCmd() => $_has(2);
  @$pb.TagNumber(3)
  void clearCmd() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get category => $_getIZ(3);
  @$pb.TagNumber(4)
  set category($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get useNew => $_getBF(4);
  @$pb.TagNumber(5)
  set useNew($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUseNew() => $_has(4);
  @$pb.TagNumber(5)
  void clearUseNew() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get productId => $_getIZ(5);
  @$pb.TagNumber(6)
  set productId($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProductId() => $_has(5);
  @$pb.TagNumber(6)
  void clearProductId() => clearField(6);
}

class WearProductResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WearProductResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  WearProductResp._() : super();
  factory WearProductResp() => create();
  factory WearProductResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WearProductResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WearProductResp clone() => WearProductResp()..mergeFromMessage(this);
  WearProductResp copyWith(void Function(WearProductResp) updates) => super.copyWith((message) => updates(message as WearProductResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WearProductResp create() => WearProductResp._();
  WearProductResp createEmptyInstance() => create();
  static $pb.PbList<WearProductResp> createRepeated() => $pb.PbList<WearProductResp>();
  @$core.pragma('dart2js:noInline')
  static WearProductResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WearProductResp>(create);
  static WearProductResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class UserDecoratorReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserDecoratorReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  UserDecoratorReq._() : super();
  factory UserDecoratorReq() => create();
  factory UserDecoratorReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDecoratorReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserDecoratorReq clone() => UserDecoratorReq()..mergeFromMessage(this);
  UserDecoratorReq copyWith(void Function(UserDecoratorReq) updates) => super.copyWith((message) => updates(message as UserDecoratorReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserDecoratorReq create() => UserDecoratorReq._();
  UserDecoratorReq createEmptyInstance() => create();
  static $pb.PbList<UserDecoratorReq> createRepeated() => $pb.PbList<UserDecoratorReq>();
  @$core.pragma('dart2js:noInline')
  static UserDecoratorReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDecoratorReq>(create);
  static UserDecoratorReq _defaultInstance;

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

class UserDecoratorResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserDecoratorResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'category', $pb.PbFieldType.O3)
    ..aOS(2, 'expires')
    ..e<UserDecoratorResp_State>(3, 'state', $pb.PbFieldType.OE, defaultOrMaker: UserDecoratorResp_State.OFF, valueOf: UserDecoratorResp_State.valueOf, enumValues: UserDecoratorResp_State.values)
    ..aOS(4, 'title')
    ..aOS(5, 'icon')
    ..hasRequiredFields = false
  ;

  UserDecoratorResp_Item._() : super();
  factory UserDecoratorResp_Item() => create();
  factory UserDecoratorResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDecoratorResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserDecoratorResp_Item clone() => UserDecoratorResp_Item()..mergeFromMessage(this);
  UserDecoratorResp_Item copyWith(void Function(UserDecoratorResp_Item) updates) => super.copyWith((message) => updates(message as UserDecoratorResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserDecoratorResp_Item create() => UserDecoratorResp_Item._();
  UserDecoratorResp_Item createEmptyInstance() => create();
  static $pb.PbList<UserDecoratorResp_Item> createRepeated() => $pb.PbList<UserDecoratorResp_Item>();
  @$core.pragma('dart2js:noInline')
  static UserDecoratorResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDecoratorResp_Item>(create);
  static UserDecoratorResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get category => $_getIZ(0);
  @$pb.TagNumber(1)
  set category($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get expires => $_getSZ(1);
  @$pb.TagNumber(2)
  set expires($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpires() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpires() => clearField(2);

  @$pb.TagNumber(3)
  UserDecoratorResp_State get state => $_getN(2);
  @$pb.TagNumber(3)
  set state(UserDecoratorResp_State v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

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
}

class UserDecoratorResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserDecoratorResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..pc<UserDecoratorResp_Item>(2, 'items', $pb.PbFieldType.PM, subBuilder: UserDecoratorResp_Item.create)
    ..hasRequiredFields = false
  ;

  UserDecoratorResp._() : super();
  factory UserDecoratorResp() => create();
  factory UserDecoratorResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDecoratorResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserDecoratorResp clone() => UserDecoratorResp()..mergeFromMessage(this);
  UserDecoratorResp copyWith(void Function(UserDecoratorResp) updates) => super.copyWith((message) => updates(message as UserDecoratorResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserDecoratorResp create() => UserDecoratorResp._();
  UserDecoratorResp createEmptyInstance() => create();
  static $pb.PbList<UserDecoratorResp> createRepeated() => $pb.PbList<UserDecoratorResp>();
  @$core.pragma('dart2js:noInline')
  static UserDecoratorResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDecoratorResp>(create);
  static UserDecoratorResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<UserDecoratorResp_Item> get items => $_getList(1);
}

class IspPhoneAuthReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IspPhoneAuthReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'ispToken')
    ..aOS(2, 'ispAccessToken')
    ..hasRequiredFields = false
  ;

  IspPhoneAuthReq._() : super();
  factory IspPhoneAuthReq() => create();
  factory IspPhoneAuthReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IspPhoneAuthReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IspPhoneAuthReq clone() => IspPhoneAuthReq()..mergeFromMessage(this);
  IspPhoneAuthReq copyWith(void Function(IspPhoneAuthReq) updates) => super.copyWith((message) => updates(message as IspPhoneAuthReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IspPhoneAuthReq create() => IspPhoneAuthReq._();
  IspPhoneAuthReq createEmptyInstance() => create();
  static $pb.PbList<IspPhoneAuthReq> createRepeated() => $pb.PbList<IspPhoneAuthReq>();
  @$core.pragma('dart2js:noInline')
  static IspPhoneAuthReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IspPhoneAuthReq>(create);
  static IspPhoneAuthReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ispToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set ispToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIspToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearIspToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ispAccessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set ispAccessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIspAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearIspAccessToken() => clearField(2);
}

class IspPhoneAuthResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IspPhoneAuthResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<IspPhoneAuthResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: IspPhoneAuthResp_Status.OK, valueOf: IspPhoneAuthResp_Status.valueOf, enumValues: IspPhoneAuthResp_Status.values)
    ..aOB(2, 'registered')
    ..aOS(3, 'phone')
    ..aOS(4, 'smsCode')
    ..aOS(5, 'description')
    ..hasRequiredFields = false
  ;

  IspPhoneAuthResp._() : super();
  factory IspPhoneAuthResp() => create();
  factory IspPhoneAuthResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IspPhoneAuthResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IspPhoneAuthResp clone() => IspPhoneAuthResp()..mergeFromMessage(this);
  IspPhoneAuthResp copyWith(void Function(IspPhoneAuthResp) updates) => super.copyWith((message) => updates(message as IspPhoneAuthResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IspPhoneAuthResp create() => IspPhoneAuthResp._();
  IspPhoneAuthResp createEmptyInstance() => create();
  static $pb.PbList<IspPhoneAuthResp> createRepeated() => $pb.PbList<IspPhoneAuthResp>();
  @$core.pragma('dart2js:noInline')
  static IspPhoneAuthResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IspPhoneAuthResp>(create);
  static IspPhoneAuthResp _defaultInstance;

  @$pb.TagNumber(1)
  IspPhoneAuthResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(IspPhoneAuthResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get registered => $_getBF(1);
  @$pb.TagNumber(2)
  set registered($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistered() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistered() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phone => $_getSZ(2);
  @$pb.TagNumber(3)
  set phone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhone() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get smsCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set smsCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSmsCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearSmsCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
}

class WxUserAuthReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WxUserAuthReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'openId')
    ..aOS(2, 'accessToken')
    ..hasRequiredFields = false
  ;

  WxUserAuthReq._() : super();
  factory WxUserAuthReq() => create();
  factory WxUserAuthReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WxUserAuthReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WxUserAuthReq clone() => WxUserAuthReq()..mergeFromMessage(this);
  WxUserAuthReq copyWith(void Function(WxUserAuthReq) updates) => super.copyWith((message) => updates(message as WxUserAuthReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WxUserAuthReq create() => WxUserAuthReq._();
  WxUserAuthReq createEmptyInstance() => create();
  static $pb.PbList<WxUserAuthReq> createRepeated() => $pb.PbList<WxUserAuthReq>();
  @$core.pragma('dart2js:noInline')
  static WxUserAuthReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WxUserAuthReq>(create);
  static WxUserAuthReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get openId => $_getSZ(0);
  @$pb.TagNumber(1)
  set openId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpenId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class WxUserAuthResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WxUserAuthResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<WxUserAuthResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: WxUserAuthResp_Status.OK, valueOf: WxUserAuthResp_Status.valueOf, enumValues: WxUserAuthResp_Status.values)
    ..aOB(2, 'registered')
    ..aOS(3, 'phone')
    ..aOS(4, 'smsCode')
    ..aOS(5, 'description')
    ..hasRequiredFields = false
  ;

  WxUserAuthResp._() : super();
  factory WxUserAuthResp() => create();
  factory WxUserAuthResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WxUserAuthResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WxUserAuthResp clone() => WxUserAuthResp()..mergeFromMessage(this);
  WxUserAuthResp copyWith(void Function(WxUserAuthResp) updates) => super.copyWith((message) => updates(message as WxUserAuthResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WxUserAuthResp create() => WxUserAuthResp._();
  WxUserAuthResp createEmptyInstance() => create();
  static $pb.PbList<WxUserAuthResp> createRepeated() => $pb.PbList<WxUserAuthResp>();
  @$core.pragma('dart2js:noInline')
  static WxUserAuthResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WxUserAuthResp>(create);
  static WxUserAuthResp _defaultInstance;

  @$pb.TagNumber(1)
  WxUserAuthResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(WxUserAuthResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get registered => $_getBF(1);
  @$pb.TagNumber(2)
  set registered($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistered() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistered() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phone => $_getSZ(2);
  @$pb.TagNumber(3)
  set phone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhone() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get smsCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set smsCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSmsCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearSmsCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
}

class UserUnRegisterReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserUnRegisterReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  UserUnRegisterReq._() : super();
  factory UserUnRegisterReq() => create();
  factory UserUnRegisterReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserUnRegisterReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserUnRegisterReq clone() => UserUnRegisterReq()..mergeFromMessage(this);
  UserUnRegisterReq copyWith(void Function(UserUnRegisterReq) updates) => super.copyWith((message) => updates(message as UserUnRegisterReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserUnRegisterReq create() => UserUnRegisterReq._();
  UserUnRegisterReq createEmptyInstance() => create();
  static $pb.PbList<UserUnRegisterReq> createRepeated() => $pb.PbList<UserUnRegisterReq>();
  @$core.pragma('dart2js:noInline')
  static UserUnRegisterReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserUnRegisterReq>(create);
  static UserUnRegisterReq _defaultInstance;

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

class UserUnRegisterResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserUnRegisterResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  UserUnRegisterResp._() : super();
  factory UserUnRegisterResp() => create();
  factory UserUnRegisterResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserUnRegisterResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserUnRegisterResp clone() => UserUnRegisterResp()..mergeFromMessage(this);
  UserUnRegisterResp copyWith(void Function(UserUnRegisterResp) updates) => super.copyWith((message) => updates(message as UserUnRegisterResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserUnRegisterResp create() => UserUnRegisterResp._();
  UserUnRegisterResp createEmptyInstance() => create();
  static $pb.PbList<UserUnRegisterResp> createRepeated() => $pb.PbList<UserUnRegisterResp>();
  @$core.pragma('dart2js:noInline')
  static UserUnRegisterResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserUnRegisterResp>(create);
  static UserUnRegisterResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class MyInviterReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MyInviterReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  MyInviterReq._() : super();
  factory MyInviterReq() => create();
  factory MyInviterReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyInviterReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MyInviterReq clone() => MyInviterReq()..mergeFromMessage(this);
  MyInviterReq copyWith(void Function(MyInviterReq) updates) => super.copyWith((message) => updates(message as MyInviterReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyInviterReq create() => MyInviterReq._();
  MyInviterReq createEmptyInstance() => create();
  static $pb.PbList<MyInviterReq> createRepeated() => $pb.PbList<MyInviterReq>();
  @$core.pragma('dart2js:noInline')
  static MyInviterReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyInviterReq>(create);
  static MyInviterReq _defaultInstance;

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

class MyInviterResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MyInviterResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'inviteCode')
    ..aOS(2, 'inviterName')
    ..aOB(3, 'flag')
    ..hasRequiredFields = false
  ;

  MyInviterResp._() : super();
  factory MyInviterResp() => create();
  factory MyInviterResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyInviterResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MyInviterResp clone() => MyInviterResp()..mergeFromMessage(this);
  MyInviterResp copyWith(void Function(MyInviterResp) updates) => super.copyWith((message) => updates(message as MyInviterResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyInviterResp create() => MyInviterResp._();
  MyInviterResp createEmptyInstance() => create();
  static $pb.PbList<MyInviterResp> createRepeated() => $pb.PbList<MyInviterResp>();
  @$core.pragma('dart2js:noInline')
  static MyInviterResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyInviterResp>(create);
  static MyInviterResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inviteCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set inviteCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviteCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get inviterName => $_getSZ(1);
  @$pb.TagNumber(2)
  set inviterName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInviterName() => $_has(1);
  @$pb.TagNumber(2)
  void clearInviterName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get flag => $_getBF(2);
  @$pb.TagNumber(3)
  set flag($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlag() => clearField(3);
}

class UpdateMyInviterReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateMyInviterReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'inviteCode')
    ..hasRequiredFields = false
  ;

  UpdateMyInviterReq._() : super();
  factory UpdateMyInviterReq() => create();
  factory UpdateMyInviterReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMyInviterReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateMyInviterReq clone() => UpdateMyInviterReq()..mergeFromMessage(this);
  UpdateMyInviterReq copyWith(void Function(UpdateMyInviterReq) updates) => super.copyWith((message) => updates(message as UpdateMyInviterReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateMyInviterReq create() => UpdateMyInviterReq._();
  UpdateMyInviterReq createEmptyInstance() => create();
  static $pb.PbList<UpdateMyInviterReq> createRepeated() => $pb.PbList<UpdateMyInviterReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateMyInviterReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMyInviterReq>(create);
  static UpdateMyInviterReq _defaultInstance;

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
  $core.String get inviteCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set inviteCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInviteCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearInviteCode() => clearField(3);
}

class UpdateMyInviterResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateMyInviterResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: STATUS.OK, valueOf: STATUS.valueOf, enumValues: STATUS.values)
    ..hasRequiredFields = false
  ;

  UpdateMyInviterResp._() : super();
  factory UpdateMyInviterResp() => create();
  factory UpdateMyInviterResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMyInviterResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateMyInviterResp clone() => UpdateMyInviterResp()..mergeFromMessage(this);
  UpdateMyInviterResp copyWith(void Function(UpdateMyInviterResp) updates) => super.copyWith((message) => updates(message as UpdateMyInviterResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateMyInviterResp create() => UpdateMyInviterResp._();
  UpdateMyInviterResp createEmptyInstance() => create();
  static $pb.PbList<UpdateMyInviterResp> createRepeated() => $pb.PbList<UpdateMyInviterResp>();
  @$core.pragma('dart2js:noInline')
  static UpdateMyInviterResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMyInviterResp>(create);
  static UpdateMyInviterResp _defaultInstance;

  @$pb.TagNumber(1)
  STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class MyInviteeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MyInviteeReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..a<$core.int>(3, 'pageNum', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MyInviteeReq._() : super();
  factory MyInviteeReq() => create();
  factory MyInviteeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyInviteeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MyInviteeReq clone() => MyInviteeReq()..mergeFromMessage(this);
  MyInviteeReq copyWith(void Function(MyInviteeReq) updates) => super.copyWith((message) => updates(message as MyInviteeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyInviteeReq create() => MyInviteeReq._();
  MyInviteeReq createEmptyInstance() => create();
  static $pb.PbList<MyInviteeReq> createRepeated() => $pb.PbList<MyInviteeReq>();
  @$core.pragma('dart2js:noInline')
  static MyInviteeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyInviteeReq>(create);
  static MyInviteeReq _defaultInstance;

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
  $core.int get pageNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageNum($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageNum() => clearField(3);
}

class MyInviteeResp_InviteRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MyInviteeResp.InviteRecord', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOM<UserInfoBrief>(1, 'user', subBuilder: UserInfoBrief.create)
    ..a<$core.int>(2, 'time', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MyInviteeResp_InviteRecord._() : super();
  factory MyInviteeResp_InviteRecord() => create();
  factory MyInviteeResp_InviteRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyInviteeResp_InviteRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MyInviteeResp_InviteRecord clone() => MyInviteeResp_InviteRecord()..mergeFromMessage(this);
  MyInviteeResp_InviteRecord copyWith(void Function(MyInviteeResp_InviteRecord) updates) => super.copyWith((message) => updates(message as MyInviteeResp_InviteRecord));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyInviteeResp_InviteRecord create() => MyInviteeResp_InviteRecord._();
  MyInviteeResp_InviteRecord createEmptyInstance() => create();
  static $pb.PbList<MyInviteeResp_InviteRecord> createRepeated() => $pb.PbList<MyInviteeResp_InviteRecord>();
  @$core.pragma('dart2js:noInline')
  static MyInviteeResp_InviteRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyInviteeResp_InviteRecord>(create);
  static MyInviteeResp_InviteRecord _defaultInstance;

  @$pb.TagNumber(1)
  UserInfoBrief get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(UserInfoBrief v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  UserInfoBrief ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get time => $_getIZ(1);
  @$pb.TagNumber(2)
  set time($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);
}

class MyInviteeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MyInviteeResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<MyInviteeResp_InviteRecord>(1, 'items', $pb.PbFieldType.PM, subBuilder: MyInviteeResp_InviteRecord.create)
    ..hasRequiredFields = false
  ;

  MyInviteeResp._() : super();
  factory MyInviteeResp() => create();
  factory MyInviteeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyInviteeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MyInviteeResp clone() => MyInviteeResp()..mergeFromMessage(this);
  MyInviteeResp copyWith(void Function(MyInviteeResp) updates) => super.copyWith((message) => updates(message as MyInviteeResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyInviteeResp create() => MyInviteeResp._();
  MyInviteeResp createEmptyInstance() => create();
  static $pb.PbList<MyInviteeResp> createRepeated() => $pb.PbList<MyInviteeResp>();
  @$core.pragma('dart2js:noInline')
  static MyInviteeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyInviteeResp>(create);
  static MyInviteeResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MyInviteeResp_InviteRecord> get items => $_getList(0);
}

class SettlementDailyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SettlementDailyReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..a<$core.int>(3, 'pageNum', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SettlementDailyReq._() : super();
  factory SettlementDailyReq() => create();
  factory SettlementDailyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettlementDailyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SettlementDailyReq clone() => SettlementDailyReq()..mergeFromMessage(this);
  SettlementDailyReq copyWith(void Function(SettlementDailyReq) updates) => super.copyWith((message) => updates(message as SettlementDailyReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettlementDailyReq create() => SettlementDailyReq._();
  SettlementDailyReq createEmptyInstance() => create();
  static $pb.PbList<SettlementDailyReq> createRepeated() => $pb.PbList<SettlementDailyReq>();
  @$core.pragma('dart2js:noInline')
  static SettlementDailyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettlementDailyReq>(create);
  static SettlementDailyReq _defaultInstance;

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
  $core.int get pageNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageNum($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageNum() => clearField(3);
}

class SettlementDailyResp_SettlementRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SettlementDailyResp.SettlementRecord', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'time', $pb.PbFieldType.O3)
    ..aOS(2, 'origin')
    ..a<$core.int>(3, 'amount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SettlementDailyResp_SettlementRecord._() : super();
  factory SettlementDailyResp_SettlementRecord() => create();
  factory SettlementDailyResp_SettlementRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettlementDailyResp_SettlementRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SettlementDailyResp_SettlementRecord clone() => SettlementDailyResp_SettlementRecord()..mergeFromMessage(this);
  SettlementDailyResp_SettlementRecord copyWith(void Function(SettlementDailyResp_SettlementRecord) updates) => super.copyWith((message) => updates(message as SettlementDailyResp_SettlementRecord));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettlementDailyResp_SettlementRecord create() => SettlementDailyResp_SettlementRecord._();
  SettlementDailyResp_SettlementRecord createEmptyInstance() => create();
  static $pb.PbList<SettlementDailyResp_SettlementRecord> createRepeated() => $pb.PbList<SettlementDailyResp_SettlementRecord>();
  @$core.pragma('dart2js:noInline')
  static SettlementDailyResp_SettlementRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettlementDailyResp_SettlementRecord>(create);
  static SettlementDailyResp_SettlementRecord _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get time => $_getIZ(0);
  @$pb.TagNumber(1)
  set time($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get origin => $_getSZ(1);
  @$pb.TagNumber(2)
  set origin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrigin() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class SettlementDailyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SettlementDailyResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<SettlementDailyResp_SettlementRecord>(2, 'items', $pb.PbFieldType.PM, subBuilder: SettlementDailyResp_SettlementRecord.create)
    ..hasRequiredFields = false
  ;

  SettlementDailyResp._() : super();
  factory SettlementDailyResp() => create();
  factory SettlementDailyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettlementDailyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SettlementDailyResp clone() => SettlementDailyResp()..mergeFromMessage(this);
  SettlementDailyResp copyWith(void Function(SettlementDailyResp) updates) => super.copyWith((message) => updates(message as SettlementDailyResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettlementDailyResp create() => SettlementDailyResp._();
  SettlementDailyResp createEmptyInstance() => create();
  static $pb.PbList<SettlementDailyResp> createRepeated() => $pb.PbList<SettlementDailyResp>();
  @$core.pragma('dart2js:noInline')
  static SettlementDailyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettlementDailyResp>(create);
  static SettlementDailyResp _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<SettlementDailyResp_SettlementRecord> get items => $_getList(0);
}

class InviteIncomeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InviteIncomeReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  InviteIncomeReq._() : super();
  factory InviteIncomeReq() => create();
  factory InviteIncomeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteIncomeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InviteIncomeReq clone() => InviteIncomeReq()..mergeFromMessage(this);
  InviteIncomeReq copyWith(void Function(InviteIncomeReq) updates) => super.copyWith((message) => updates(message as InviteIncomeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InviteIncomeReq create() => InviteIncomeReq._();
  InviteIncomeReq createEmptyInstance() => create();
  static $pb.PbList<InviteIncomeReq> createRepeated() => $pb.PbList<InviteIncomeReq>();
  @$core.pragma('dart2js:noInline')
  static InviteIncomeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteIncomeReq>(create);
  static InviteIncomeReq _defaultInstance;

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

class InviteIncomeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InviteIncomeResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'settledIncome', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'unsettleIncome', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  InviteIncomeResp._() : super();
  factory InviteIncomeResp() => create();
  factory InviteIncomeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteIncomeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InviteIncomeResp clone() => InviteIncomeResp()..mergeFromMessage(this);
  InviteIncomeResp copyWith(void Function(InviteIncomeResp) updates) => super.copyWith((message) => updates(message as InviteIncomeResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InviteIncomeResp create() => InviteIncomeResp._();
  InviteIncomeResp createEmptyInstance() => create();
  static $pb.PbList<InviteIncomeResp> createRepeated() => $pb.PbList<InviteIncomeResp>();
  @$core.pragma('dart2js:noInline')
  static InviteIncomeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteIncomeResp>(create);
  static InviteIncomeResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get settledIncome => $_getIZ(0);
  @$pb.TagNumber(1)
  set settledIncome($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSettledIncome() => $_has(0);
  @$pb.TagNumber(1)
  void clearSettledIncome() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get unsettleIncome => $_getIZ(1);
  @$pb.TagNumber(2)
  set unsettleIncome($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnsettleIncome() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnsettleIncome() => clearField(2);
}

