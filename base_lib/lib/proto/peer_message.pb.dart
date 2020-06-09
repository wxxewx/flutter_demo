///
//  Generated code. Do not modify.
//  source: peer_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'peer_message.pbenum.dart';

export 'peer_message.pbenum.dart';

class Level extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Level', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'level', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..hasRequiredFields = false
  ;

  Level._() : super();
  factory Level() => create();
  factory Level.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Level.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Level clone() => Level()..mergeFromMessage(this);
  Level copyWith(void Function(Level) updates) => super.copyWith((message) => updates(message as Level));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Level create() => Level._();
  Level createEmptyInstance() => create();
  static $pb.PbList<Level> createRepeated() => $pb.PbList<Level>();
  @$core.pragma('dart2js:noInline')
  static Level getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Level>(create);
  static Level _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get level => $_getIZ(0);
  @$pb.TagNumber(1)
  set level($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

class PeerUserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PeerUserInfo', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'userId', protoName: 'userId')
    ..aOS(2, 'nickName', protoName: 'nickName')
    ..aOS(3, 'avatar')
    ..aOM<Level>(4, 'vip', subBuilder: Level.create)
    ..aOM<Level>(5, 'noble', subBuilder: Level.create)
    ..aOS(6, 'gender')
    ..aOB(7, 'hideWelcomeNotification', protoName: 'hideWelcomeNotification')
    ..e<PeerUserInfo_BanBanGrade>(8, 'banbanGrade', $pb.PbFieldType.OE, protoName: 'banbanGrade', defaultOrMaker: PeerUserInfo_BanBanGrade.NONE, valueOf: PeerUserInfo_BanBanGrade.valueOf, enumValues: PeerUserInfo_BanBanGrade.values)
    ..hasRequiredFields = false
  ;

  PeerUserInfo._() : super();
  factory PeerUserInfo() => create();
  factory PeerUserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PeerUserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PeerUserInfo clone() => PeerUserInfo()..mergeFromMessage(this);
  PeerUserInfo copyWith(void Function(PeerUserInfo) updates) => super.copyWith((message) => updates(message as PeerUserInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeerUserInfo create() => PeerUserInfo._();
  PeerUserInfo createEmptyInstance() => create();
  static $pb.PbList<PeerUserInfo> createRepeated() => $pb.PbList<PeerUserInfo>();
  @$core.pragma('dart2js:noInline')
  static PeerUserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PeerUserInfo>(create);
  static PeerUserInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nickName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNickName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNickName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  Level get vip => $_getN(3);
  @$pb.TagNumber(4)
  set vip(Level v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasVip() => $_has(3);
  @$pb.TagNumber(4)
  void clearVip() => clearField(4);
  @$pb.TagNumber(4)
  Level ensureVip() => $_ensure(3);

  @$pb.TagNumber(5)
  Level get noble => $_getN(4);
  @$pb.TagNumber(5)
  set noble(Level v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNoble() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoble() => clearField(5);
  @$pb.TagNumber(5)
  Level ensureNoble() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get gender => $_getSZ(5);
  @$pb.TagNumber(6)
  set gender($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGender() => $_has(5);
  @$pb.TagNumber(6)
  void clearGender() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get hideWelcomeNotification => $_getBF(6);
  @$pb.TagNumber(7)
  set hideWelcomeNotification($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHideWelcomeNotification() => $_has(6);
  @$pb.TagNumber(7)
  void clearHideWelcomeNotification() => clearField(7);

  @$pb.TagNumber(8)
  PeerUserInfo_BanBanGrade get banbanGrade => $_getN(7);
  @$pb.TagNumber(8)
  set banbanGrade(PeerUserInfo_BanBanGrade v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBanbanGrade() => $_has(7);
  @$pb.TagNumber(8)
  void clearBanbanGrade() => clearField(8);
}

class Ranks_User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Ranks.User', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'avatar')
    ..aOS(4, 'gender')
    ..a<$core.int>(5, 'age', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'noble', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'vip', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Ranks_User._() : super();
  factory Ranks_User() => create();
  factory Ranks_User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ranks_User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Ranks_User clone() => Ranks_User()..mergeFromMessage(this);
  Ranks_User copyWith(void Function(Ranks_User) updates) => super.copyWith((message) => updates(message as Ranks_User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ranks_User create() => Ranks_User._();
  Ranks_User createEmptyInstance() => create();
  static $pb.PbList<Ranks_User> createRepeated() => $pb.PbList<Ranks_User>();
  @$core.pragma('dart2js:noInline')
  static Ranks_User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ranks_User>(create);
  static Ranks_User _defaultInstance;

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
  $core.String get gender => $_getSZ(3);
  @$pb.TagNumber(4)
  set gender($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGender() => $_has(3);
  @$pb.TagNumber(4)
  void clearGender() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get age => $_getIZ(4);
  @$pb.TagNumber(5)
  set age($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAge() => $_has(4);
  @$pb.TagNumber(5)
  void clearAge() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get noble => $_getIZ(5);
  @$pb.TagNumber(6)
  set noble($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNoble() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoble() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get vip => $_getIZ(6);
  @$pb.TagNumber(7)
  set vip($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVip() => $_has(6);
  @$pb.TagNumber(7)
  void clearVip() => clearField(7);
}

class Ranks_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Ranks.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOM<Ranks_User>(1, 'user', subBuilder: Ranks_User.create)
    ..a<$core.int>(2, 'rank', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'value', $pb.PbFieldType.O3)
    ..aOS(4, 'periodType')
    ..aOS(5, 'rankCategory')
    ..e<Ranks_Scope>(6, 'scope', $pb.PbFieldType.OE, defaultOrMaker: Ranks_Scope.ROOM, valueOf: Ranks_Scope.valueOf, enumValues: Ranks_Scope.values)
    ..hasRequiredFields = false
  ;

  Ranks_Item._() : super();
  factory Ranks_Item() => create();
  factory Ranks_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ranks_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Ranks_Item clone() => Ranks_Item()..mergeFromMessage(this);
  Ranks_Item copyWith(void Function(Ranks_Item) updates) => super.copyWith((message) => updates(message as Ranks_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ranks_Item create() => Ranks_Item._();
  Ranks_Item createEmptyInstance() => create();
  static $pb.PbList<Ranks_Item> createRepeated() => $pb.PbList<Ranks_Item>();
  @$core.pragma('dart2js:noInline')
  static Ranks_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ranks_Item>(create);
  static Ranks_Item _defaultInstance;

  @$pb.TagNumber(1)
  Ranks_User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(Ranks_User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  Ranks_User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get rank => $_getIZ(1);
  @$pb.TagNumber(2)
  set rank($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearRank() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get value => $_getIZ(2);
  @$pb.TagNumber(3)
  set value($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get periodType => $_getSZ(3);
  @$pb.TagNumber(4)
  set periodType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPeriodType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPeriodType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get rankCategory => $_getSZ(4);
  @$pb.TagNumber(5)
  set rankCategory($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRankCategory() => $_has(4);
  @$pb.TagNumber(5)
  void clearRankCategory() => clearField(5);

  @$pb.TagNumber(6)
  Ranks_Scope get scope => $_getN(5);
  @$pb.TagNumber(6)
  set scope(Ranks_Scope v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasScope() => $_has(5);
  @$pb.TagNumber(6)
  void clearScope() => clearField(6);
}

class Ranks extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Ranks', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<Ranks_Item>(2, 'items', $pb.PbFieldType.PM, subBuilder: Ranks_Item.create)
    ..hasRequiredFields = false
  ;

  Ranks._() : super();
  factory Ranks() => create();
  factory Ranks.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ranks.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Ranks clone() => Ranks()..mergeFromMessage(this);
  Ranks copyWith(void Function(Ranks) updates) => super.copyWith((message) => updates(message as Ranks));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ranks create() => Ranks._();
  Ranks createEmptyInstance() => create();
  static $pb.PbList<Ranks> createRepeated() => $pb.PbList<Ranks>();
  @$core.pragma('dart2js:noInline')
  static Ranks getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ranks>(create);
  static Ranks _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<Ranks_Item> get items => $_getList(0);
}

