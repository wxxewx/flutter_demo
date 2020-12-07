///
//  Generated code. Do not modify.
//  source: room_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Role extends $pb.ProtobufEnum {
  static const Role GUEST = Role._(0, 'GUEST');
  static const Role OWNER = Role._(1, 'OWNER');
  static const Role OPERATOR = Role._(2, 'OPERATOR');
  static const Role BLOCKED = Role._(3, 'BLOCKED');
  static const Role MUTED = Role._(4, 'MUTED');

  static const $core.List<Role> values = <Role> [
    GUEST,
    OWNER,
    OPERATOR,
    BLOCKED,
    MUTED,
  ];

  static final $core.Map<$core.int, Role> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Role valueOf($core.int value) => _byValue[value];

  const Role._($core.int v, $core.String n) : super(v, n);
}

class NotificationType extends $pb.ProtobufEnum {
  static const NotificationType EVENT = NotificationType._(0, 'EVENT');
  static const NotificationType ROOM_CONTROL = NotificationType._(1, 'ROOM_CONTROL');
  static const NotificationType SEAT_CONTROL = NotificationType._(2, 'SEAT_CONTROL');
  static const NotificationType MEMBER_CONTROL = NotificationType._(3, 'MEMBER_CONTROL');

  static const $core.List<NotificationType> values = <NotificationType> [
    EVENT,
    ROOM_CONTROL,
    SEAT_CONTROL,
    MEMBER_CONTROL,
  ];

  static final $core.Map<$core.int, NotificationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NotificationType valueOf($core.int value) => _byValue[value];

  const NotificationType._($core.int v, $core.String n) : super(v, n);
}

class ControlState extends $pb.ProtobufEnum {
  static const ControlState UNK = ControlState._(0, 'UNK');
  static const ControlState DISABLE = ControlState._(1, 'DISABLE');
  static const ControlState ENABLE = ControlState._(2, 'ENABLE');

  static const $core.List<ControlState> values = <ControlState> [
    UNK,
    DISABLE,
    ENABLE,
  ];

  static final $core.Map<$core.int, ControlState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ControlState valueOf($core.int value) => _byValue[value];

  const ControlState._($core.int v, $core.String n) : super(v, n);
}

class Room_LAYOUT extends $pb.ProtobufEnum {
  static const Room_LAYOUT SEATS_4 = Room_LAYOUT._(0, 'SEATS_4');
  static const Room_LAYOUT SEATS_8 = Room_LAYOUT._(1, 'SEATS_8');
  static const Room_LAYOUT SEATS_0 = Room_LAYOUT._(2, 'SEATS_0');

  static const $core.List<Room_LAYOUT> values = <Room_LAYOUT> [
    SEATS_4,
    SEATS_8,
    SEATS_0,
  ];

  static final $core.Map<$core.int, Room_LAYOUT> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Room_LAYOUT valueOf($core.int value) => _byValue[value];

  const Room_LAYOUT._($core.int v, $core.String n) : super(v, n);
}

class RoomDetailResp_STATUS extends $pb.ProtobufEnum {
  static const RoomDetailResp_STATUS OK = RoomDetailResp_STATUS._(0, 'OK');
  static const RoomDetailResp_STATUS PASSWORD_INVALID = RoomDetailResp_STATUS._(1, 'PASSWORD_INVALID');
  static const RoomDetailResp_STATUS ROOM_IS_FULL = RoomDetailResp_STATUS._(2, 'ROOM_IS_FULL');
  static const RoomDetailResp_STATUS USER_IS_BLOCKED = RoomDetailResp_STATUS._(3, 'USER_IS_BLOCKED');

  static const $core.List<RoomDetailResp_STATUS> values = <RoomDetailResp_STATUS> [
    OK,
    PASSWORD_INVALID,
    ROOM_IS_FULL,
    USER_IS_BLOCKED,
  ];

  static final $core.Map<$core.int, RoomDetailResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomDetailResp_STATUS valueOf($core.int value) => _byValue[value];

