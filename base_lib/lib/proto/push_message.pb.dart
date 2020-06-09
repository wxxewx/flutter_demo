///
//  Generated code. Do not modify.
//  source: push_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PushMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PushMessageReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..aOS(2, 'pushToken')
    ..aOS(3, 'version')
    ..aOS(4, 'client')
    ..aOS(5, 'mac')
    ..aOS(6, 'deviceType')
    ..aOS(7, 'imei')
    ..aOS(8, 'idfa')
    ..hasRequiredFields = false
  ;

  PushMessageReq._() : super();
  factory PushMessageReq() => create();
  factory PushMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PushMessageReq clone() => PushMessageReq()..mergeFromMessage(this);
  PushMessageReq copyWith(void Function(PushMessageReq) updates) => super.copyWith((message) => updates(message as PushMessageReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushMessageReq create() => PushMessageReq._();
  PushMessageReq createEmptyInstance() => create();
  static $pb.PbList<PushMessageReq> createRepeated() => $pb.PbList<PushMessageReq>();
  @$core.pragma('dart2js:noInline')
  static PushMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushMessageReq>(create);
  static PushMessageReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pushToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pushToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPushToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPushToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get client => $_getSZ(3);
  @$pb.TagNumber(4)
  set client($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClient() => $_has(3);
  @$pb.TagNumber(4)
  void clearClient() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get mac => $_getSZ(4);
  @$pb.TagNumber(5)
  set mac($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMac() => $_has(4);
  @$pb.TagNumber(5)
  void clearMac() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get deviceType => $_getSZ(5);
  @$pb.TagNumber(6)
  set deviceType($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeviceType() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get imei => $_getSZ(6);
  @$pb.TagNumber(7)
  set imei($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasImei() => $_has(6);
  @$pb.TagNumber(7)
  void clearImei() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get idfa => $_getSZ(7);
  @$pb.TagNumber(8)
  set idfa($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIdfa() => $_has(7);
  @$pb.TagNumber(8)
  void clearIdfa() => clearField(8);
}

