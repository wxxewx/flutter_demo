///
//  Generated code. Do not modify.
//  source: user_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class STATUS extends $pb.ProtobufEnum {
  static const STATUS OK = STATUS._(0, 'OK');
  static const STATUS USER_INVALID = STATUS._(1, 'USER_INVALID');
  static const STATUS TOKEN_EXPIRE = STATUS._(2, 'TOKEN_EXPIRE');
  static const STATUS PARAMTER_ERROR = STATUS._(3, 'PARAMTER_ERROR');
  static const STATUS PERMISSION_DENY = STATUS._(4, 'PERMISSION_DENY');
  static const STATUS PREREQUISITE_FAILED = STATUS._(5, 'PREREQUISITE_FAILED');

  static const $core.List<STATUS> values = <STATUS> [
    OK,
    USER_INVALID,
    TOKEN_EXPIRE,
    PARAMTER_ERROR,
    PERMISSION_DENY,
    PREREQUISITE_FAILED,
  ];

  static final $core.Map<$core.int, STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static STATUS valueOf($core.int value) => _byValue[value];

  const STATUS._($core.int v, $core.String n) : super(v, n);
}

class UserRegisterResp_STATUS extends $pb.ProtobufEnum {
  static const UserRegisterResp_STATUS OK = UserRegisterResp_STATUS._(0, 'OK');
  static const UserRegisterResp_STATUS NAME_OCUPIED = UserRegisterResp_STATUS._(1, 'NAME_OCUPIED');
  static const UserRegisterResp_STATUS PARAMETER_ERROR = UserRegisterResp_STATUS._(2, 'PARAMETER_ERROR');
  static const UserRegisterResp_STATUS REPEAT_REGISTER = UserRegisterResp_STATUS._(3, 'REPEAT_REGISTER');
  static const UserRegisterResp_STATUS SMS_ERROR = UserRegisterResp_STATUS._(4, 'SMS_ERROR');

  static const $core.List<UserRegisterResp_STATUS> values = <UserRegisterResp_STATUS> [
    OK,
    NAME_OCUPIED,
    PARAMETER_ERROR,
    REPEAT_REGISTER,
    SMS_ERROR,
  ];

  static final $core.Map<$core.int, UserRegisterResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserRegisterResp_STATUS valueOf($core.int value) => _byValue[value];

