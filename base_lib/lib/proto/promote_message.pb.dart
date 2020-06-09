///
//  Generated code. Do not modify.
//  source: promote_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RoomPluginReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomPluginReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RoomPluginReq._() : super();
  factory RoomPluginReq() => create();
  factory RoomPluginReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomPluginReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomPluginReq clone() => RoomPluginReq()..mergeFromMessage(this);
  RoomPluginReq copyWith(void Function(RoomPluginReq) updates) => super.copyWith((message) => updates(message as RoomPluginReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomPluginReq create() => RoomPluginReq._();
  RoomPluginReq createEmptyInstance() => create();
  static $pb.PbList<RoomPluginReq> createRepeated() => $pb.PbList<RoomPluginReq>();
  @$core.pragma('dart2js:noInline')
  static RoomPluginReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomPluginReq>(create);
  static RoomPluginReq _defaultInstance;
}

class RoomPluginResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomPluginResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RoomPluginResp._() : super();
  factory RoomPluginResp() => create();
  factory RoomPluginResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomPluginResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomPluginResp clone() => RoomPluginResp()..mergeFromMessage(this);
  RoomPluginResp copyWith(void Function(RoomPluginResp) updates) => super.copyWith((message) => updates(message as RoomPluginResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomPluginResp create() => RoomPluginResp._();
  RoomPluginResp createEmptyInstance() => create();
  static $pb.PbList<RoomPluginResp> createRepeated() => $pb.PbList<RoomPluginResp>();
  @$core.pragma('dart2js:noInline')
  static RoomPluginResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomPluginResp>(create);
  static RoomPluginResp _defaultInstance;
}