  const RoomDetailResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class RoomDetailResp_SEAT_STATE extends $pb.ProtobufEnum {
  static const RoomDetailResp_SEAT_STATE DISABLED = RoomDetailResp_SEAT_STATE._(0, 'DISABLED');
  static const RoomDetailResp_SEAT_STATE OPEN = RoomDetailResp_SEAT_STATE._(1, 'OPEN');
  static const RoomDetailResp_SEAT_STATE OCCUPIED = RoomDetailResp_SEAT_STATE._(2, 'OCCUPIED');

  static const $core.List<RoomDetailResp_SEAT_STATE> values = <RoomDetailResp_SEAT_STATE> [
    DISABLED,
    OPEN,
    OCCUPIED,
  ];

  static final $core.Map<$core.int, RoomDetailResp_SEAT_STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomDetailResp_SEAT_STATE valueOf($core.int value) => _byValue[value];

  const RoomDetailResp_SEAT_STATE._($core.int v, $core.String n) : super(v, n);
}

class RoomCreateResp_STATUS extends $pb.ProtobufEnum {
  static const RoomCreateResp_STATUS OK = RoomCreateResp_STATUS._(0, 'OK');
  static const RoomCreateResp_STATUS OVER_LIMIT = RoomCreateResp_STATUS._(1, 'OVER_LIMIT');
  static const RoomCreateResp_STATUS TOKEN_INVALID = RoomCreateResp_STATUS._(2, 'TOKEN_INVALID');
  static const RoomCreateResp_STATUS CREATE_FAILED = RoomCreateResp_STATUS._(3, 'CREATE_FAILED');

  static const $core.List<RoomCreateResp_STATUS> values = <RoomCreateResp_STATUS> [
    OK,
    OVER_LIMIT,
    TOKEN_INVALID,
    CREATE_FAILED,
  ];

  static final $core.Map<$core.int, RoomCreateResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomCreateResp_STATUS valueOf($core.int value) => _byValue[value];