  const UserRegisterResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class UserOverviewResp_STATUS extends $pb.ProtobufEnum {
  static const UserOverviewResp_STATUS OK = UserOverviewResp_STATUS._(0, 'OK');
  static const UserOverviewResp_STATUS USER_NOT_EXIST = UserOverviewResp_STATUS._(1, 'USER_NOT_EXIST');

  static const $core.List<UserOverviewResp_STATUS> values = <UserOverviewResp_STATUS> [
    OK,
    USER_NOT_EXIST,
  ];

  static final $core.Map<$core.int, UserOverviewResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserOverviewResp_STATUS valueOf($core.int value) => _byValue[value];

  const UserOverviewResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class LoginResp_STATUS extends $pb.ProtobufEnum {
  static const LoginResp_STATUS OK = LoginResp_STATUS._(0, 'OK');
  static const LoginResp_STATUS SMS_TIMEOUT = LoginResp_STATUS._(1, 'SMS_TIMEOUT');
  static const LoginResp_STATUS SMS_ERROR = LoginResp_STATUS._(2, 'SMS_ERROR');
  static const LoginResp_STATUS USER_INVALID = LoginResp_STATUS._(3, 'USER_INVALID');
  static const LoginResp_STATUS BIND_OPENID_FAILED = LoginResp_STATUS._(4, 'BIND_OPENID_FAILED');

  static const $core.List<LoginResp_STATUS> values = <LoginResp_STATUS> [
    OK,
    SMS_TIMEOUT,
    SMS_ERROR,
    USER_INVALID,
    BIND_OPENID_FAILED,
  ];

  static final $core.Map<$core.int, LoginResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LoginResp_STATUS valueOf($core.int value) => _byValue[value];

  const LoginResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class UserExtInfoUpdateReq_Cmd extends $pb.ProtobufEnum {
  static const UserExtInfoUpdateReq_Cmd UNK = UserExtInfoUpdateReq_Cmd._(0, 'UNK');
  static const UserExtInfoUpdateReq_Cmd UPDATE = UserExtInfoUpdateReq_Cmd._(1, 'UPDATE');
  static const UserExtInfoUpdateReq_Cmd CLEAR = UserExtInfoUpdateReq_Cmd._(2, 'CLEAR');

  static const $core.List<UserExtInfoUpdateReq_Cmd> values = <UserExtInfoUpdateReq_Cmd> [
    UNK,
    UPDATE,
    CLEAR,
  ];

  static final $core.Map<$core.int, UserExtInfoUpdateReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserExtInfoUpdateReq_Cmd valueOf($core.int value) => _byValue[value];

  const UserExtInfoUpdateReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class UserInterestsUpdateReq_METHOD extends $pb.ProtobufEnum {
  static const UserInterestsUpdateReq_METHOD UNK = UserInterestsUpdateReq_METHOD._(0, 'UNK');
  static const UserInterestsUpdateReq_METHOD ADD = UserInterestsUpdateReq_METHOD._(1, 'ADD');
  static const UserInterestsUpdateReq_METHOD REMOVE = UserInterestsUpdateReq_METHOD._(2, 'REMOVE');

  static const $core.List<UserInterestsUpdateReq_METHOD> values = <UserInterestsUpdateReq_METHOD> [
    UNK,
    ADD,
    REMOVE,
  ];

  static final $core.Map<$core.int, UserInterestsUpdateReq_METHOD> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserInterestsUpdateReq_METHOD valueOf($core.int value) => _byValue[value];

  const UserInterestsUpdateReq_METHOD._($core.int v, $core.String n) : super(v, n);
}

class UserHobbyUpdateReq_METHOD extends $pb.ProtobufEnum {
  static const UserHobbyUpdateReq_METHOD UNK = UserHobbyUpdateReq_METHOD._(0, 'UNK');
  static const UserHobbyUpdateReq_METHOD ADD = UserHobbyUpdateReq_METHOD._(1, 'ADD');
  static const UserHobbyUpdateReq_METHOD REMOVE = UserHobbyUpdateReq_METHOD._(2, 'REMOVE');

  static const $core.List<UserHobbyUpdateReq_METHOD> values = <UserHobbyUpdateReq_METHOD> [
    UNK,
    ADD,
    REMOVE,
  ];

  static final $core.Map<$core.int, UserHobbyUpdateReq_METHOD> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserHobbyUpdateReq_METHOD valueOf($core.int value) => _byValue[value];

  const UserHobbyUpdateReq_METHOD._($core.int v, $core.String n) : super(v, n);
}

class FollowReq_Cmd extends $pb.ProtobufEnum {
  static const FollowReq_Cmd FOLLOW = FollowReq_Cmd._(0, 'FOLLOW');
  static const FollowReq_Cmd BLOCK = FollowReq_Cmd._(1, 'BLOCK');

  static const $core.List<FollowReq_Cmd> values = <FollowReq_Cmd> [
    FOLLOW,
    BLOCK,
  ];

  static final $core.Map<$core.int, FollowReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FollowReq_Cmd valueOf($core.int value) => _byValue[value];

  const FollowReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class SmsCodeResp_STATUS extends $pb.ProtobufEnum {
  static const SmsCodeResp_STATUS OK = SmsCodeResp_STATUS._(0, 'OK');
  static const SmsCodeResp_STATUS OVER_LIMIT = SmsCodeResp_STATUS._(1, 'OVER_LIMIT');
  static const SmsCodeResp_STATUS PHONE_INVALID = SmsCodeResp_STATUS._(2, 'PHONE_INVALID');
  static const SmsCodeResp_STATUS USER_BANNED = SmsCodeResp_STATUS._(3, 'USER_BANNED');

  static const $core.List<SmsCodeResp_STATUS> values = <SmsCodeResp_STATUS> [
    OK,
    OVER_LIMIT,
    PHONE_INVALID,
    USER_BANNED,
  ];

  static final $core.Map<$core.int, SmsCodeResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SmsCodeResp_STATUS valueOf($core.int value) => _byValue[value];

  const SmsCodeResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class SmsCodeVerifyResp_STATUS extends $pb.ProtobufEnum {
  static const SmsCodeVerifyResp_STATUS OK = SmsCodeVerifyResp_STATUS._(0, 'OK');
  static const SmsCodeVerifyResp_STATUS CODE_INVALID = SmsCodeVerifyResp_STATUS._(1, 'CODE_INVALID');

  static const $core.List<SmsCodeVerifyResp_STATUS> values = <SmsCodeVerifyResp_STATUS> [
    OK,
    CODE_INVALID,
  ];

  static final $core.Map<$core.int, SmsCodeVerifyResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SmsCodeVerifyResp_STATUS valueOf($core.int value) => _byValue[value];

  const SmsCodeVerifyResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class UserCpRelationsResp_Couple_Type extends $pb.ProtobufEnum {
  static const UserCpRelationsResp_Couple_Type UNK = UserCpRelationsResp_Couple_Type._(0, 'UNK');
  static const UserCpRelationsResp_Couple_Type BRONZE = UserCpRelationsResp_Couple_Type._(1, 'BRONZE');
  static const UserCpRelationsResp_Couple_Type SILVER = UserCpRelationsResp_Couple_Type._(2, 'SILVER');
  static const UserCpRelationsResp_Couple_Type GOLDEN = UserCpRelationsResp_Couple_Type._(3, 'GOLDEN');

  static const $core.List<UserCpRelationsResp_Couple_Type> values = <UserCpRelationsResp_Couple_Type> [
    UNK,
    BRONZE,
    SILVER,
    GOLDEN,
  ];

  static final $core.Map<$core.int, UserCpRelationsResp_Couple_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserCpRelationsResp_Couple_Type valueOf($core.int value) => _byValue[value];

  const UserCpRelationsResp_Couple_Type._($core.int v, $core.String n) : super(v, n);
}

class UserGuardiansReq_Category extends $pb.ProtobufEnum {
  static const UserGuardiansReq_Category ALL = UserGuardiansReq_Category._(0, 'ALL');
  static const UserGuardiansReq_Category BRONZE = UserGuardiansReq_Category._(1, 'BRONZE');
  static const UserGuardiansReq_Category SILVER = UserGuardiansReq_Category._(2, 'SILVER');
  static const UserGuardiansReq_Category GOLDEN = UserGuardiansReq_Category._(3, 'GOLDEN');

  static const $core.List<UserGuardiansReq_Category> values = <UserGuardiansReq_Category> [
    ALL,
    BRONZE,
    SILVER,
    GOLDEN,
  ];

  static final $core.Map<$core.int, UserGuardiansReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserGuardiansReq_Category valueOf($core.int value) => _byValue[value];

  const UserGuardiansReq_Category._($core.int v, $core.String n) : super(v, n);
}

class UserFriendsReq_Category extends $pb.ProtobufEnum {
  static const UserFriendsReq_Category MY_FANS = UserFriendsReq_Category._(0, 'MY_FANS');
  static const UserFriendsReq_Category MY_LIKES = UserFriendsReq_Category._(1, 'MY_LIKES');

  static const $core.List<UserFriendsReq_Category> values = <UserFriendsReq_Category> [
    MY_FANS,
    MY_LIKES,
  ];

  static final $core.Map<$core.int, UserFriendsReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserFriendsReq_Category valueOf($core.int value) => _byValue[value];

  const UserFriendsReq_Category._($core.int v, $core.String n) : super(v, n);
}

class BagResp_CATEGORY extends $pb.ProtobufEnum {
  static const BagResp_CATEGORY ALL = BagResp_CATEGORY._(0, 'ALL');
  static const BagResp_CATEGORY GIFT = BagResp_CATEGORY._(1, 'GIFT');
  static const BagResp_CATEGORY AVATAR_BOX = BagResp_CATEGORY._(2, 'AVATAR_BOX');
  static const BagResp_CATEGORY SEAT_GUARDIAN = BagResp_CATEGORY._(3, 'SEAT_GUARDIAN');
  static const BagResp_CATEGORY BOX = BagResp_CATEGORY._(4, 'BOX');
  static const BagResp_CATEGORY KEY = BagResp_CATEGORY._(5, 'KEY');
  static const BagResp_CATEGORY NOBLE = BagResp_CATEGORY._(6, 'NOBLE');
  static const BagResp_CATEGORY AVATAR_DECORATOR_1 = BagResp_CATEGORY._(7, 'AVATAR_DECORATOR_1');
  static const BagResp_CATEGORY AVATAR_DECORATOR_2 = BagResp_CATEGORY._(8, 'AVATAR_DECORATOR_2');
  static const BagResp_CATEGORY AVATAR_DECORATOR_3 = BagResp_CATEGORY._(9, 'AVATAR_DECORATOR_3');

  static const $core.List<BagResp_CATEGORY> values = <BagResp_CATEGORY> [
    ALL,
    GIFT,
    AVATAR_BOX,
    SEAT_GUARDIAN,
    BOX,
    KEY,
    NOBLE,
    AVATAR_DECORATOR_1,
    AVATAR_DECORATOR_2,
    AVATAR_DECORATOR_3,
  ];

  static final $core.Map<$core.int, BagResp_CATEGORY> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BagResp_CATEGORY valueOf($core.int value) => _byValue[value];

  const BagResp_CATEGORY._($core.int v, $core.String n) : super(v, n);
}

class BagResp_PRODUCT_GRADE extends $pb.ProtobufEnum {
  static const BagResp_PRODUCT_GRADE NONE = BagResp_PRODUCT_GRADE._(0, 'NONE');
  static const BagResp_PRODUCT_GRADE BROZEN = BagResp_PRODUCT_GRADE._(1, 'BROZEN');
  static const BagResp_PRODUCT_GRADE SILVER = BagResp_PRODUCT_GRADE._(2, 'SILVER');
  static const BagResp_PRODUCT_GRADE GOLDEN = BagResp_PRODUCT_GRADE._(3, 'GOLDEN');

  static const $core.List<BagResp_PRODUCT_GRADE> values = <BagResp_PRODUCT_GRADE> [
    NONE,
    BROZEN,
    SILVER,
    GOLDEN,
  ];

  static final $core.Map<$core.int, BagResp_PRODUCT_GRADE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BagResp_PRODUCT_GRADE valueOf($core.int value) => _byValue[value];

  const BagResp_PRODUCT_GRADE._($core.int v, $core.String n) : super(v, n);
}

class BagResp_STATE extends $pb.ProtobufEnum {
  static const BagResp_STATE UNUSED = BagResp_STATE._(0, 'UNUSED');
  static const BagResp_STATE TRANSFERED = BagResp_STATE._(1, 'TRANSFERED');
  static const BagResp_STATE USED = BagResp_STATE._(2, 'USED');

  static const $core.List<BagResp_STATE> values = <BagResp_STATE> [
    UNUSED,
    TRANSFERED,
    USED,
  ];

  static final $core.Map<$core.int, BagResp_STATE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BagResp_STATE valueOf($core.int value) => _byValue[value];

  const BagResp_STATE._($core.int v, $core.String n) : super(v, n);
}

class OrderListReq_Category extends $pb.ProtobufEnum {
  static const OrderListReq_Category ALL = OrderListReq_Category._(0, 'ALL');
  static const OrderListReq_Category AS_PROVIDER = OrderListReq_Category._(1, 'AS_PROVIDER');
  static const OrderListReq_Category AS_CUSTOMER = OrderListReq_Category._(2, 'AS_CUSTOMER');

  static const $core.List<OrderListReq_Category> values = <OrderListReq_Category> [
    ALL,
    AS_PROVIDER,
    AS_CUSTOMER,
  ];

  static final $core.Map<$core.int, OrderListReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderListReq_Category valueOf($core.int value) => _byValue[value];

  const OrderListReq_Category._($core.int v, $core.String n) : super(v, n);
}

class OrderListResp_GiftState extends $pb.ProtobufEnum {
  static const OrderListResp_GiftState GS_UNK = OrderListResp_GiftState._(0, 'GS_UNK');
  static const OrderListResp_GiftState GIVEN = OrderListResp_GiftState._(1, 'GIVEN');
  static const OrderListResp_GiftState REVOKED = OrderListResp_GiftState._(2, 'REVOKED');

  static const $core.List<OrderListResp_GiftState> values = <OrderListResp_GiftState> [
    GS_UNK,
    GIVEN,
    REVOKED,
  ];

  static final $core.Map<$core.int, OrderListResp_GiftState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderListResp_GiftState valueOf($core.int value) => _byValue[value];

  const OrderListResp_GiftState._($core.int v, $core.String n) : super(v, n);
}

class OrderListResp_OrderState extends $pb.ProtobufEnum {
  static const OrderListResp_OrderState OS_UNK = OrderListResp_OrderState._(0, 'OS_UNK');
  static const OrderListResp_OrderState PENDING = OrderListResp_OrderState._(1, 'PENDING');
  static const OrderListResp_OrderState ACCEPTED = OrderListResp_OrderState._(2, 'ACCEPTED');
  static const OrderListResp_OrderState SERVING = OrderListResp_OrderState._(3, 'SERVING');
  static const OrderListResp_OrderState DONE = OrderListResp_OrderState._(4, 'DONE');
  static const OrderListResp_OrderState CANCEL_BY_C = OrderListResp_OrderState._(5, 'CANCEL_BY_C');
  static const OrderListResp_OrderState CANCEL_BY_P = OrderListResp_OrderState._(6, 'CANCEL_BY_P');

  static const $core.List<OrderListResp_OrderState> values = <OrderListResp_OrderState> [
    OS_UNK,
    PENDING,
    ACCEPTED,
    SERVING,
    DONE,
    CANCEL_BY_C,
    CANCEL_BY_P,
  ];

  static final $core.Map<$core.int, OrderListResp_OrderState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderListResp_OrderState valueOf($core.int value) => _byValue[value];

  const OrderListResp_OrderState._($core.int v, $core.String n) : super(v, n);
}

class MakeOrderResp_STATUS extends $pb.ProtobufEnum {
  static const MakeOrderResp_STATUS OK = MakeOrderResp_STATUS._(0, 'OK');
  static const MakeOrderResp_STATUS BAG_INSUFFICIENT = MakeOrderResp_STATUS._(1, 'BAG_INSUFFICIENT');
  static const MakeOrderResp_STATUS PARAMTER_ERROR = MakeOrderResp_STATUS._(2, 'PARAMTER_ERROR');

  static const $core.List<MakeOrderResp_STATUS> values = <MakeOrderResp_STATUS> [
    OK,
    BAG_INSUFFICIENT,
    PARAMTER_ERROR,
  ];

  static final $core.Map<$core.int, MakeOrderResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MakeOrderResp_STATUS valueOf($core.int value) => _byValue[value];

  const MakeOrderResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class ChangeOrderStateReq_OrderState extends $pb.ProtobufEnum {
  static const ChangeOrderStateReq_OrderState UNK = ChangeOrderStateReq_OrderState._(0, 'UNK');
  static const ChangeOrderStateReq_OrderState ACCEPTED = ChangeOrderStateReq_OrderState._(2, 'ACCEPTED');
  static const ChangeOrderStateReq_OrderState CANCEL_BY_C = ChangeOrderStateReq_OrderState._(5, 'CANCEL_BY_C');
  static const ChangeOrderStateReq_OrderState CANCEL_BY_P = ChangeOrderStateReq_OrderState._(6, 'CANCEL_BY_P');

  static const $core.List<ChangeOrderStateReq_OrderState> values = <ChangeOrderStateReq_OrderState> [
    UNK,
    ACCEPTED,
    CANCEL_BY_C,
    CANCEL_BY_P,
  ];

  static final $core.Map<$core.int, ChangeOrderStateReq_OrderState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChangeOrderStateReq_OrderState valueOf($core.int value) => _byValue[value];

  const ChangeOrderStateReq_OrderState._($core.int v, $core.String n) : super(v, n);
}

class ChangeOrderStateReq_GiftState extends $pb.ProtobufEnum {
  static const ChangeOrderStateReq_GiftState GS_UNK = ChangeOrderStateReq_GiftState._(0, 'GS_UNK');
  static const ChangeOrderStateReq_GiftState GIVEN = ChangeOrderStateReq_GiftState._(1, 'GIVEN');
  static const ChangeOrderStateReq_GiftState REVOKED = ChangeOrderStateReq_GiftState._(2, 'REVOKED');

  static const $core.List<ChangeOrderStateReq_GiftState> values = <ChangeOrderStateReq_GiftState> [
    GS_UNK,
    GIVEN,
    REVOKED,
  ];

  static final $core.Map<$core.int, ChangeOrderStateReq_GiftState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChangeOrderStateReq_GiftState valueOf($core.int value) => _byValue[value];

  const ChangeOrderStateReq_GiftState._($core.int v, $core.String n) : super(v, n);
}

class RealNameVerifyReq_Cmd extends $pb.ProtobufEnum {
  static const RealNameVerifyReq_Cmd QUERY = RealNameVerifyReq_Cmd._(0, 'QUERY');
  static const RealNameVerifyReq_Cmd UPDATE = RealNameVerifyReq_Cmd._(1, 'UPDATE');

  static const $core.List<RealNameVerifyReq_Cmd> values = <RealNameVerifyReq_Cmd> [
    QUERY,
    UPDATE,
  ];

  static final $core.Map<$core.int, RealNameVerifyReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RealNameVerifyReq_Cmd valueOf($core.int value) => _byValue[value];

  const RealNameVerifyReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class RealNameVerifyResp_State extends $pb.ProtobufEnum {
  static const RealNameVerifyResp_State NOT_VERIFY = RealNameVerifyResp_State._(0, 'NOT_VERIFY');
  static const RealNameVerifyResp_State REVIEWING = RealNameVerifyResp_State._(1, 'REVIEWING');
  static const RealNameVerifyResp_State PASS = RealNameVerifyResp_State._(2, 'PASS');
  static const RealNameVerifyResp_State FAILED = RealNameVerifyResp_State._(3, 'FAILED');

  static const $core.List<RealNameVerifyResp_State> values = <RealNameVerifyResp_State> [
    NOT_VERIFY,
    REVIEWING,
    PASS,
    FAILED,
  ];

  static final $core.Map<$core.int, RealNameVerifyResp_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RealNameVerifyResp_State valueOf($core.int value) => _byValue[value];

  const RealNameVerifyResp_State._($core.int v, $core.String n) : super(v, n);
}

class CelebrityVerifyReq_Cmd extends $pb.ProtobufEnum {
  static const CelebrityVerifyReq_Cmd QUERY = CelebrityVerifyReq_Cmd._(0, 'QUERY');
  static const CelebrityVerifyReq_Cmd UPDATE = CelebrityVerifyReq_Cmd._(1, 'UPDATE');

  static const $core.List<CelebrityVerifyReq_Cmd> values = <CelebrityVerifyReq_Cmd> [
    QUERY,
    UPDATE,
  ];

  static final $core.Map<$core.int, CelebrityVerifyReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CelebrityVerifyReq_Cmd valueOf($core.int value) => _byValue[value];

  const CelebrityVerifyReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class CelebrityVerifyResp_State extends $pb.ProtobufEnum {
  static const CelebrityVerifyResp_State NOT_VERIFY = CelebrityVerifyResp_State._(0, 'NOT_VERIFY');
  static const CelebrityVerifyResp_State PENDING = CelebrityVerifyResp_State._(1, 'PENDING');
  static const CelebrityVerifyResp_State PASS = CelebrityVerifyResp_State._(2, 'PASS');
  static const CelebrityVerifyResp_State FAILED = CelebrityVerifyResp_State._(3, 'FAILED');

  static const $core.List<CelebrityVerifyResp_State> values = <CelebrityVerifyResp_State> [
    NOT_VERIFY,
    PENDING,
    PASS,
    FAILED,
  ];

  static final $core.Map<$core.int, CelebrityVerifyResp_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CelebrityVerifyResp_State valueOf($core.int value) => _byValue[value];

  const CelebrityVerifyResp_State._($core.int v, $core.String n) : super(v, n);
}

class DailyCheckInReq_Category extends $pb.ProtobufEnum {
  static const DailyCheckInReq_Category UNK = DailyCheckInReq_Category._(0, 'UNK');
  static const DailyCheckInReq_Category BOX = DailyCheckInReq_Category._(1, 'BOX');
  static const DailyCheckInReq_Category COIN = DailyCheckInReq_Category._(2, 'COIN');

  static const $core.List<DailyCheckInReq_Category> values = <DailyCheckInReq_Category> [
    UNK,
    BOX,
    COIN,
  ];

  static final $core.Map<$core.int, DailyCheckInReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DailyCheckInReq_Category valueOf($core.int value) => _byValue[value];

  const DailyCheckInReq_Category._($core.int v, $core.String n) : super(v, n);
}

class DailyCheckInResp_Grade extends $pb.ProtobufEnum {
  static const DailyCheckInResp_Grade NONE = DailyCheckInResp_Grade._(0, 'NONE');
  static const DailyCheckInResp_Grade BROZEN = DailyCheckInResp_Grade._(1, 'BROZEN');
  static const DailyCheckInResp_Grade SILVER = DailyCheckInResp_Grade._(2, 'SILVER');
  static const DailyCheckInResp_Grade GOLDEN = DailyCheckInResp_Grade._(3, 'GOLDEN');

  static const $core.List<DailyCheckInResp_Grade> values = <DailyCheckInResp_Grade> [
    NONE,
    BROZEN,
    SILVER,
    GOLDEN,
  ];

  static final $core.Map<$core.int, DailyCheckInResp_Grade> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DailyCheckInResp_Grade valueOf($core.int value) => _byValue[value];

  const DailyCheckInResp_Grade._($core.int v, $core.String n) : super(v, n);
}

class WearProductReq_Cmd extends $pb.ProtobufEnum {
  static const WearProductReq_Cmd OFF = WearProductReq_Cmd._(0, 'OFF');
  static const WearProductReq_Cmd ON = WearProductReq_Cmd._(1, 'ON');

  static const $core.List<WearProductReq_Cmd> values = <WearProductReq_Cmd> [
    OFF,
    ON,
  ];

  static final $core.Map<$core.int, WearProductReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WearProductReq_Cmd valueOf($core.int value) => _byValue[value];

  const WearProductReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class UserDecoratorResp_State extends $pb.ProtobufEnum {
  static const UserDecoratorResp_State OFF = UserDecoratorResp_State._(0, 'OFF');
  static const UserDecoratorResp_State ON = UserDecoratorResp_State._(1, 'ON');

  static const $core.List<UserDecoratorResp_State> values = <UserDecoratorResp_State> [
    OFF,
    ON,
  ];

  static final $core.Map<$core.int, UserDecoratorResp_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserDecoratorResp_State valueOf($core.int value) => _byValue[value];

  const UserDecoratorResp_State._($core.int v, $core.String n) : super(v, n);
}

class IspPhoneAuthResp_Status extends $pb.ProtobufEnum {
  static const IspPhoneAuthResp_Status OK = IspPhoneAuthResp_Status._(0, 'OK');
  static const IspPhoneAuthResp_Status USER_BANNED = IspPhoneAuthResp_Status._(1, 'USER_BANNED');
  static const IspPhoneAuthResp_Status QUERY_PHONE_FAILURE = IspPhoneAuthResp_Status._(2, 'QUERY_PHONE_FAILURE');

  static const $core.List<IspPhoneAuthResp_Status> values = <IspPhoneAuthResp_Status> [
    OK,
    USER_BANNED,
    QUERY_PHONE_FAILURE,
  ];

  static final $core.Map<$core.int, IspPhoneAuthResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IspPhoneAuthResp_Status valueOf($core.int value) => _byValue[value];

  const IspPhoneAuthResp_Status._($core.int v, $core.String n) : super(v, n);
}

class WxUserAuthResp_Status extends $pb.ProtobufEnum {
  static const WxUserAuthResp_Status OK = WxUserAuthResp_Status._(0, 'OK');
  static const WxUserAuthResp_Status USER_BANNED = WxUserAuthResp_Status._(1, 'USER_BANNED');
  static const WxUserAuthResp_Status ACCESS_TOKEN_INVALID = WxUserAuthResp_Status._(2, 'ACCESS_TOKEN_INVALID');

  static const $core.List<WxUserAuthResp_Status> values = <WxUserAuthResp_Status> [
    OK,
    USER_BANNED,
    ACCESS_TOKEN_INVALID,
  ];

  static final $core.Map<$core.int, WxUserAuthResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WxUserAuthResp_Status valueOf($core.int value) => _byValue[value];

  const WxUserAuthResp_Status._($core.int v, $core.String n) : super(v, n);
}

