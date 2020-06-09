///
//  Generated code. Do not modify.
//  source: peer_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PeerUserInfo_BanBanGrade extends $pb.ProtobufEnum {
  static const PeerUserInfo_BanBanGrade NONE = PeerUserInfo_BanBanGrade._(0, 'NONE');
  static const PeerUserInfo_BanBanGrade NOT_BANBAN = PeerUserInfo_BanBanGrade._(1, 'NOT_BANBAN');
  static const PeerUserInfo_BanBanGrade BANBAN = PeerUserInfo_BanBanGrade._(2, 'BANBAN');
  static const PeerUserInfo_BanBanGrade STAR = PeerUserInfo_BanBanGrade._(3, 'STAR');
  static const PeerUserInfo_BanBanGrade SUPERVISOR = PeerUserInfo_BanBanGrade._(8, 'SUPERVISOR');

  static const $core.List<PeerUserInfo_BanBanGrade> values = <PeerUserInfo_BanBanGrade> [
    NONE,
    NOT_BANBAN,
    BANBAN,
    STAR,
    SUPERVISOR,
  ];

  static final $core.Map<$core.int, PeerUserInfo_BanBanGrade> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PeerUserInfo_BanBanGrade valueOf($core.int value) => _byValue[value];

  const PeerUserInfo_BanBanGrade._($core.int v, $core.String n) : super(v, n);
}

class Ranks_Scope extends $pb.ProtobufEnum {
  static const Ranks_Scope ROOM = Ranks_Scope._(0, 'ROOM');
  static const Ranks_Scope GLOBAL = Ranks_Scope._(1, 'GLOBAL');

  static const $core.List<Ranks_Scope> values = <Ranks_Scope> [
    ROOM,
    GLOBAL,
  ];

  static final $core.Map<$core.int, Ranks_Scope> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Ranks_Scope valueOf($core.int value) => _byValue[value];

  const Ranks_Scope._($core.int v, $core.String n) : super(v, n);
}

