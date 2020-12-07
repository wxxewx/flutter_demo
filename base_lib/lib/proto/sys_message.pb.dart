///
//  Generated code. Do not modify.
//  source: sys_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'sys_message.pbenum.dart';

export 'sys_message.pbenum.dart';

class SkillListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SkillListReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'skillId')
    ..hasRequiredFields = false
  ;

  SkillListReq._() : super();
  factory SkillListReq() => create();
  factory SkillListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SkillListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SkillListReq clone() => SkillListReq()..mergeFromMessage(this);
  SkillListReq copyWith(void Function(SkillListReq) updates) => super.copyWith((message) => updates(message as SkillListReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SkillListReq create() => SkillListReq._();
  SkillListReq createEmptyInstance() => create();
  static $pb.PbList<SkillListReq> createRepeated() => $pb.PbList<SkillListReq>();
  @$core.pragma('dart2js:noInline')
  static SkillListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SkillListReq>(create);
  static SkillListReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get skillId => $_getSZ(0);
  @$pb.TagNumber(1)
  set skillId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkillId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkillId() => clearField(1);
}

class SkillListResp_SkillGrade extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SkillListResp.SkillGrade', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'skillId')
    ..aOS(2, 'gradeId')
    ..aOS(3, 'gradeTitle')
    ..hasRequiredFields = false
  ;

  SkillListResp_SkillGrade._() : super();
  factory SkillListResp_SkillGrade() => create();
  factory SkillListResp_SkillGrade.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SkillListResp_SkillGrade.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SkillListResp_SkillGrade clone() => SkillListResp_SkillGrade()..mergeFromMessage(this);
  SkillListResp_SkillGrade copyWith(void Function(SkillListResp_SkillGrade) updates) => super.copyWith((message) => updates(message as SkillListResp_SkillGrade));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SkillListResp_SkillGrade create() => SkillListResp_SkillGrade._();
  SkillListResp_SkillGrade createEmptyInstance() => create();
  static $pb.PbList<SkillListResp_SkillGrade> createRepeated() => $pb.PbList<SkillListResp_SkillGrade>();
  @$core.pragma('dart2js:noInline')
  static SkillListResp_SkillGrade getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SkillListResp_SkillGrade>(create);
  static SkillListResp_SkillGrade _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get skillId => $_getSZ(0);
  @$pb.TagNumber(1)
  set skillId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkillId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkillId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gradeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set gradeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGradeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGradeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get gradeTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set gradeTitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGradeTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearGradeTitle() => clearField(3);
}

class SkillListResp_Skill extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SkillListResp.Skill', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'title')
    ..aOS(3, 'iconUrl')
    ..e<SkillListResp_Category>(4, 'category', $pb.PbFieldType.OE, defaultOrMaker: SkillListResp_Category.VOICE, valueOf: SkillListResp_Category.valueOf, enumValues: SkillListResp_Category.values)
    ..pc<SkillListResp_SkillGrade>(5, 'grades', $pb.PbFieldType.PM, subBuilder: SkillListResp_SkillGrade.create)
    ..hasRequiredFields = false
  ;

  SkillListResp_Skill._() : super();
  factory SkillListResp_Skill() => create();
  factory SkillListResp_Skill.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SkillListResp_Skill.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SkillListResp_Skill clone() => SkillListResp_Skill()..mergeFromMessage(this);
  SkillListResp_Skill copyWith(void Function(SkillListResp_Skill) updates) => super.copyWith((message) => updates(message as SkillListResp_Skill));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SkillListResp_Skill create() => SkillListResp_Skill._();
  SkillListResp_Skill createEmptyInstance() => create();
  static $pb.PbList<SkillListResp_Skill> createRepeated() => $pb.PbList<SkillListResp_Skill>();
  @$core.pragma('dart2js:noInline')
  static SkillListResp_Skill getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SkillListResp_Skill>(create);
  static SkillListResp_Skill _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get iconUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set iconUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIconUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconUrl() => clearField(3);

  @$pb.TagNumber(4)
  SkillListResp_Category get category => $_getN(3);
  @$pb.TagNumber(4)
  set category(SkillListResp_Category v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<SkillListResp_SkillGrade> get grades => $_getList(4);
}

class SkillListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SkillListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<SkillListResp_Skill>(1, 'skills', $pb.PbFieldType.PM, subBuilder: SkillListResp_Skill.create)
    ..hasRequiredFields = false
  ;

  SkillListResp._() : super();
  factory SkillListResp() => create();
  factory SkillListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SkillListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SkillListResp clone() => SkillListResp()..mergeFromMessage(this);
  SkillListResp copyWith(void Function(SkillListResp) updates) => super.copyWith((message) => updates(message as SkillListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SkillListResp create() => SkillListResp._();
  SkillListResp createEmptyInstance() => create();
  static $pb.PbList<SkillListResp> createRepeated() => $pb.PbList<SkillListResp>();
  @$core.pragma('dart2js:noInline')
  static SkillListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SkillListResp>(create);
  static SkillListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SkillListResp_Skill> get skills => $_getList(0);
}

class HobbyListResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HobbyListResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'hobbyId', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..aOS(3, 'category')
    ..hasRequiredFields = false
  ;

  HobbyListResp_Item._() : super();
  factory HobbyListResp_Item() => create();
  factory HobbyListResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HobbyListResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HobbyListResp_Item clone() => HobbyListResp_Item()..mergeFromMessage(this);
  HobbyListResp_Item copyWith(void Function(HobbyListResp_Item) updates) => super.copyWith((message) => updates(message as HobbyListResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HobbyListResp_Item create() => HobbyListResp_Item._();
  HobbyListResp_Item createEmptyInstance() => create();
  static $pb.PbList<HobbyListResp_Item> createRepeated() => $pb.PbList<HobbyListResp_Item>();
  @$core.pragma('dart2js:noInline')
  static HobbyListResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HobbyListResp_Item>(create);
  static HobbyListResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get hobbyId => $_getIZ(0);
  @$pb.TagNumber(1)
  set hobbyId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHobbyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHobbyId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get category => $_getSZ(2);
  @$pb.TagNumber(3)
  set category($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);
}

class HobbyListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HobbyListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<HobbyListResp_Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: HobbyListResp_Item.create)
    ..hasRequiredFields = false
  ;

  HobbyListResp._() : super();
  factory HobbyListResp() => create();
  factory HobbyListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HobbyListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HobbyListResp clone() => HobbyListResp()..mergeFromMessage(this);
  HobbyListResp copyWith(void Function(HobbyListResp) updates) => super.copyWith((message) => updates(message as HobbyListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HobbyListResp create() => HobbyListResp._();
  HobbyListResp createEmptyInstance() => create();
  static $pb.PbList<HobbyListResp> createRepeated() => $pb.PbList<HobbyListResp>();
  @$core.pragma('dart2js:noInline')
  static HobbyListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HobbyListResp>(create);
  static HobbyListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HobbyListResp_Item> get items => $_getList(0);
}

class CareerListResp_Career extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CareerListResp.Career', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'title')
    ..aOS(3, 'category')
    ..hasRequiredFields = false
  ;

  CareerListResp_Career._() : super();
  factory CareerListResp_Career() => create();
  factory CareerListResp_Career.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CareerListResp_Career.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CareerListResp_Career clone() => CareerListResp_Career()..mergeFromMessage(this);
  CareerListResp_Career copyWith(void Function(CareerListResp_Career) updates) => super.copyWith((message) => updates(message as CareerListResp_Career));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CareerListResp_Career create() => CareerListResp_Career._();
  CareerListResp_Career createEmptyInstance() => create();
  static $pb.PbList<CareerListResp_Career> createRepeated() => $pb.PbList<CareerListResp_Career>();
  @$core.pragma('dart2js:noInline')
  static CareerListResp_Career getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CareerListResp_Career>(create);
  static CareerListResp_Career _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get category => $_getSZ(2);
  @$pb.TagNumber(3)
  set category($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);
}

class CareerListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CareerListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<CareerListResp_Career>(1, 'careers', $pb.PbFieldType.PM, subBuilder: CareerListResp_Career.create)
    ..hasRequiredFields = false
  ;

  CareerListResp._() : super();
  factory CareerListResp() => create();
  factory CareerListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CareerListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CareerListResp clone() => CareerListResp()..mergeFromMessage(this);
  CareerListResp copyWith(void Function(CareerListResp) updates) => super.copyWith((message) => updates(message as CareerListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CareerListResp create() => CareerListResp._();
  CareerListResp createEmptyInstance() => create();
  static $pb.PbList<CareerListResp> createRepeated() => $pb.PbList<CareerListResp>();
  @$core.pragma('dart2js:noInline')
  static CareerListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CareerListResp>(create);
  static CareerListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CareerListResp_Career> get careers => $_getList(0);
}

class MusicSearchReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MusicSearchReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'title')
    ..hasRequiredFields = false
  ;

  MusicSearchReq._() : super();
  factory MusicSearchReq() => create();
  factory MusicSearchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MusicSearchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MusicSearchReq clone() => MusicSearchReq()..mergeFromMessage(this);
  MusicSearchReq copyWith(void Function(MusicSearchReq) updates) => super.copyWith((message) => updates(message as MusicSearchReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MusicSearchReq create() => MusicSearchReq._();
  MusicSearchReq createEmptyInstance() => create();
  static $pb.PbList<MusicSearchReq> createRepeated() => $pb.PbList<MusicSearchReq>();
  @$core.pragma('dart2js:noInline')
  static MusicSearchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MusicSearchReq>(create);
  static MusicSearchReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);
}

class MusicSearchResp_Music extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MusicSearchResp.Music', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'author')
    ..aOS(3, 'url')
    ..aOS(4, 'songId')
    ..aOS(5, 'albumId')
    ..hasRequiredFields = false
  ;

  MusicSearchResp_Music._() : super();
  factory MusicSearchResp_Music() => create();
  factory MusicSearchResp_Music.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MusicSearchResp_Music.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MusicSearchResp_Music clone() => MusicSearchResp_Music()..mergeFromMessage(this);
  MusicSearchResp_Music copyWith(void Function(MusicSearchResp_Music) updates) => super.copyWith((message) => updates(message as MusicSearchResp_Music));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MusicSearchResp_Music create() => MusicSearchResp_Music._();
  MusicSearchResp_Music createEmptyInstance() => create();
  static $pb.PbList<MusicSearchResp_Music> createRepeated() => $pb.PbList<MusicSearchResp_Music>();
  @$core.pragma('dart2js:noInline')
  static MusicSearchResp_Music getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MusicSearchResp_Music>(create);
  static MusicSearchResp_Music _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get author => $_getSZ(1);
  @$pb.TagNumber(2)
  set author($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthor() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthor() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get songId => $_getSZ(3);
  @$pb.TagNumber(4)
  set songId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSongId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSongId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get albumId => $_getSZ(4);
  @$pb.TagNumber(5)
  set albumId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAlbumId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAlbumId() => clearField(5);
}

class MusicSearchResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MusicSearchResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<MusicSearchResp_Music>(1, 'musics', $pb.PbFieldType.PM, subBuilder: MusicSearchResp_Music.create)
    ..e<MusicSearchResp_STATUS>(2, 'status', $pb.PbFieldType.OE, defaultOrMaker: MusicSearchResp_STATUS.OK, valueOf: MusicSearchResp_STATUS.valueOf, enumValues: MusicSearchResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  MusicSearchResp._() : super();
  factory MusicSearchResp() => create();
  factory MusicSearchResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MusicSearchResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MusicSearchResp clone() => MusicSearchResp()..mergeFromMessage(this);
  MusicSearchResp copyWith(void Function(MusicSearchResp) updates) => super.copyWith((message) => updates(message as MusicSearchResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MusicSearchResp create() => MusicSearchResp._();
  MusicSearchResp createEmptyInstance() => create();
  static $pb.PbList<MusicSearchResp> createRepeated() => $pb.PbList<MusicSearchResp>();
  @$core.pragma('dart2js:noInline')
  static MusicSearchResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MusicSearchResp>(create);
  static MusicSearchResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MusicSearchResp_Music> get musics => $_getList(0);

  @$pb.TagNumber(2)
  MusicSearchResp_STATUS get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(MusicSearchResp_STATUS v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class MusicPlayUrlReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MusicPlayUrlReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'songId')
    ..aOS(2, 'albumId')
    ..hasRequiredFields = false
  ;

  MusicPlayUrlReq._() : super();
  factory MusicPlayUrlReq() => create();
  factory MusicPlayUrlReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MusicPlayUrlReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MusicPlayUrlReq clone() => MusicPlayUrlReq()..mergeFromMessage(this);
  MusicPlayUrlReq copyWith(void Function(MusicPlayUrlReq) updates) => super.copyWith((message) => updates(message as MusicPlayUrlReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MusicPlayUrlReq create() => MusicPlayUrlReq._();
  MusicPlayUrlReq createEmptyInstance() => create();
  static $pb.PbList<MusicPlayUrlReq> createRepeated() => $pb.PbList<MusicPlayUrlReq>();
  @$core.pragma('dart2js:noInline')
  static MusicPlayUrlReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MusicPlayUrlReq>(create);
  static MusicPlayUrlReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get songId => $_getSZ(0);
  @$pb.TagNumber(1)
  set songId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get albumId => $_getSZ(1);
  @$pb.TagNumber(2)
  set albumId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlbumId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlbumId() => clearField(2);
}

class MusicPlayUrlResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MusicPlayUrlResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'playUrl')
    ..hasRequiredFields = false
  ;

  MusicPlayUrlResp._() : super();
  factory MusicPlayUrlResp() => create();
  factory MusicPlayUrlResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MusicPlayUrlResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MusicPlayUrlResp clone() => MusicPlayUrlResp()..mergeFromMessage(this);
  MusicPlayUrlResp copyWith(void Function(MusicPlayUrlResp) updates) => super.copyWith((message) => updates(message as MusicPlayUrlResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MusicPlayUrlResp create() => MusicPlayUrlResp._();
  MusicPlayUrlResp createEmptyInstance() => create();
  static $pb.PbList<MusicPlayUrlResp> createRepeated() => $pb.PbList<MusicPlayUrlResp>();
  @$core.pragma('dart2js:noInline')
  static MusicPlayUrlResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MusicPlayUrlResp>(create);
  static MusicPlayUrlResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set playUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayUrl() => clearField(1);
}

class RoomCategoryListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomCategoryListReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  RoomCategoryListReq._() : super();
  factory RoomCategoryListReq() => create();
  factory RoomCategoryListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomCategoryListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomCategoryListReq clone() => RoomCategoryListReq()..mergeFromMessage(this);
  RoomCategoryListReq copyWith(void Function(RoomCategoryListReq) updates) => super.copyWith((message) => updates(message as RoomCategoryListReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomCategoryListReq create() => RoomCategoryListReq._();
  RoomCategoryListReq createEmptyInstance() => create();
  static $pb.PbList<RoomCategoryListReq> createRepeated() => $pb.PbList<RoomCategoryListReq>();
  @$core.pragma('dart2js:noInline')
  static RoomCategoryListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomCategoryListReq>(create);
  static RoomCategoryListReq _defaultInstance;

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

class RoomCategoryListResp_TopicPortal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomCategoryListResp.TopicPortal', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'icon')
    ..aOS(2, 'title')
    ..aOS(3, 'portal')
    ..aOB(4, 'controlled')
    ..hasRequiredFields = false
  ;

  RoomCategoryListResp_TopicPortal._() : super();
  factory RoomCategoryListResp_TopicPortal() => create();
  factory RoomCategoryListResp_TopicPortal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomCategoryListResp_TopicPortal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomCategoryListResp_TopicPortal clone() => RoomCategoryListResp_TopicPortal()..mergeFromMessage(this);
  RoomCategoryListResp_TopicPortal copyWith(void Function(RoomCategoryListResp_TopicPortal) updates) => super.copyWith((message) => updates(message as RoomCategoryListResp_TopicPortal));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomCategoryListResp_TopicPortal create() => RoomCategoryListResp_TopicPortal._();
  RoomCategoryListResp_TopicPortal createEmptyInstance() => create();
  static $pb.PbList<RoomCategoryListResp_TopicPortal> createRepeated() => $pb.PbList<RoomCategoryListResp_TopicPortal>();
  @$core.pragma('dart2js:noInline')
  static RoomCategoryListResp_TopicPortal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomCategoryListResp_TopicPortal>(create);
  static RoomCategoryListResp_TopicPortal _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get icon => $_getSZ(0);
  @$pb.TagNumber(1)
  set icon($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get portal => $_getSZ(2);
  @$pb.TagNumber(3)
  set portal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPortal() => $_has(2);
  @$pb.TagNumber(3)
  void clearPortal() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get controlled => $_getBF(3);
  @$pb.TagNumber(4)
  set controlled($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasControlled() => $_has(3);
  @$pb.TagNumber(4)
  void clearControlled() => clearField(4);
}

class RoomCategoryListResp_Category extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomCategoryListResp.Category', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cateId', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..a<$core.int>(3, 'seatCount', $pb.PbFieldType.O3)
    ..pc<RoomCategoryListResp_TopicPortal>(4, 'topics', $pb.PbFieldType.PM, subBuilder: RoomCategoryListResp_TopicPortal.create)
    ..hasRequiredFields = false
  ;

  RoomCategoryListResp_Category._() : super();
  factory RoomCategoryListResp_Category() => create();
  factory RoomCategoryListResp_Category.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomCategoryListResp_Category.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomCategoryListResp_Category clone() => RoomCategoryListResp_Category()..mergeFromMessage(this);
  RoomCategoryListResp_Category copyWith(void Function(RoomCategoryListResp_Category) updates) => super.copyWith((message) => updates(message as RoomCategoryListResp_Category));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomCategoryListResp_Category create() => RoomCategoryListResp_Category._();
  RoomCategoryListResp_Category createEmptyInstance() => create();
  static $pb.PbList<RoomCategoryListResp_Category> createRepeated() => $pb.PbList<RoomCategoryListResp_Category>();
  @$core.pragma('dart2js:noInline')
  static RoomCategoryListResp_Category getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomCategoryListResp_Category>(create);
  static RoomCategoryListResp_Category _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cateId => $_getIZ(0);
  @$pb.TagNumber(1)
  set cateId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCateId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get seatCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set seatCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeatCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeatCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<RoomCategoryListResp_TopicPortal> get topics => $_getList(3);
}

class RoomCategoryListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomCategoryListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<RoomCategoryListResp_Category>(1, 'categories', $pb.PbFieldType.PM, subBuilder: RoomCategoryListResp_Category.create)
    ..hasRequiredFields = false
  ;

  RoomCategoryListResp._() : super();
  factory RoomCategoryListResp() => create();
  factory RoomCategoryListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomCategoryListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomCategoryListResp clone() => RoomCategoryListResp()..mergeFromMessage(this);
  RoomCategoryListResp copyWith(void Function(RoomCategoryListResp) updates) => super.copyWith((message) => updates(message as RoomCategoryListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomCategoryListResp create() => RoomCategoryListResp._();
  RoomCategoryListResp createEmptyInstance() => create();
  static $pb.PbList<RoomCategoryListResp> createRepeated() => $pb.PbList<RoomCategoryListResp>();
  @$core.pragma('dart2js:noInline')
  static RoomCategoryListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomCategoryListResp>(create);
  static RoomCategoryListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RoomCategoryListResp_Category> get categories => $_getList(0);
}

class ComplainReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ComplainReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<ComplainReq_CTYPE>(3, 'ctype', $pb.PbFieldType.OE, defaultOrMaker: ComplainReq_CTYPE.USER, valueOf: ComplainReq_CTYPE.valueOf, enumValues: ComplainReq_CTYPE.values)
    ..aOS(4, 'targetId')
    ..aOS(5, 'violationId')
    ..aOS(6, 'comment')
    ..pPS(7, 'urls')
    ..hasRequiredFields = false
  ;

  ComplainReq._() : super();
  factory ComplainReq() => create();
  factory ComplainReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplainReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ComplainReq clone() => ComplainReq()..mergeFromMessage(this);
  ComplainReq copyWith(void Function(ComplainReq) updates) => super.copyWith((message) => updates(message as ComplainReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComplainReq create() => ComplainReq._();
  ComplainReq createEmptyInstance() => create();
  static $pb.PbList<ComplainReq> createRepeated() => $pb.PbList<ComplainReq>();
  @$core.pragma('dart2js:noInline')
  static ComplainReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplainReq>(create);
  static ComplainReq _defaultInstance;

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
  ComplainReq_CTYPE get ctype => $_getN(2);
  @$pb.TagNumber(3)
  set ctype(ComplainReq_CTYPE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearCtype() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get targetId => $_getSZ(3);
  @$pb.TagNumber(4)
  set targetId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTargetId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get violationId => $_getSZ(4);
  @$pb.TagNumber(5)
  set violationId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasViolationId() => $_has(4);
  @$pb.TagNumber(5)
  void clearViolationId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get comment => $_getSZ(5);
  @$pb.TagNumber(6)
  set comment($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasComment() => $_has(5);
  @$pb.TagNumber(6)
  void clearComment() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get urls => $_getList(6);
}

class ComplainResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ComplainResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ComplainResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: ComplainResp_STATUS.OK, valueOf: ComplainResp_STATUS.valueOf, enumValues: ComplainResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  ComplainResp._() : super();
  factory ComplainResp() => create();
  factory ComplainResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplainResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ComplainResp clone() => ComplainResp()..mergeFromMessage(this);
  ComplainResp copyWith(void Function(ComplainResp) updates) => super.copyWith((message) => updates(message as ComplainResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComplainResp create() => ComplainResp._();
  ComplainResp createEmptyInstance() => create();
  static $pb.PbList<ComplainResp> createRepeated() => $pb.PbList<ComplainResp>();
  @$core.pragma('dart2js:noInline')
  static ComplainResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplainResp>(create);
  static ComplainResp _defaultInstance;

  @$pb.TagNumber(1)
  ComplainResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ComplainResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class NobleListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NobleListReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  NobleListReq._() : super();
  factory NobleListReq() => create();
  factory NobleListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NobleListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NobleListReq clone() => NobleListReq()..mergeFromMessage(this);
  NobleListReq copyWith(void Function(NobleListReq) updates) => super.copyWith((message) => updates(message as NobleListReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NobleListReq create() => NobleListReq._();
  NobleListReq createEmptyInstance() => create();
  static $pb.PbList<NobleListReq> createRepeated() => $pb.PbList<NobleListReq>();
  @$core.pragma('dart2js:noInline')
  static NobleListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NobleListReq>(create);
  static NobleListReq _defaultInstance;
}

class NobleListResp_Noble extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NobleListResp.Noble', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'nid', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..hasRequiredFields = false
  ;

  NobleListResp_Noble._() : super();
  factory NobleListResp_Noble() => create();
  factory NobleListResp_Noble.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NobleListResp_Noble.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NobleListResp_Noble clone() => NobleListResp_Noble()..mergeFromMessage(this);
  NobleListResp_Noble copyWith(void Function(NobleListResp_Noble) updates) => super.copyWith((message) => updates(message as NobleListResp_Noble));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NobleListResp_Noble create() => NobleListResp_Noble._();
  NobleListResp_Noble createEmptyInstance() => create();
  static $pb.PbList<NobleListResp_Noble> createRepeated() => $pb.PbList<NobleListResp_Noble>();
  @$core.pragma('dart2js:noInline')
  static NobleListResp_Noble getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NobleListResp_Noble>(create);
  static NobleListResp_Noble _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nid => $_getIZ(0);
  @$pb.TagNumber(1)
  set nid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNid() => $_has(0);
  @$pb.TagNumber(1)
  void clearNid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

class NobleListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NobleListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<NobleListResp_Noble>(1, 'nobles', $pb.PbFieldType.PM, subBuilder: NobleListResp_Noble.create)
    ..hasRequiredFields = false
  ;

  NobleListResp._() : super();
  factory NobleListResp() => create();
  factory NobleListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NobleListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NobleListResp clone() => NobleListResp()..mergeFromMessage(this);
  NobleListResp copyWith(void Function(NobleListResp) updates) => super.copyWith((message) => updates(message as NobleListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NobleListResp create() => NobleListResp._();
  NobleListResp createEmptyInstance() => create();
  static $pb.PbList<NobleListResp> createRepeated() => $pb.PbList<NobleListResp>();
  @$core.pragma('dart2js:noInline')
  static NobleListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NobleListResp>(create);
  static NobleListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NobleListResp_Noble> get nobles => $_getList(0);
}

class ServerAddrReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServerAddrReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'version')
    ..aOS(2, 'platform')
    ..aOS(3, 'channel')
    ..aOS(4, 'uid')
    ..hasRequiredFields = false
  ;

  ServerAddrReq._() : super();
  factory ServerAddrReq() => create();
  factory ServerAddrReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerAddrReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServerAddrReq clone() => ServerAddrReq()..mergeFromMessage(this);
  ServerAddrReq copyWith(void Function(ServerAddrReq) updates) => super.copyWith((message) => updates(message as ServerAddrReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerAddrReq create() => ServerAddrReq._();
  ServerAddrReq createEmptyInstance() => create();
  static $pb.PbList<ServerAddrReq> createRepeated() => $pb.PbList<ServerAddrReq>();
  @$core.pragma('dart2js:noInline')
  static ServerAddrReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerAddrReq>(create);
  static ServerAddrReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get platform => $_getSZ(1);
  @$pb.TagNumber(2)
  set platform($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlatform() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlatform() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get channel => $_getSZ(2);
  @$pb.TagNumber(3)
  set channel($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uid => $_getSZ(3);
  @$pb.TagNumber(4)
  set uid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid() => clearField(4);
}

class ServerAddrResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServerAddrResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ServerAddrResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: ServerAddrResp_Status.OK, valueOf: ServerAddrResp_Status.valueOf, enumValues: ServerAddrResp_Status.values)
    ..m<$core.int, $core.String>(2, 'servers', entryClassName: 'ServerAddrResp.ServersEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('proto_def'))
    ..hasRequiredFields = false
  ;

  ServerAddrResp._() : super();
  factory ServerAddrResp() => create();
  factory ServerAddrResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerAddrResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServerAddrResp clone() => ServerAddrResp()..mergeFromMessage(this);
  ServerAddrResp copyWith(void Function(ServerAddrResp) updates) => super.copyWith((message) => updates(message as ServerAddrResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerAddrResp create() => ServerAddrResp._();
  ServerAddrResp createEmptyInstance() => create();
  static $pb.PbList<ServerAddrResp> createRepeated() => $pb.PbList<ServerAddrResp>();
  @$core.pragma('dart2js:noInline')
  static ServerAddrResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerAddrResp>(create);
  static ServerAddrResp _defaultInstance;

  @$pb.TagNumber(1)
  ServerAddrResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ServerAddrResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.int, $core.String> get servers => $_getMap(1);
}

class ApplyInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ApplyInfo', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'img')
    ..aOS(2, 'audio')
    ..aOS(3, 'description')
    ..a<$core.int>(4, 'lowestPrice', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'skillId', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'skillGrade', $pb.PbFieldType.O3)
    ..aOS(7, 'gameUid')
    ..a<$core.int>(8, 'duration', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ApplyInfo._() : super();
  factory ApplyInfo() => create();
  factory ApplyInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ApplyInfo clone() => ApplyInfo()..mergeFromMessage(this);
  ApplyInfo copyWith(void Function(ApplyInfo) updates) => super.copyWith((message) => updates(message as ApplyInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyInfo create() => ApplyInfo._();
  ApplyInfo createEmptyInstance() => create();
  static $pb.PbList<ApplyInfo> createRepeated() => $pb.PbList<ApplyInfo>();
  @$core.pragma('dart2js:noInline')
  static ApplyInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyInfo>(create);
  static ApplyInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get img => $_getSZ(0);
  @$pb.TagNumber(1)
  set img($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImg() => $_has(0);
  @$pb.TagNumber(1)
  void clearImg() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get audio => $_getSZ(1);
  @$pb.TagNumber(2)
  set audio($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAudio() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudio() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get lowestPrice => $_getIZ(3);
  @$pb.TagNumber(4)
  set lowestPrice($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLowestPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearLowestPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get skillId => $_getIZ(4);
  @$pb.TagNumber(5)
  set skillId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSkillId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSkillId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get skillGrade => $_getIZ(5);
  @$pb.TagNumber(6)
  set skillGrade($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSkillGrade() => $_has(5);
  @$pb.TagNumber(6)
  void clearSkillGrade() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get gameUid => $_getSZ(6);
  @$pb.TagNumber(7)
  set gameUid($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGameUid() => $_has(6);
  @$pb.TagNumber(7)
  void clearGameUid() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get duration => $_getIZ(7);
  @$pb.TagNumber(8)
  set duration($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDuration() => $_has(7);
  @$pb.TagNumber(8)
  void clearDuration() => clearField(8);
}

class ApplyTip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ApplyTip', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'description')
    ..aOS(2, 'requirement')
    ..aOS(3, 'exampleImg')
    ..hasRequiredFields = false
  ;

  ApplyTip._() : super();
  factory ApplyTip() => create();
  factory ApplyTip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyTip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ApplyTip clone() => ApplyTip()..mergeFromMessage(this);
  ApplyTip copyWith(void Function(ApplyTip) updates) => super.copyWith((message) => updates(message as ApplyTip));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyTip create() => ApplyTip._();
  ApplyTip createEmptyInstance() => create();
  static $pb.PbList<ApplyTip> createRepeated() => $pb.PbList<ApplyTip>();
  @$core.pragma('dart2js:noInline')
  static ApplyTip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyTip>(create);
  static ApplyTip _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get requirement => $_getSZ(1);
  @$pb.TagNumber(2)
  set requirement($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequirement() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequirement() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get exampleImg => $_getSZ(2);
  @$pb.TagNumber(3)
  set exampleImg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExampleImg() => $_has(2);
  @$pb.TagNumber(3)
  void clearExampleImg() => clearField(3);
}

class SkillApplyUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SkillApplyUpdateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SkillApplyUpdateReq_Cmd>(1, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: SkillApplyUpdateReq_Cmd.UNK, valueOf: SkillApplyUpdateReq_Cmd.valueOf, enumValues: SkillApplyUpdateReq_Cmd.values)
    ..aOS(2, 'uid')
    ..aOS(3, 'token')
    ..a<$core.int>(4, 'skillId', $pb.PbFieldType.O3)
    ..aOM<ApplyInfo>(5, 'info', subBuilder: ApplyInfo.create)
    ..hasRequiredFields = false
  ;

  SkillApplyUpdateReq._() : super();
  factory SkillApplyUpdateReq() => create();
  factory SkillApplyUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SkillApplyUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SkillApplyUpdateReq clone() => SkillApplyUpdateReq()..mergeFromMessage(this);
  SkillApplyUpdateReq copyWith(void Function(SkillApplyUpdateReq) updates) => super.copyWith((message) => updates(message as SkillApplyUpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SkillApplyUpdateReq create() => SkillApplyUpdateReq._();
  SkillApplyUpdateReq createEmptyInstance() => create();
  static $pb.PbList<SkillApplyUpdateReq> createRepeated() => $pb.PbList<SkillApplyUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static SkillApplyUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SkillApplyUpdateReq>(create);
  static SkillApplyUpdateReq _defaultInstance;

  @$pb.TagNumber(1)
  SkillApplyUpdateReq_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(SkillApplyUpdateReq_Cmd v) { setField(1, v); }
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
  $core.int get skillId => $_getIZ(3);
  @$pb.TagNumber(4)
  set skillId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSkillId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkillId() => clearField(4);

  @$pb.TagNumber(5)
  ApplyInfo get info => $_getN(4);
  @$pb.TagNumber(5)
  set info(ApplyInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearInfo() => clearField(5);
  @$pb.TagNumber(5)
  ApplyInfo ensureInfo() => $_ensure(4);
}

class SkillApplyUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SkillApplyUpdateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SkillApplyUpdateResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: SkillApplyUpdateResp_Status.OK, valueOf: SkillApplyUpdateResp_Status.valueOf, enumValues: SkillApplyUpdateResp_Status.values)
    ..hasRequiredFields = false
  ;

  SkillApplyUpdateResp._() : super();
  factory SkillApplyUpdateResp() => create();
  factory SkillApplyUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SkillApplyUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SkillApplyUpdateResp clone() => SkillApplyUpdateResp()..mergeFromMessage(this);
  SkillApplyUpdateResp copyWith(void Function(SkillApplyUpdateResp) updates) => super.copyWith((message) => updates(message as SkillApplyUpdateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SkillApplyUpdateResp create() => SkillApplyUpdateResp._();
  SkillApplyUpdateResp createEmptyInstance() => create();
  static $pb.PbList<SkillApplyUpdateResp> createRepeated() => $pb.PbList<SkillApplyUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static SkillApplyUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SkillApplyUpdateResp>(create);
  static SkillApplyUpdateResp _defaultInstance;

  @$pb.TagNumber(1)
  SkillApplyUpdateResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SkillApplyUpdateResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SkillApplyQueryReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SkillApplyQueryReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..a<$core.int>(3, 'skillId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SkillApplyQueryReq._() : super();
  factory SkillApplyQueryReq() => create();
  factory SkillApplyQueryReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SkillApplyQueryReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SkillApplyQueryReq clone() => SkillApplyQueryReq()..mergeFromMessage(this);
  SkillApplyQueryReq copyWith(void Function(SkillApplyQueryReq) updates) => super.copyWith((message) => updates(message as SkillApplyQueryReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SkillApplyQueryReq create() => SkillApplyQueryReq._();
  SkillApplyQueryReq createEmptyInstance() => create();
  static $pb.PbList<SkillApplyQueryReq> createRepeated() => $pb.PbList<SkillApplyQueryReq>();
  @$core.pragma('dart2js:noInline')
  static SkillApplyQueryReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SkillApplyQueryReq>(create);
  static SkillApplyQueryReq _defaultInstance;

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
  $core.int get skillId => $_getIZ(2);
  @$pb.TagNumber(3)
  set skillId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSkillId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkillId() => clearField(3);
}

class SkillApplyQueryResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SkillApplyQueryResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SkillApplyQueryResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: SkillApplyQueryResp_Status.OK, valueOf: SkillApplyQueryResp_Status.valueOf, enumValues: SkillApplyQueryResp_Status.values)
    ..e<SkillApplyQueryResp_ApplyState>(2, 'state', $pb.PbFieldType.OE, defaultOrMaker: SkillApplyQueryResp_ApplyState.NOTAPPLY, valueOf: SkillApplyQueryResp_ApplyState.valueOf, enumValues: SkillApplyQueryResp_ApplyState.values)
    ..aOM<ApplyTip>(3, 'tip', subBuilder: ApplyTip.create)
    ..aOM<ApplyInfo>(4, 'info', subBuilder: ApplyInfo.create)
    ..hasRequiredFields = false
  ;

  SkillApplyQueryResp._() : super();
  factory SkillApplyQueryResp() => create();
  factory SkillApplyQueryResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SkillApplyQueryResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SkillApplyQueryResp clone() => SkillApplyQueryResp()..mergeFromMessage(this);
  SkillApplyQueryResp copyWith(void Function(SkillApplyQueryResp) updates) => super.copyWith((message) => updates(message as SkillApplyQueryResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SkillApplyQueryResp create() => SkillApplyQueryResp._();
  SkillApplyQueryResp createEmptyInstance() => create();
  static $pb.PbList<SkillApplyQueryResp> createRepeated() => $pb.PbList<SkillApplyQueryResp>();
  @$core.pragma('dart2js:noInline')
  static SkillApplyQueryResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SkillApplyQueryResp>(create);
  static SkillApplyQueryResp _defaultInstance;

  @$pb.TagNumber(1)
  SkillApplyQueryResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SkillApplyQueryResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  SkillApplyQueryResp_ApplyState get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(SkillApplyQueryResp_ApplyState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  ApplyTip get tip => $_getN(2);
  @$pb.TagNumber(3)
  set tip(ApplyTip v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTip() => $_has(2);
  @$pb.TagNumber(3)
  void clearTip() => clearField(3);
  @$pb.TagNumber(3)
  ApplyTip ensureTip() => $_ensure(2);

  @$pb.TagNumber(4)
  ApplyInfo get info => $_getN(3);
  @$pb.TagNumber(4)
  set info(ApplyInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);
  @$pb.TagNumber(4)
  ApplyInfo ensureInfo() => $_ensure(3);
}

class UserSkillCtrlReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserSkillCtrlReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'userSkillId', $pb.PbFieldType.O3)
    ..aOB(2, 'enable')
    ..hasRequiredFields = false
  ;

  UserSkillCtrlReq._() : super();
  factory UserSkillCtrlReq() => create();
  factory UserSkillCtrlReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSkillCtrlReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserSkillCtrlReq clone() => UserSkillCtrlReq()..mergeFromMessage(this);
  UserSkillCtrlReq copyWith(void Function(UserSkillCtrlReq) updates) => super.copyWith((message) => updates(message as UserSkillCtrlReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserSkillCtrlReq create() => UserSkillCtrlReq._();
  UserSkillCtrlReq createEmptyInstance() => create();
  static $pb.PbList<UserSkillCtrlReq> createRepeated() => $pb.PbList<UserSkillCtrlReq>();
  @$core.pragma('dart2js:noInline')
  static UserSkillCtrlReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSkillCtrlReq>(create);
  static UserSkillCtrlReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userSkillId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userSkillId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserSkillId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserSkillId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enable => $_getBF(1);
  @$pb.TagNumber(2)
  set enable($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnable() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnable() => clearField(2);
}

class UserSkillCtrlResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserSkillCtrlResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<UserSkillCtrlResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: UserSkillCtrlResp_Status.OK, valueOf: UserSkillCtrlResp_Status.valueOf, enumValues: UserSkillCtrlResp_Status.values)
    ..hasRequiredFields = false
  ;

  UserSkillCtrlResp._() : super();
  factory UserSkillCtrlResp() => create();
  factory UserSkillCtrlResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSkillCtrlResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserSkillCtrlResp clone() => UserSkillCtrlResp()..mergeFromMessage(this);
  UserSkillCtrlResp copyWith(void Function(UserSkillCtrlResp) updates) => super.copyWith((message) => updates(message as UserSkillCtrlResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserSkillCtrlResp create() => UserSkillCtrlResp._();
  UserSkillCtrlResp createEmptyInstance() => create();
  static $pb.PbList<UserSkillCtrlResp> createRepeated() => $pb.PbList<UserSkillCtrlResp>();
  @$core.pragma('dart2js:noInline')
  static UserSkillCtrlResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSkillCtrlResp>(create);
  static UserSkillCtrlResp _defaultInstance;

  @$pb.TagNumber(1)
  UserSkillCtrlResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(UserSkillCtrlResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SysAvatarResp_Avatar extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SysAvatarResp.Avatar', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'url')
    ..aOS(2, 'gender')
    ..hasRequiredFields = false
  ;

  SysAvatarResp_Avatar._() : super();
  factory SysAvatarResp_Avatar() => create();
  factory SysAvatarResp_Avatar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SysAvatarResp_Avatar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SysAvatarResp_Avatar clone() => SysAvatarResp_Avatar()..mergeFromMessage(this);
  SysAvatarResp_Avatar copyWith(void Function(SysAvatarResp_Avatar) updates) => super.copyWith((message) => updates(message as SysAvatarResp_Avatar));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SysAvatarResp_Avatar create() => SysAvatarResp_Avatar._();
  SysAvatarResp_Avatar createEmptyInstance() => create();
  static $pb.PbList<SysAvatarResp_Avatar> createRepeated() => $pb.PbList<SysAvatarResp_Avatar>();
  @$core.pragma('dart2js:noInline')
  static SysAvatarResp_Avatar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SysAvatarResp_Avatar>(create);
  static SysAvatarResp_Avatar _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gender => $_getSZ(1);
  @$pb.TagNumber(2)
  set gender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGender() => $_has(1);
  @$pb.TagNumber(2)
  void clearGender() => clearField(2);
}

class SysAvatarResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SysAvatarResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<SysAvatarResp_Avatar>(1, 'avatars', $pb.PbFieldType.PM, subBuilder: SysAvatarResp_Avatar.create)
    ..hasRequiredFields = false
  ;

  SysAvatarResp._() : super();
  factory SysAvatarResp() => create();
  factory SysAvatarResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SysAvatarResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SysAvatarResp clone() => SysAvatarResp()..mergeFromMessage(this);
  SysAvatarResp copyWith(void Function(SysAvatarResp) updates) => super.copyWith((message) => updates(message as SysAvatarResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SysAvatarResp create() => SysAvatarResp._();
  SysAvatarResp createEmptyInstance() => create();
  static $pb.PbList<SysAvatarResp> createRepeated() => $pb.PbList<SysAvatarResp>();
  @$core.pragma('dart2js:noInline')
  static SysAvatarResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SysAvatarResp>(create);
  static SysAvatarResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SysAvatarResp_Avatar> get avatars => $_getList(0);
}

class CheckTokenReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CheckTokenReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  CheckTokenReq._() : super();
  factory CheckTokenReq() => create();
  factory CheckTokenReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckTokenReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CheckTokenReq clone() => CheckTokenReq()..mergeFromMessage(this);
  CheckTokenReq copyWith(void Function(CheckTokenReq) updates) => super.copyWith((message) => updates(message as CheckTokenReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckTokenReq create() => CheckTokenReq._();
  CheckTokenReq createEmptyInstance() => create();
  static $pb.PbList<CheckTokenReq> createRepeated() => $pb.PbList<CheckTokenReq>();
  @$core.pragma('dart2js:noInline')
  static CheckTokenReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckTokenReq>(create);
  static CheckTokenReq _defaultInstance;

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

class CheckTokenResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CheckTokenResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOB(1, 'valid')
    ..a<$core.int>(2, 'ttl', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CheckTokenResp._() : super();
  factory CheckTokenResp() => create();
  factory CheckTokenResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckTokenResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CheckTokenResp clone() => CheckTokenResp()..mergeFromMessage(this);
  CheckTokenResp copyWith(void Function(CheckTokenResp) updates) => super.copyWith((message) => updates(message as CheckTokenResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckTokenResp create() => CheckTokenResp._();
  CheckTokenResp createEmptyInstance() => create();
  static $pb.PbList<CheckTokenResp> createRepeated() => $pb.PbList<CheckTokenResp>();
  @$core.pragma('dart2js:noInline')
  static CheckTokenResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckTokenResp>(create);
  static CheckTokenResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get valid => $_getBF(0);
  @$pb.TagNumber(1)
  set valid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearValid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get ttl => $_getIZ(1);
  @$pb.TagNumber(2)
  set ttl($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTtl() => $_has(1);
  @$pb.TagNumber(2)
  void clearTtl() => clearField(2);
}

class ViolationResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ViolationResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'vid', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..hasRequiredFields = false
  ;

  ViolationResp_Item._() : super();
  factory ViolationResp_Item() => create();
  factory ViolationResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ViolationResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ViolationResp_Item clone() => ViolationResp_Item()..mergeFromMessage(this);
  ViolationResp_Item copyWith(void Function(ViolationResp_Item) updates) => super.copyWith((message) => updates(message as ViolationResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ViolationResp_Item create() => ViolationResp_Item._();
  ViolationResp_Item createEmptyInstance() => create();
  static $pb.PbList<ViolationResp_Item> createRepeated() => $pb.PbList<ViolationResp_Item>();
  @$core.pragma('dart2js:noInline')
  static ViolationResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ViolationResp_Item>(create);
  static ViolationResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get vid => $_getIZ(0);
  @$pb.TagNumber(1)
  set vid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVid() => $_has(0);
  @$pb.TagNumber(1)
  void clearVid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

class ViolationResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ViolationResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<ViolationResp_Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: ViolationResp_Item.create)
    ..hasRequiredFields = false
  ;

  ViolationResp._() : super();
  factory ViolationResp() => create();
  factory ViolationResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ViolationResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ViolationResp clone() => ViolationResp()..mergeFromMessage(this);
  ViolationResp copyWith(void Function(ViolationResp) updates) => super.copyWith((message) => updates(message as ViolationResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ViolationResp create() => ViolationResp._();
  ViolationResp createEmptyInstance() => create();
  static $pb.PbList<ViolationResp> createRepeated() => $pb.PbList<ViolationResp>();
  @$core.pragma('dart2js:noInline')
  static ViolationResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ViolationResp>(create);
  static ViolationResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ViolationResp_Item> get items => $_getList(0);
}

class VIPListResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VIPListResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'vip', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'threshold', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  VIPListResp_Item._() : super();
  factory VIPListResp_Item() => create();
  factory VIPListResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VIPListResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VIPListResp_Item clone() => VIPListResp_Item()..mergeFromMessage(this);
  VIPListResp_Item copyWith(void Function(VIPListResp_Item) updates) => super.copyWith((message) => updates(message as VIPListResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VIPListResp_Item create() => VIPListResp_Item._();
  VIPListResp_Item createEmptyInstance() => create();
  static $pb.PbList<VIPListResp_Item> createRepeated() => $pb.PbList<VIPListResp_Item>();
  @$core.pragma('dart2js:noInline')
  static VIPListResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VIPListResp_Item>(create);
  static VIPListResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get vip => $_getIZ(0);
  @$pb.TagNumber(1)
  set vip($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVip() => $_has(0);
  @$pb.TagNumber(1)
  void clearVip() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get threshold => $_getIZ(1);
  @$pb.TagNumber(2)
  set threshold($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreshold() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreshold() => clearField(2);
}

class VIPListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VIPListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<VIPListResp_Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: VIPListResp_Item.create)
    ..hasRequiredFields = false
  ;

  VIPListResp._() : super();
  factory VIPListResp() => create();
  factory VIPListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VIPListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VIPListResp clone() => VIPListResp()..mergeFromMessage(this);
  VIPListResp copyWith(void Function(VIPListResp) updates) => super.copyWith((message) => updates(message as VIPListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VIPListResp create() => VIPListResp._();
  VIPListResp createEmptyInstance() => create();
  static $pb.PbList<VIPListResp> createRepeated() => $pb.PbList<VIPListResp>();
  @$core.pragma('dart2js:noInline')
  static VIPListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VIPListResp>(create);
  static VIPListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VIPListResp_Item> get items => $_getList(0);
}

class NoblePrivilegeResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NoblePrivilegeResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'nobleId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'productId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'protectDays', $pb.PbFieldType.O3)
    ..aOB(4, 'antiKicked')
    ..aOB(5, 'familyPermission')
    ..aOB(6, 'shownInRoomRank')
    ..aOB(7, 'broadcastGift')
    ..aOB(8, 'broadcastNoble')
    ..a<$core.double>(9, 'discount', $pb.PbFieldType.OD)
    ..a<$core.double>(10, 'experienceRatio', $pb.PbFieldType.OD)
    ..a<$core.int>(11, 'roomMaxNum', $pb.PbFieldType.O3)
    ..aOB(12, 'hiddenEnterRoom')
    ..aOB(13, 'vipProp')
    ..hasRequiredFields = false
  ;

  NoblePrivilegeResp_Item._() : super();
  factory NoblePrivilegeResp_Item() => create();
  factory NoblePrivilegeResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoblePrivilegeResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NoblePrivilegeResp_Item clone() => NoblePrivilegeResp_Item()..mergeFromMessage(this);
  NoblePrivilegeResp_Item copyWith(void Function(NoblePrivilegeResp_Item) updates) => super.copyWith((message) => updates(message as NoblePrivilegeResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoblePrivilegeResp_Item create() => NoblePrivilegeResp_Item._();
  NoblePrivilegeResp_Item createEmptyInstance() => create();
  static $pb.PbList<NoblePrivilegeResp_Item> createRepeated() => $pb.PbList<NoblePrivilegeResp_Item>();
  @$core.pragma('dart2js:noInline')
  static NoblePrivilegeResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoblePrivilegeResp_Item>(create);
  static NoblePrivilegeResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nobleId => $_getIZ(0);
  @$pb.TagNumber(1)
  set nobleId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNobleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNobleId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get productId => $_getIZ(1);
  @$pb.TagNumber(2)
  set productId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProductId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get protectDays => $_getIZ(2);
  @$pb.TagNumber(3)
  set protectDays($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProtectDays() => $_has(2);
  @$pb.TagNumber(3)
  void clearProtectDays() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get antiKicked => $_getBF(3);
  @$pb.TagNumber(4)
  set antiKicked($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAntiKicked() => $_has(3);
  @$pb.TagNumber(4)
  void clearAntiKicked() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get familyPermission => $_getBF(4);
  @$pb.TagNumber(5)
  set familyPermission($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFamilyPermission() => $_has(4);
  @$pb.TagNumber(5)
  void clearFamilyPermission() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get shownInRoomRank => $_getBF(5);
  @$pb.TagNumber(6)
  set shownInRoomRank($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasShownInRoomRank() => $_has(5);
  @$pb.TagNumber(6)
  void clearShownInRoomRank() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get broadcastGift => $_getBF(6);
  @$pb.TagNumber(7)
  set broadcastGift($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBroadcastGift() => $_has(6);
  @$pb.TagNumber(7)
  void clearBroadcastGift() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get broadcastNoble => $_getBF(7);
  @$pb.TagNumber(8)
  set broadcastNoble($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBroadcastNoble() => $_has(7);
  @$pb.TagNumber(8)
  void clearBroadcastNoble() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get discount => $_getN(8);
  @$pb.TagNumber(9)
  set discount($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDiscount() => $_has(8);
  @$pb.TagNumber(9)
  void clearDiscount() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get experienceRatio => $_getN(9);
  @$pb.TagNumber(10)
  set experienceRatio($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasExperienceRatio() => $_has(9);
  @$pb.TagNumber(10)
  void clearExperienceRatio() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get roomMaxNum => $_getIZ(10);
  @$pb.TagNumber(11)
  set roomMaxNum($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRoomMaxNum() => $_has(10);
  @$pb.TagNumber(11)
  void clearRoomMaxNum() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get hiddenEnterRoom => $_getBF(11);
  @$pb.TagNumber(12)
  set hiddenEnterRoom($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasHiddenEnterRoom() => $_has(11);
  @$pb.TagNumber(12)
  void clearHiddenEnterRoom() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get vipProp => $_getBF(12);
  @$pb.TagNumber(13)
  set vipProp($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasVipProp() => $_has(12);
  @$pb.TagNumber(13)
  void clearVipProp() => clearField(13);
}

class NoblePrivilegeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NoblePrivilegeResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<NoblePrivilegeResp_Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: NoblePrivilegeResp_Item.create)
    ..hasRequiredFields = false
  ;

  NoblePrivilegeResp._() : super();
  factory NoblePrivilegeResp() => create();
  factory NoblePrivilegeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoblePrivilegeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NoblePrivilegeResp clone() => NoblePrivilegeResp()..mergeFromMessage(this);
  NoblePrivilegeResp copyWith(void Function(NoblePrivilegeResp) updates) => super.copyWith((message) => updates(message as NoblePrivilegeResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoblePrivilegeResp create() => NoblePrivilegeResp._();
  NoblePrivilegeResp createEmptyInstance() => create();
  static $pb.PbList<NoblePrivilegeResp> createRepeated() => $pb.PbList<NoblePrivilegeResp>();
  @$core.pragma('dart2js:noInline')
  static NoblePrivilegeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoblePrivilegeResp>(create);
  static NoblePrivilegeResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NoblePrivilegeResp_Item> get items => $_getList(0);
}

class SupportCountryResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SupportCountryResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..a<$core.int>(2, 'code', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SupportCountryResp_Item._() : super();
  factory SupportCountryResp_Item() => create();
  factory SupportCountryResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupportCountryResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SupportCountryResp_Item clone() => SupportCountryResp_Item()..mergeFromMessage(this);
  SupportCountryResp_Item copyWith(void Function(SupportCountryResp_Item) updates) => super.copyWith((message) => updates(message as SupportCountryResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SupportCountryResp_Item create() => SupportCountryResp_Item._();
  SupportCountryResp_Item createEmptyInstance() => create();
  static $pb.PbList<SupportCountryResp_Item> createRepeated() => $pb.PbList<SupportCountryResp_Item>();
  @$core.pragma('dart2js:noInline')
  static SupportCountryResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupportCountryResp_Item>(create);
  static SupportCountryResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
}

class SupportCountryResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SupportCountryResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<SupportCountryResp_Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: SupportCountryResp_Item.create)
    ..hasRequiredFields = false
  ;

  SupportCountryResp._() : super();
  factory SupportCountryResp() => create();
  factory SupportCountryResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupportCountryResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SupportCountryResp clone() => SupportCountryResp()..mergeFromMessage(this);
  SupportCountryResp copyWith(void Function(SupportCountryResp) updates) => super.copyWith((message) => updates(message as SupportCountryResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SupportCountryResp create() => SupportCountryResp._();
  SupportCountryResp createEmptyInstance() => create();
  static $pb.PbList<SupportCountryResp> createRepeated() => $pb.PbList<SupportCountryResp>();
  @$core.pragma('dart2js:noInline')
  static SupportCountryResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupportCountryResp>(create);
  static SupportCountryResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SupportCountryResp_Item> get items => $_getList(0);
}

class PolicyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PolicyReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'location')
    ..hasRequiredFields = false
  ;

  PolicyReq._() : super();
  factory PolicyReq() => create();
  factory PolicyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolicyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PolicyReq clone() => PolicyReq()..mergeFromMessage(this);
  PolicyReq copyWith(void Function(PolicyReq) updates) => super.copyWith((message) => updates(message as PolicyReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PolicyReq create() => PolicyReq._();
  PolicyReq createEmptyInstance() => create();
  static $pb.PbList<PolicyReq> createRepeated() => $pb.PbList<PolicyReq>();
  @$core.pragma('dart2js:noInline')
  static PolicyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolicyReq>(create);
  static PolicyReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get location => $_getSZ(1);
  @$pb.TagNumber(2)
  set location($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);
}

class PolicyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PolicyResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..m<$core.int, $core.bool>(1, 'policyList', entryClassName: 'PolicyResp.PolicyListEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OB, packageName: const $pb.PackageName('proto_def'))
    ..hasRequiredFields = false
  ;

  PolicyResp._() : super();
  factory PolicyResp() => create();
  factory PolicyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolicyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PolicyResp clone() => PolicyResp()..mergeFromMessage(this);
  PolicyResp copyWith(void Function(PolicyResp) updates) => super.copyWith((message) => updates(message as PolicyResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PolicyResp create() => PolicyResp._();
  PolicyResp createEmptyInstance() => create();
  static $pb.PbList<PolicyResp> createRepeated() => $pb.PbList<PolicyResp>();
  @$core.pragma('dart2js:noInline')
  static PolicyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolicyResp>(create);
  static PolicyResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, $core.bool> get policyList => $_getMap(0);
}

class AppConfigResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppConfigResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..m<$core.int, $core.String>(1, 'configs', entryClassName: 'AppConfigResp.ConfigsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('proto_def'))
    ..hasRequiredFields = false
  ;

  AppConfigResp._() : super();
  factory AppConfigResp() => create();
  factory AppConfigResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppConfigResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppConfigResp clone() => AppConfigResp()..mergeFromMessage(this);
  AppConfigResp copyWith(void Function(AppConfigResp) updates) => super.copyWith((message) => updates(message as AppConfigResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppConfigResp create() => AppConfigResp._();
  AppConfigResp createEmptyInstance() => create();
  static $pb.PbList<AppConfigResp> createRepeated() => $pb.PbList<AppConfigResp>();
  @$core.pragma('dart2js:noInline')
  static AppConfigResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppConfigResp>(create);
  static AppConfigResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, $core.String> get configs => $_getMap(0);
}

class BanRuleConfigResp_Config extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BanRuleConfigResp.Config', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'senderUnderLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'receiverUnderLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'limit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BanRuleConfigResp_Config._() : super();
  factory BanRuleConfigResp_Config() => create();
  factory BanRuleConfigResp_Config.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanRuleConfigResp_Config.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BanRuleConfigResp_Config clone() => BanRuleConfigResp_Config()..mergeFromMessage(this);
  BanRuleConfigResp_Config copyWith(void Function(BanRuleConfigResp_Config) updates) => super.copyWith((message) => updates(message as BanRuleConfigResp_Config));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BanRuleConfigResp_Config create() => BanRuleConfigResp_Config._();
  BanRuleConfigResp_Config createEmptyInstance() => create();
  static $pb.PbList<BanRuleConfigResp_Config> createRepeated() => $pb.PbList<BanRuleConfigResp_Config>();
  @$core.pragma('dart2js:noInline')
  static BanRuleConfigResp_Config getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanRuleConfigResp_Config>(create);
  static BanRuleConfigResp_Config _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get senderUnderLevel => $_getIZ(0);
  @$pb.TagNumber(1)
  set senderUnderLevel($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSenderUnderLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderUnderLevel() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get receiverUnderLevel => $_getIZ(1);
  @$pb.TagNumber(2)
  set receiverUnderLevel($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiverUnderLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiverUnderLevel() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);
}

class BanRuleConfigResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BanRuleConfigResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<BanRuleConfigResp_Config>(1, 'configs', $pb.PbFieldType.PM, subBuilder: BanRuleConfigResp_Config.create)
    ..hasRequiredFields = false
  ;

  BanRuleConfigResp._() : super();
  factory BanRuleConfigResp() => create();
  factory BanRuleConfigResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanRuleConfigResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BanRuleConfigResp clone() => BanRuleConfigResp()..mergeFromMessage(this);
  BanRuleConfigResp copyWith(void Function(BanRuleConfigResp) updates) => super.copyWith((message) => updates(message as BanRuleConfigResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BanRuleConfigResp create() => BanRuleConfigResp._();
  BanRuleConfigResp createEmptyInstance() => create();
  static $pb.PbList<BanRuleConfigResp> createRepeated() => $pb.PbList<BanRuleConfigResp>();
  @$core.pragma('dart2js:noInline')
  static BanRuleConfigResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanRuleConfigResp>(create);
  static BanRuleConfigResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BanRuleConfigResp_Config> get configs => $_getList(0);
}

class BannerListResp_Banner extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BannerListResp.Banner', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'title')
    ..e<BannerListResp_Category>(2, 'category', $pb.PbFieldType.OE, defaultOrMaker: BannerListResp_Category.UNk, valueOf: BannerListResp_Category.valueOf, enumValues: BannerListResp_Category.values)
    ..aOS(3, 'img')
    ..aOS(4, 'portal')
    ..hasRequiredFields = false
  ;

  BannerListResp_Banner._() : super();
  factory BannerListResp_Banner() => create();
  factory BannerListResp_Banner.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BannerListResp_Banner.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BannerListResp_Banner clone() => BannerListResp_Banner()..mergeFromMessage(this);
  BannerListResp_Banner copyWith(void Function(BannerListResp_Banner) updates) => super.copyWith((message) => updates(message as BannerListResp_Banner));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BannerListResp_Banner create() => BannerListResp_Banner._();
  BannerListResp_Banner createEmptyInstance() => create();
  static $pb.PbList<BannerListResp_Banner> createRepeated() => $pb.PbList<BannerListResp_Banner>();
  @$core.pragma('dart2js:noInline')
  static BannerListResp_Banner getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BannerListResp_Banner>(create);
  static BannerListResp_Banner _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  BannerListResp_Category get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(BannerListResp_Category v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get img => $_getSZ(2);
  @$pb.TagNumber(3)
  set img($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImg() => $_has(2);
  @$pb.TagNumber(3)
  void clearImg() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get portal => $_getSZ(3);
  @$pb.TagNumber(4)
  set portal($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPortal() => $_has(3);
  @$pb.TagNumber(4)
  void clearPortal() => clearField(4);
}

class BannerListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BannerListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<BannerListResp_Banner>(1, 'banners', $pb.PbFieldType.PM, subBuilder: BannerListResp_Banner.create)
    ..hasRequiredFields = false
  ;

  BannerListResp._() : super();
  factory BannerListResp() => create();
  factory BannerListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BannerListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BannerListResp clone() => BannerListResp()..mergeFromMessage(this);
  BannerListResp copyWith(void Function(BannerListResp) updates) => super.copyWith((message) => updates(message as BannerListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BannerListResp create() => BannerListResp._();
  BannerListResp createEmptyInstance() => create();
  static $pb.PbList<BannerListResp> createRepeated() => $pb.PbList<BannerListResp>();
  @$core.pragma('dart2js:noInline')
  static BannerListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BannerListResp>(create);
  static BannerListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BannerListResp_Banner> get banners => $_getList(0);
}

