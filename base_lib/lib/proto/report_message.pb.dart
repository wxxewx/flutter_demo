///
//  Generated code. Do not modify.
//  source: report_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'report_message.pbenum.dart';

export 'report_message.pbenum.dart';

class PromotionReportReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PromotionReportReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'identifier')
    ..aOS(2, 'phone')
    ..aOS(3, 'uid')
    ..aOS(4, 'client')
    ..aOS(5, 'version')
    ..e<PromotionReportReq_SEX>(6, 'sex', $pb.PbFieldType.OE, defaultOrMaker: PromotionReportReq_SEX.MAN, valueOf: PromotionReportReq_SEX.valueOf, enumValues: PromotionReportReq_SEX.values)
    ..aOS(7, 'idfa')
    ..aOS(8, 'imei')
    ..aOS(9, 'mac')
    ..aOS(10, 'channel')
    ..hasRequiredFields = false
  ;

  PromotionReportReq._() : super();
  factory PromotionReportReq() => create();
  factory PromotionReportReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PromotionReportReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PromotionReportReq clone() => PromotionReportReq()..mergeFromMessage(this);
  PromotionReportReq copyWith(void Function(PromotionReportReq) updates) => super.copyWith((message) => updates(message as PromotionReportReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PromotionReportReq create() => PromotionReportReq._();
  PromotionReportReq createEmptyInstance() => create();
  static $pb.PbList<PromotionReportReq> createRepeated() => $pb.PbList<PromotionReportReq>();
  @$core.pragma('dart2js:noInline')
  static PromotionReportReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PromotionReportReq>(create);
  static PromotionReportReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set identifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentifier() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get phone => $_getSZ(1);
  @$pb.TagNumber(2)
  set phone($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhone() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uid => $_getSZ(2);
  @$pb.TagNumber(3)
  set uid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get client => $_getSZ(3);
  @$pb.TagNumber(4)
  set client($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClient() => $_has(3);
  @$pb.TagNumber(4)
  void clearClient() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => clearField(5);

  @$pb.TagNumber(6)
  PromotionReportReq_SEX get sex => $_getN(5);
  @$pb.TagNumber(6)
  set sex(PromotionReportReq_SEX v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSex() => $_has(5);
  @$pb.TagNumber(6)
  void clearSex() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get idfa => $_getSZ(6);
  @$pb.TagNumber(7)
  set idfa($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIdfa() => $_has(6);
  @$pb.TagNumber(7)
  void clearIdfa() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get imei => $_getSZ(7);
  @$pb.TagNumber(8)
  set imei($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasImei() => $_has(7);
  @$pb.TagNumber(8)
  void clearImei() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get mac => $_getSZ(8);
  @$pb.TagNumber(9)
  set mac($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMac() => $_has(8);
  @$pb.TagNumber(9)
  void clearMac() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get channel => $_getSZ(9);
  @$pb.TagNumber(10)
  set channel($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasChannel() => $_has(9);
  @$pb.TagNumber(10)
  void clearChannel() => clearField(10);
}

class AdvertReportReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AdvertReportReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'idfa')
    ..aOS(2, 'imei')
    ..aOS(3, 'uid')
    ..aOS(4, 'phone')
    ..aOS(5, 'client')
    ..aOS(6, 'version')
    ..aOS(7, 'mac')
    ..e<AdvertReportReq_SEX>(8, 'sex', $pb.PbFieldType.OE, defaultOrMaker: AdvertReportReq_SEX.MAN, valueOf: AdvertReportReq_SEX.valueOf, enumValues: AdvertReportReq_SEX.values)
    ..aOS(9, 'channel')
    ..hasRequiredFields = false
  ;

  AdvertReportReq._() : super();
  factory AdvertReportReq() => create();
  factory AdvertReportReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdvertReportReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AdvertReportReq clone() => AdvertReportReq()..mergeFromMessage(this);
  AdvertReportReq copyWith(void Function(AdvertReportReq) updates) => super.copyWith((message) => updates(message as AdvertReportReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdvertReportReq create() => AdvertReportReq._();
  AdvertReportReq createEmptyInstance() => create();
  static $pb.PbList<AdvertReportReq> createRepeated() => $pb.PbList<AdvertReportReq>();
  @$core.pragma('dart2js:noInline')
  static AdvertReportReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdvertReportReq>(create);
  static AdvertReportReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get idfa => $_getSZ(0);
  @$pb.TagNumber(1)
  set idfa($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdfa() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdfa() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get imei => $_getSZ(1);
  @$pb.TagNumber(2)
  set imei($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImei() => $_has(1);
  @$pb.TagNumber(2)
  void clearImei() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uid => $_getSZ(2);
  @$pb.TagNumber(3)
  set uid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get client => $_getSZ(4);
  @$pb.TagNumber(5)
  set client($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasClient() => $_has(4);
  @$pb.TagNumber(5)
  void clearClient() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get version => $_getSZ(5);
  @$pb.TagNumber(6)
  set version($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get mac => $_getSZ(6);
  @$pb.TagNumber(7)
  set mac($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMac() => $_has(6);
  @$pb.TagNumber(7)
  void clearMac() => clearField(7);

  @$pb.TagNumber(8)
  AdvertReportReq_SEX get sex => $_getN(7);
  @$pb.TagNumber(8)
  set sex(AdvertReportReq_SEX v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSex() => $_has(7);
  @$pb.TagNumber(8)
  void clearSex() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get channel => $_getSZ(8);
  @$pb.TagNumber(9)
  set channel($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasChannel() => $_has(8);
  @$pb.TagNumber(9)
  void clearChannel() => clearField(9);
}