  const RoomCreateResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class RoomSubscribeResp_STATUS extends $pb.ProtobufEnum {
  static const RoomSubscribeResp_STATUS OK = RoomSubscribeResp_STATUS._(0, 'OK');
  static const RoomSubscribeResp_STATUS TOKEN_INVALID = RoomSubscribeResp_STATUS._(1, 'TOKEN_INVALID');

  static const $core.List<RoomSubscribeResp_STATUS> values = <RoomSubscribeResp_STATUS> [
    OK,
    TOKEN_INVALID,
  ];

  static final $core.Map<$core.int, RoomSubscribeResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomSubscribeResp_STATUS valueOf($core.int value) => _byValue[value];

  const RoomSubscribeResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class UserRoomsReq_Category extends $pb.ProtobufEnum {
  static const UserRoomsReq_Category ALL = UserRoomsReq_Category._(0, 'ALL');
  static const UserRoomsReq_Category CREATED = UserRoomsReq_Category._(1, 'CREATED');
  static const UserRoomsReq_Category FOLLOWED = UserRoomsReq_Category._(2, 'FOLLOWED');

  static const $core.List<UserRoomsReq_Category> values = <UserRoomsReq_Category> [
    ALL,
    CREATED,
    FOLLOWED,
  ];

  static final $core.Map<$core.int, UserRoomsReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserRoomsReq_Category valueOf($core.int value) => _byValue[value];

  const UserRoomsReq_Category._($core.int v, $core.String n) : super(v, n);
}

class UserRoomsResp_STATUS extends $pb.ProtobufEnum {
  static const UserRoomsResp_STATUS OK = UserRoomsResp_STATUS._(0, 'OK');
  static const UserRoomsResp_STATUS TOKEN_INVALID = UserRoomsResp_STATUS._(1, 'TOKEN_INVALID');

  static const $core.List<UserRoomsResp_STATUS> values = <UserRoomsResp_STATUS> [
    OK,
    TOKEN_INVALID,
  ];

  static final $core.Map<$core.int, UserRoomsResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserRoomsResp_STATUS valueOf($core.int value) => _byValue[value];

  const UserRoomsResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class RoomMembersResp_STATUS extends $pb.ProtobufEnum {
  static const RoomMembersResp_STATUS OK = RoomMembersResp_STATUS._(0, 'OK');
  static const RoomMembersResp_STATUS USER_INVALID = RoomMembersResp_STATUS._(1, 'USER_INVALID');
  static const RoomMembersResp_STATUS PERMISSION_DENIED = RoomMembersResp_STATUS._(2, 'PERMISSION_DENIED');

  static const $core.List<RoomMembersResp_STATUS> values = <RoomMembersResp_STATUS> [
    OK,
    USER_INVALID,
    PERMISSION_DENIED,
  ];

  static final $core.Map<$core.int, RoomMembersResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomMembersResp_STATUS valueOf($core.int value) => _byValue[value];

  const RoomMembersResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class RoomMemberControlResp_STATUS extends $pb.ProtobufEnum {
  static const RoomMemberControlResp_STATUS OK = RoomMemberControlResp_STATUS._(0, 'OK');
  static const RoomMemberControlResp_STATUS TOKEN_INVALID = RoomMemberControlResp_STATUS._(1, 'TOKEN_INVALID');
  static const RoomMemberControlResp_STATUS PERMISSION_DENIED = RoomMemberControlResp_STATUS._(2, 'PERMISSION_DENIED');
  static const RoomMemberControlResp_STATUS OPERATION_FAILED = RoomMemberControlResp_STATUS._(3, 'OPERATION_FAILED');

  static const $core.List<RoomMemberControlResp_STATUS> values = <RoomMemberControlResp_STATUS> [
    OK,
    TOKEN_INVALID,
    PERMISSION_DENIED,
    OPERATION_FAILED,
  ];

  static final $core.Map<$core.int, RoomMemberControlResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomMemberControlResp_STATUS valueOf($core.int value) => _byValue[value];

  const RoomMemberControlResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class RoomEventReq_EventType extends $pb.ProtobufEnum {
  static const RoomEventReq_EventType ENTER = RoomEventReq_EventType._(0, 'ENTER');
  static const RoomEventReq_EventType LEAVE = RoomEventReq_EventType._(1, 'LEAVE');
  static const RoomEventReq_EventType OPEN_BOX = RoomEventReq_EventType._(2, 'OPEN_BOX');
  static const RoomEventReq_EventType SEND_GIFT = RoomEventReq_EventType._(3, 'SEND_GIFT');
  static const RoomEventReq_EventType COUPLE = RoomEventReq_EventType._(4, 'COUPLE');
  static const RoomEventReq_EventType NOBLE = RoomEventReq_EventType._(5, 'NOBLE');
  static const RoomEventReq_EventType OPEN_MAGICBOX = RoomEventReq_EventType._(6, 'OPEN_MAGICBOX');

  static const $core.List<RoomEventReq_EventType> values = <RoomEventReq_EventType> [
    ENTER,
    LEAVE,
    OPEN_BOX,
    SEND_GIFT,
    COUPLE,
    NOBLE,
    OPEN_MAGICBOX,
  ];

  static final $core.Map<$core.int, RoomEventReq_EventType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomEventReq_EventType valueOf($core.int value) => _byValue[value];

  const RoomEventReq_EventType._($core.int v, $core.String n) : super(v, n);
}

class RoomEventResp_STATUS extends $pb.ProtobufEnum {
  static const RoomEventResp_STATUS OK = RoomEventResp_STATUS._(0, 'OK');
  static const RoomEventResp_STATUS ERROR = RoomEventResp_STATUS._(1, 'ERROR');

  static const $core.List<RoomEventResp_STATUS> values = <RoomEventResp_STATUS> [
    OK,
    ERROR,
  ];

  static final $core.Map<$core.int, RoomEventResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomEventResp_STATUS valueOf($core.int value) => _byValue[value];

  const RoomEventResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class RoomEventNotification_GRADE extends $pb.ProtobufEnum {
  static const RoomEventNotification_GRADE NONE = RoomEventNotification_GRADE._(0, 'NONE');
  static const RoomEventNotification_GRADE BROZEN = RoomEventNotification_GRADE._(1, 'BROZEN');
  static const RoomEventNotification_GRADE SILVER = RoomEventNotification_GRADE._(2, 'SILVER');
  static const RoomEventNotification_GRADE GOLDEN = RoomEventNotification_GRADE._(3, 'GOLDEN');
  static const RoomEventNotification_GRADE MAGIC = RoomEventNotification_GRADE._(4, 'MAGIC');
  static const RoomEventNotification_GRADE PANDORA = RoomEventNotification_GRADE._(5, 'PANDORA');

  static const $core.List<RoomEventNotification_GRADE> values = <RoomEventNotification_GRADE> [
    NONE,
    BROZEN,
    SILVER,
    GOLDEN,
    MAGIC,
    PANDORA,
  ];

  static final $core.Map<$core.int, RoomEventNotification_GRADE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomEventNotification_GRADE valueOf($core.int value) => _byValue[value];

  const RoomEventNotification_GRADE._($core.int v, $core.String n) : super(v, n);
}

class RoomControlReq_ControlType extends $pb.ProtobufEnum {
  static const RoomControlReq_ControlType UNK = RoomControlReq_ControlType._(0, 'UNK');
  static const RoomControlReq_ControlType KICK = RoomControlReq_ControlType._(1, 'KICK');
  static const RoomControlReq_ControlType INFO_UPDATE = RoomControlReq_ControlType._(2, 'INFO_UPDATE');
  static const RoomControlReq_ControlType PASSWORD_UPDATE = RoomControlReq_ControlType._(3, 'PASSWORD_UPDATE');

  static const $core.List<RoomControlReq_ControlType> values = <RoomControlReq_ControlType> [
    UNK,
    KICK,
    INFO_UPDATE,
    PASSWORD_UPDATE,
  ];

  static final $core.Map<$core.int, RoomControlReq_ControlType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomControlReq_ControlType valueOf($core.int value) => _byValue[value];

  const RoomControlReq_ControlType._($core.int v, $core.String n) : super(v, n);
}

class RoomControlResp_STATUS extends $pb.ProtobufEnum {
  static const RoomControlResp_STATUS OK = RoomControlResp_STATUS._(0, 'OK');
  static const RoomControlResp_STATUS TOKEN_INVALID = RoomControlResp_STATUS._(1, 'TOKEN_INVALID');
  static const RoomControlResp_STATUS PERMISSION_DENIED = RoomControlResp_STATUS._(2, 'PERMISSION_DENIED');
  static const RoomControlResp_STATUS OPERATION_FAILED = RoomControlResp_STATUS._(3, 'OPERATION_FAILED');

  static const $core.List<RoomControlResp_STATUS> values = <RoomControlResp_STATUS> [
    OK,
    TOKEN_INVALID,
    PERMISSION_DENIED,
    OPERATION_FAILED,
  ];

  static final $core.Map<$core.int, RoomControlResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomControlResp_STATUS valueOf($core.int value) => _byValue[value];

  const RoomControlResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class SeatControlReq_ControlType extends $pb.ProtobufEnum {
  static const SeatControlReq_ControlType UNK = SeatControlReq_ControlType._(0, 'UNK');
  static const SeatControlReq_ControlType APPLY = SeatControlReq_ControlType._(1, 'APPLY');
  static const SeatControlReq_ControlType CANCEL = SeatControlReq_ControlType._(2, 'CANCEL');
  static const SeatControlReq_ControlType TAKEN = SeatControlReq_ControlType._(3, 'TAKEN');
  static const SeatControlReq_ControlType RELEASE = SeatControlReq_ControlType._(4, 'RELEASE');
  static const SeatControlReq_ControlType OPEN_MIC = SeatControlReq_ControlType._(5, 'OPEN_MIC');
  static const SeatControlReq_ControlType CLOSE_MIC = SeatControlReq_ControlType._(6, 'CLOSE_MIC');
  static const SeatControlReq_ControlType LOCK = SeatControlReq_ControlType._(7, 'LOCK');
  static const SeatControlReq_ControlType UNLOCK = SeatControlReq_ControlType._(8, 'UNLOCK');

  static const $core.List<SeatControlReq_ControlType> values = <SeatControlReq_ControlType> [
    UNK,
    APPLY,
    CANCEL,
    TAKEN,
    RELEASE,
    OPEN_MIC,
    CLOSE_MIC,
    LOCK,
    UNLOCK,
  ];

  static final $core.Map<$core.int, SeatControlReq_ControlType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SeatControlReq_ControlType valueOf($core.int value) => _byValue[value];

  const SeatControlReq_ControlType._($core.int v, $core.String n) : super(v, n);
}

class SeatControlResp_STATUS extends $pb.ProtobufEnum {
  static const SeatControlResp_STATUS OK = SeatControlResp_STATUS._(0, 'OK');
  static const SeatControlResp_STATUS ERROR = SeatControlResp_STATUS._(1, 'ERROR');
  static const SeatControlResp_STATUS SEAT_OCCUPIED = SeatControlResp_STATUS._(2, 'SEAT_OCCUPIED');
  static const SeatControlResp_STATUS ALREADY_SEATED = SeatControlResp_STATUS._(3, 'ALREADY_SEATED');

  static const $core.List<SeatControlResp_STATUS> values = <SeatControlResp_STATUS> [
    OK,
    ERROR,
    SEAT_OCCUPIED,
    ALREADY_SEATED,
  ];

  static final $core.Map<$core.int, SeatControlResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SeatControlResp_STATUS valueOf($core.int value) => _byValue[value];

  const SeatControlResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class RoomExtInfo_CpStage extends $pb.ProtobufEnum {
  static const RoomExtInfo_CpStage NOTHING = RoomExtInfo_CpStage._(0, 'NOTHING');
  static const RoomExtInfo_CpStage PREPARING = RoomExtInfo_CpStage._(1, 'PREPARING');
  static const RoomExtInfo_CpStage CHOOSING = RoomExtInfo_CpStage._(2, 'CHOOSING');
  static const RoomExtInfo_CpStage ANNOUNCING = RoomExtInfo_CpStage._(3, 'ANNOUNCING');

  static const $core.List<RoomExtInfo_CpStage> values = <RoomExtInfo_CpStage> [
    NOTHING,
    PREPARING,
    CHOOSING,
    ANNOUNCING,
  ];

  static final $core.Map<$core.int, RoomExtInfo_CpStage> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomExtInfo_CpStage valueOf($core.int value) => _byValue[value];

  const RoomExtInfo_CpStage._($core.int v, $core.String n) : super(v, n);
}

class SeatQueueItem_SeatState extends $pb.ProtobufEnum {
  static const SeatQueueItem_SeatState UNK = SeatQueueItem_SeatState._(0, 'UNK');
  static const SeatQueueItem_SeatState LOCKED = SeatQueueItem_SeatState._(1, 'LOCKED');
  static const SeatQueueItem_SeatState OPEN = SeatQueueItem_SeatState._(2, 'OPEN');
  static const SeatQueueItem_SeatState OCCUPIED = SeatQueueItem_SeatState._(3, 'OCCUPIED');

  static const $core.List<SeatQueueItem_SeatState> values = <SeatQueueItem_SeatState> [
    UNK,
    LOCKED,
    OPEN,
    OCCUPIED,
  ];

  static final $core.Map<$core.int, SeatQueueItem_SeatState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SeatQueueItem_SeatState valueOf($core.int value) => _byValue[value];

  const SeatQueueItem_SeatState._($core.int v, $core.String n) : super(v, n);
}

class SeatFundControlReq_Cmd extends $pb.ProtobufEnum {
  static const SeatFundControlReq_Cmd UNK = SeatFundControlReq_Cmd._(0, 'UNK');
  static const SeatFundControlReq_Cmd START = SeatFundControlReq_Cmd._(1, 'START');
  static const SeatFundControlReq_Cmd PAUSE = SeatFundControlReq_Cmd._(2, 'PAUSE');
  static const SeatFundControlReq_Cmd RESET = SeatFundControlReq_Cmd._(3, 'RESET');
  static const SeatFundControlReq_Cmd STOP = SeatFundControlReq_Cmd._(4, 'STOP');

  static const $core.List<SeatFundControlReq_Cmd> values = <SeatFundControlReq_Cmd> [
    UNK,
    START,
    PAUSE,
    RESET,
    STOP,
  ];

  static final $core.Map<$core.int, SeatFundControlReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SeatFundControlReq_Cmd valueOf($core.int value) => _byValue[value];

  const SeatFundControlReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class SeatFundControlResp_Status extends $pb.ProtobufEnum {
  static const SeatFundControlResp_Status OK = SeatFundControlResp_Status._(0, 'OK');
  static const SeatFundControlResp_Status TOKEN_INVALID = SeatFundControlResp_Status._(1, 'TOKEN_INVALID');
  static const SeatFundControlResp_Status PERMISSION_DENIED = SeatFundControlResp_Status._(2, 'PERMISSION_DENIED');
  static const SeatFundControlResp_Status OPERATION_FAILED = SeatFundControlResp_Status._(3, 'OPERATION_FAILED');

  static const $core.List<SeatFundControlResp_Status> values = <SeatFundControlResp_Status> [
    OK,
    TOKEN_INVALID,
    PERMISSION_DENIED,
    OPERATION_FAILED,
  ];

  static final $core.Map<$core.int, SeatFundControlResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SeatFundControlResp_Status valueOf($core.int value) => _byValue[value];

  const SeatFundControlResp_Status._($core.int v, $core.String n) : super(v, n);
}

class SeatDecoratorControlReq_Cmd extends $pb.ProtobufEnum {
  static const SeatDecoratorControlReq_Cmd UNK = SeatDecoratorControlReq_Cmd._(0, 'UNK');
  static const SeatDecoratorControlReq_Cmd HIDE = SeatDecoratorControlReq_Cmd._(1, 'HIDE');
  static const SeatDecoratorControlReq_Cmd SHOW = SeatDecoratorControlReq_Cmd._(2, 'SHOW');

  static const $core.List<SeatDecoratorControlReq_Cmd> values = <SeatDecoratorControlReq_Cmd> [
    UNK,
    HIDE,
    SHOW,
  ];

  static final $core.Map<$core.int, SeatDecoratorControlReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SeatDecoratorControlReq_Cmd valueOf($core.int value) => _byValue[value];

  const SeatDecoratorControlReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class SeatDecoratorControlResp_Status extends $pb.ProtobufEnum {
  static const SeatDecoratorControlResp_Status OK = SeatDecoratorControlResp_Status._(0, 'OK');
  static const SeatDecoratorControlResp_Status TOKEN_INVALID = SeatDecoratorControlResp_Status._(1, 'TOKEN_INVALID');
  static const SeatDecoratorControlResp_Status PRODUCT_EXPIRE = SeatDecoratorControlResp_Status._(2, 'PRODUCT_EXPIRE');
  static const SeatDecoratorControlResp_Status PARAMETER_ERROR = SeatDecoratorControlResp_Status._(3, 'PARAMETER_ERROR');

  static const $core.List<SeatDecoratorControlResp_Status> values = <SeatDecoratorControlResp_Status> [
    OK,
    TOKEN_INVALID,
    PRODUCT_EXPIRE,
    PARAMETER_ERROR,
  ];

  static final $core.Map<$core.int, SeatDecoratorControlResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SeatDecoratorControlResp_Status valueOf($core.int value) => _byValue[value];

  const SeatDecoratorControlResp_Status._($core.int v, $core.String n) : super(v, n);
}

class OrderDispatchResp_STATUS extends $pb.ProtobufEnum {
  static const OrderDispatchResp_STATUS OK = OrderDispatchResp_STATUS._(0, 'OK');
  static const OrderDispatchResp_STATUS ERROR = OrderDispatchResp_STATUS._(1, 'ERROR');

  static const $core.List<OrderDispatchResp_STATUS> values = <OrderDispatchResp_STATUS> [
    OK,
    ERROR,
  ];

  static final $core.Map<$core.int, OrderDispatchResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderDispatchResp_STATUS valueOf($core.int value) => _byValue[value];

  const OrderDispatchResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

