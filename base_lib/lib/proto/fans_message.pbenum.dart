///
//  Generated code. Do not modify.
//  source: fans_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TaskCategory extends $pb.ProtobufEnum {
  static const TaskCategory CONSUME = TaskCategory._(0, 'CONSUME');
  static const TaskCategory FREE_GIFT = TaskCategory._(1, 'FREE_GIFT');
  static const TaskCategory WATCH_LIVE = TaskCategory._(2, 'WATCH_LIVE');

  static const $core.List<TaskCategory> values = <TaskCategory> [
    CONSUME,
    FREE_GIFT,
    WATCH_LIVE,
  ];

  static final $core.Map<$core.int, TaskCategory> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskCategory valueOf($core.int value) => _byValue[value];

  const TaskCategory._($core.int v, $core.String n) : super(v, n);
}

class FansClubInfoResp_Status extends $pb.ProtobufEnum {
  static const FansClubInfoResp_Status OK = FansClubInfoResp_Status._(0, 'OK');
  static const FansClubInfoResp_Status TOKEN_INVALID = FansClubInfoResp_Status._(1, 'TOKEN_INVALID');
  static const FansClubInfoResp_Status PARAM_ERROR = FansClubInfoResp_Status._(2, 'PARAM_ERROR');

  static const $core.List<FansClubInfoResp_Status> values = <FansClubInfoResp_Status> [
    OK,
    TOKEN_INVALID,
    PARAM_ERROR,
  ];

  static final $core.Map<$core.int, FansClubInfoResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FansClubInfoResp_Status valueOf($core.int value) => _byValue[value];

  const FansClubInfoResp_Status._($core.int v, $core.String n) : super(v, n);
}

class FansClubInfoEditResp_Status extends $pb.ProtobufEnum {
  static const FansClubInfoEditResp_Status OK = FansClubInfoEditResp_Status._(0, 'OK');
  static const FansClubInfoEditResp_Status TOKEN_INVALID = FansClubInfoEditResp_Status._(1, 'TOKEN_INVALID');
  static const FansClubInfoEditResp_Status OP_LIMITED = FansClubInfoEditResp_Status._(2, 'OP_LIMITED');
  static const FansClubInfoEditResp_Status CONTENT_LIMITED = FansClubInfoEditResp_Status._(3, 'CONTENT_LIMITED');

  static const $core.List<FansClubInfoEditResp_Status> values = <FansClubInfoEditResp_Status> [
    OK,
    TOKEN_INVALID,
    OP_LIMITED,
    CONTENT_LIMITED,
  ];

  static final $core.Map<$core.int, FansClubInfoEditResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FansClubInfoEditResp_Status valueOf($core.int value) => _byValue[value];

  const FansClubInfoEditResp_Status._($core.int v, $core.String n) : super(v, n);
}

class FansClubTaskStateResp_Status extends $pb.ProtobufEnum {
  static const FansClubTaskStateResp_Status OK = FansClubTaskStateResp_Status._(0, 'OK');
  static const FansClubTaskStateResp_Status TOKEN_INVALID = FansClubTaskStateResp_Status._(1, 'TOKEN_INVALID');

  static const $core.List<FansClubTaskStateResp_Status> values = <FansClubTaskStateResp_Status> [
    OK,
    TOKEN_INVALID,
  ];

  static final $core.Map<$core.int, FansClubTaskStateResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FansClubTaskStateResp_Status valueOf($core.int value) => _byValue[value];

  const FansClubTaskStateResp_Status._($core.int v, $core.String n) : super(v, n);
}

class FansClubTaskAchieveResp_Status extends $pb.ProtobufEnum {
  static const FansClubTaskAchieveResp_Status OK = FansClubTaskAchieveResp_Status._(0, 'OK');
  static const FansClubTaskAchieveResp_Status TOKEN_INVALID = FansClubTaskAchieveResp_Status._(1, 'TOKEN_INVALID');

  static const $core.List<FansClubTaskAchieveResp_Status> values = <FansClubTaskAchieveResp_Status> [
    OK,
    TOKEN_INVALID,
  ];

  static final $core.Map<$core.int, FansClubTaskAchieveResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FansClubTaskAchieveResp_Status valueOf($core.int value) => _byValue[value];

  const FansClubTaskAchieveResp_Status._($core.int v, $core.String n) : super(v, n);
}

