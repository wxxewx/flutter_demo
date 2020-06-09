///
//  Generated code. Do not modify.
//  source: shop_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CATEGORY extends $pb.ProtobufEnum {
  static const CATEGORY ALL = CATEGORY._(0, 'ALL');
  static const CATEGORY GIFT = CATEGORY._(1, 'GIFT');
  static const CATEGORY AVATAR_BOX = CATEGORY._(2, 'AVATAR_BOX');
  static const CATEGORY SEAT_GUARDIAN = CATEGORY._(3, 'SEAT_GUARDIAN');
  static const CATEGORY BOX = CATEGORY._(4, 'BOX');
  static const CATEGORY KEY = CATEGORY._(5, 'KEY');
  static const CATEGORY NOBLE = CATEGORY._(6, 'NOBLE');
  static const CATEGORY AVATAR_DECORATOR_1 = CATEGORY._(7, 'AVATAR_DECORATOR_1');
  static const CATEGORY AVATAR_DECORATOR_2 = CATEGORY._(8, 'AVATAR_DECORATOR_2');
  static const CATEGORY AVATAR_DECORATOR_3 = CATEGORY._(9, 'AVATAR_DECORATOR_3');
  static const CATEGORY PROP = CATEGORY._(10, 'PROP');
  static const CATEGORY BLIND_BOX = CATEGORY._(11, 'BLIND_BOX');

  static const $core.List<CATEGORY> values = <CATEGORY> [
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
    PROP,
    BLIND_BOX,
  ];

  static final $core.Map<$core.int, CATEGORY> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CATEGORY valueOf($core.int value) => _byValue[value];

  const CATEGORY._($core.int v, $core.String n) : super(v, n);
}

class PRODUCT_GRADE extends $pb.ProtobufEnum {
  static const PRODUCT_GRADE NONE = PRODUCT_GRADE._(0, 'NONE');
  static const PRODUCT_GRADE BROZEN = PRODUCT_GRADE._(1, 'BROZEN');
  static const PRODUCT_GRADE SILVER = PRODUCT_GRADE._(2, 'SILVER');
  static const PRODUCT_GRADE GOLDEN = PRODUCT_GRADE._(3, 'GOLDEN');

  static const $core.List<PRODUCT_GRADE> values = <PRODUCT_GRADE> [
    NONE,
    BROZEN,
    SILVER,
    GOLDEN,
  ];

  static final $core.Map<$core.int, PRODUCT_GRADE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PRODUCT_GRADE valueOf($core.int value) => _byValue[value];

  const PRODUCT_GRADE._($core.int v, $core.String n) : super(v, n);
}

class PayChannel extends $pb.ProtobufEnum {
  static const PayChannel BALANCE = PayChannel._(0, 'BALANCE');
  static const PayChannel ALIPAY_APP = PayChannel._(1, 'ALIPAY_APP');
  static const PayChannel WEIXIN_APP = PayChannel._(2, 'WEIXIN_APP');
  static const PayChannel APPLE = PayChannel._(3, 'APPLE');

  static const $core.List<PayChannel> values = <PayChannel> [
    BALANCE,
    ALIPAY_APP,
    WEIXIN_APP,
    APPLE,
  ];

  static final $core.Map<$core.int, PayChannel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PayChannel valueOf($core.int value) => _byValue[value];

  const PayChannel._($core.int v, $core.String n) : super(v, n);
}

class OS extends $pb.ProtobufEnum {
  static const OS OS_UNK = OS._(0, 'OS_UNK');
  static const OS OS_IOS = OS._(1, 'OS_IOS');
  static const OS OS_ANDROID = OS._(2, 'OS_ANDROID');

  static const $core.List<OS> values = <OS> [
    OS_UNK,
    OS_IOS,
    OS_ANDROID,
  ];

  static final $core.Map<$core.int, OS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OS valueOf($core.int value) => _byValue[value];

  const OS._($core.int v, $core.String n) : super(v, n);
}

class ShowListReq_Category extends $pb.ProtobufEnum {
  static const ShowListReq_Category ALL = ShowListReq_Category._(0, 'ALL');
  static const ShowListReq_Category AVATAR_BOX = ShowListReq_Category._(1, 'AVATAR_BOX');
  static const ShowListReq_Category CHAT_BUBBLE = ShowListReq_Category._(2, 'CHAT_BUBBLE');
  static const ShowListReq_Category MIC_RIPPLE = ShowListReq_Category._(3, 'MIC_RIPPLE');
  static const ShowListReq_Category CARD_SHOW = ShowListReq_Category._(4, 'CARD_SHOW');
  static const ShowListReq_Category VEHICLE = ShowListReq_Category._(5, 'VEHICLE');

  static const $core.List<ShowListReq_Category> values = <ShowListReq_Category> [
    ALL,
    AVATAR_BOX,
    CHAT_BUBBLE,
    MIC_RIPPLE,
    CARD_SHOW,
    VEHICLE,
  ];

  static final $core.Map<$core.int, ShowListReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShowListReq_Category valueOf($core.int value) => _byValue[value];

  const ShowListReq_Category._($core.int v, $core.String n) : super(v, n);
}

class ShowCtrlReq_Cmd extends $pb.ProtobufEnum {
  static const ShowCtrlReq_Cmd OFF = ShowCtrlReq_Cmd._(0, 'OFF');
  static const ShowCtrlReq_Cmd ON = ShowCtrlReq_Cmd._(1, 'ON');

  static const $core.List<ShowCtrlReq_Cmd> values = <ShowCtrlReq_Cmd> [
    OFF,
    ON,
  ];

  static final $core.Map<$core.int, ShowCtrlReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShowCtrlReq_Cmd valueOf($core.int value) => _byValue[value];

  const ShowCtrlReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class ShowCtrlResp_Status extends $pb.ProtobufEnum {
  static const ShowCtrlResp_Status OK = ShowCtrlResp_Status._(0, 'OK');
  static const ShowCtrlResp_Status TOKEN_INVALID = ShowCtrlResp_Status._(1, 'TOKEN_INVALID');
  static const ShowCtrlResp_Status NOT_HAVE_SHOW = ShowCtrlResp_Status._(2, 'NOT_HAVE_SHOW');

  static const $core.List<ShowCtrlResp_Status> values = <ShowCtrlResp_Status> [
    OK,
    TOKEN_INVALID,
    NOT_HAVE_SHOW,
  ];

  static final $core.Map<$core.int, ShowCtrlResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShowCtrlResp_Status valueOf($core.int value) => _byValue[value];

  const ShowCtrlResp_Status._($core.int v, $core.String n) : super(v, n);
}

class OpenBoxResp_STATUS extends $pb.ProtobufEnum {
  static const OpenBoxResp_STATUS OK = OpenBoxResp_STATUS._(0, 'OK');
  static const OpenBoxResp_STATUS TOKEN_INVALID = OpenBoxResp_STATUS._(1, 'TOKEN_INVALID');
  static const OpenBoxResp_STATUS KEY_NEEDED = OpenBoxResp_STATUS._(2, 'KEY_NEEDED');
  static const OpenBoxResp_STATUS BOX_EXHAUSTED = OpenBoxResp_STATUS._(3, 'BOX_EXHAUSTED');
  static const OpenBoxResp_STATUS TRANSACTION_FAILURE = OpenBoxResp_STATUS._(4, 'TRANSACTION_FAILURE');

  static const $core.List<OpenBoxResp_STATUS> values = <OpenBoxResp_STATUS> [
    OK,
    TOKEN_INVALID,
    KEY_NEEDED,
    BOX_EXHAUSTED,
    TRANSACTION_FAILURE,
  ];

  static final $core.Map<$core.int, OpenBoxResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OpenBoxResp_STATUS valueOf($core.int value) => _byValue[value];

  const OpenBoxResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class SendGiftReq_Context extends $pb.ProtobufEnum {
  static const SendGiftReq_Context CHATROOM = SendGiftReq_Context._(0, 'CHATROOM');
  static const SendGiftReq_Context IM = SendGiftReq_Context._(1, 'IM');

  static const $core.List<SendGiftReq_Context> values = <SendGiftReq_Context> [
    CHATROOM,
    IM,
  ];

  static final $core.Map<$core.int, SendGiftReq_Context> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SendGiftReq_Context valueOf($core.int value) => _byValue[value];

  const SendGiftReq_Context._($core.int v, $core.String n) : super(v, n);
}

class SendGiftResp_STATUS extends $pb.ProtobufEnum {
  static const SendGiftResp_STATUS OK = SendGiftResp_STATUS._(0, 'OK');
  static const SendGiftResp_STATUS BAG_INSUFFICIENT = SendGiftResp_STATUS._(1, 'BAG_INSUFFICIENT');
  static const SendGiftResp_STATUS ERROR = SendGiftResp_STATUS._(2, 'ERROR');
  static const SendGiftResp_STATUS TOKEN_INVALID = SendGiftResp_STATUS._(3, 'TOKEN_INVALID');

  static const $core.List<SendGiftResp_STATUS> values = <SendGiftResp_STATUS> [
    OK,
    BAG_INSUFFICIENT,
    ERROR,
    TOKEN_INVALID,
  ];

  static final $core.Map<$core.int, SendGiftResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SendGiftResp_STATUS valueOf($core.int value) => _byValue[value];

  const SendGiftResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class HappyPayReq_Channel extends $pb.ProtobufEnum {
  static const HappyPayReq_Channel BALANCE = HappyPayReq_Channel._(0, 'BALANCE');
  static const HappyPayReq_Channel ALIPAY_APP = HappyPayReq_Channel._(1, 'ALIPAY_APP');
  static const HappyPayReq_Channel WEIXIN_APP = HappyPayReq_Channel._(2, 'WEIXIN_APP');
  static const HappyPayReq_Channel WEIXIN_PUB = HappyPayReq_Channel._(3, 'WEIXIN_PUB');
  static const HappyPayReq_Channel ALIPAY_WAP = HappyPayReq_Channel._(4, 'ALIPAY_WAP');
  static const HappyPayReq_Channel APPLE = HappyPayReq_Channel._(5, 'APPLE');

  static const $core.List<HappyPayReq_Channel> values = <HappyPayReq_Channel> [
    BALANCE,
    ALIPAY_APP,
    WEIXIN_APP,
    WEIXIN_PUB,
    ALIPAY_WAP,
    APPLE,
  ];

  static final $core.Map<$core.int, HappyPayReq_Channel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HappyPayReq_Channel valueOf($core.int value) => _byValue[value];

  const HappyPayReq_Channel._($core.int v, $core.String n) : super(v, n);
}

class HappyPayReq_Usage extends $pb.ProtobufEnum {
  static const HappyPayReq_Usage Buy = HappyPayReq_Usage._(0, 'Buy');
  static const HappyPayReq_Usage Send = HappyPayReq_Usage._(1, 'Send');

  static const $core.List<HappyPayReq_Usage> values = <HappyPayReq_Usage> [
    Buy,
    Send,
  ];

  static final $core.Map<$core.int, HappyPayReq_Usage> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HappyPayReq_Usage valueOf($core.int value) => _byValue[value];

  const HappyPayReq_Usage._($core.int v, $core.String n) : super(v, n);
}

class HappyPayResp_Status extends $pb.ProtobufEnum {
  static const HappyPayResp_Status OK = HappyPayResp_Status._(0, 'OK');
  static const HappyPayResp_Status TOKEN_INVALID = HappyPayResp_Status._(1, 'TOKEN_INVALID');
  static const HappyPayResp_Status TRANSACTION_FAILURE = HappyPayResp_Status._(2, 'TRANSACTION_FAILURE');
  static const HappyPayResp_Status PARAMETER_ERROR = HappyPayResp_Status._(3, 'PARAMETER_ERROR');
  static const HappyPayResp_Status BALANCE_INSUFFICIENT = HappyPayResp_Status._(4, 'BALANCE_INSUFFICIENT');

  static const $core.List<HappyPayResp_Status> values = <HappyPayResp_Status> [
    OK,
    TOKEN_INVALID,
    TRANSACTION_FAILURE,
    PARAMETER_ERROR,
    BALANCE_INSUFFICIENT,
  ];

  static final $core.Map<$core.int, HappyPayResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HappyPayResp_Status valueOf($core.int value) => _byValue[value];

  const HappyPayResp_Status._($core.int v, $core.String n) : super(v, n);
}

class AccountRechargeResp_Status extends $pb.ProtobufEnum {
  static const AccountRechargeResp_Status OK = AccountRechargeResp_Status._(0, 'OK');
  static const AccountRechargeResp_Status TOKEN_INVALID = AccountRechargeResp_Status._(1, 'TOKEN_INVALID');
  static const AccountRechargeResp_Status TRANSACTION_FAILURE = AccountRechargeResp_Status._(2, 'TRANSACTION_FAILURE');
  static const AccountRechargeResp_Status PARAMETER_ERROR = AccountRechargeResp_Status._(3, 'PARAMETER_ERROR');

  static const $core.List<AccountRechargeResp_Status> values = <AccountRechargeResp_Status> [
    OK,
    TOKEN_INVALID,
    TRANSACTION_FAILURE,
    PARAMETER_ERROR,
  ];

  static final $core.Map<$core.int, AccountRechargeResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountRechargeResp_Status valueOf($core.int value) => _byValue[value];

  const AccountRechargeResp_Status._($core.int v, $core.String n) : super(v, n);
}

class AccountWithdrawReq_WithDrawChannel extends $pb.ProtobufEnum {
  static const AccountWithdrawReq_WithDrawChannel UNK = AccountWithdrawReq_WithDrawChannel._(0, 'UNK');
  static const AccountWithdrawReq_WithDrawChannel BANK = AccountWithdrawReq_WithDrawChannel._(1, 'BANK');
  static const AccountWithdrawReq_WithDrawChannel ALIPAY = AccountWithdrawReq_WithDrawChannel._(2, 'ALIPAY');
  static const AccountWithdrawReq_WithDrawChannel WX = AccountWithdrawReq_WithDrawChannel._(3, 'WX');

  static const $core.List<AccountWithdrawReq_WithDrawChannel> values = <AccountWithdrawReq_WithDrawChannel> [
    UNK,
    BANK,
    ALIPAY,
    WX,
  ];

  static final $core.Map<$core.int, AccountWithdrawReq_WithDrawChannel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountWithdrawReq_WithDrawChannel valueOf($core.int value) => _byValue[value];

  const AccountWithdrawReq_WithDrawChannel._($core.int v, $core.String n) : super(v, n);
}

class AccountWithdrawResp_Status extends $pb.ProtobufEnum {
  static const AccountWithdrawResp_Status OK = AccountWithdrawResp_Status._(0, 'OK');
  static const AccountWithdrawResp_Status TOKEN_INVALID = AccountWithdrawResp_Status._(1, 'TOKEN_INVALID');
  static const AccountWithdrawResp_Status INSUFFICIENT = AccountWithdrawResp_Status._(2, 'INSUFFICIENT');
  static const AccountWithdrawResp_Status PARAMTER_ERROR = AccountWithdrawResp_Status._(3, 'PARAMTER_ERROR');

  static const $core.List<AccountWithdrawResp_Status> values = <AccountWithdrawResp_Status> [
    OK,
    TOKEN_INVALID,
    INSUFFICIENT,
    PARAMTER_ERROR,
  ];

  static final $core.Map<$core.int, AccountWithdrawResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountWithdrawResp_Status valueOf($core.int value) => _byValue[value];

  const AccountWithdrawResp_Status._($core.int v, $core.String n) : super(v, n);
}

class WithdrawQueryResp_Status extends $pb.ProtobufEnum {
  static const WithdrawQueryResp_Status OK = WithdrawQueryResp_Status._(0, 'OK');
  static const WithdrawQueryResp_Status TOKEN_INVALID = WithdrawQueryResp_Status._(1, 'TOKEN_INVALID');

  static const $core.List<WithdrawQueryResp_Status> values = <WithdrawQueryResp_Status> [
    OK,
    TOKEN_INVALID,
  ];

  static final $core.Map<$core.int, WithdrawQueryResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WithdrawQueryResp_Status valueOf($core.int value) => _byValue[value];

  const WithdrawQueryResp_Status._($core.int v, $core.String n) : super(v, n);
}

class WithdrawQueryResp_State extends $pb.ProtobufEnum {
  static const WithdrawQueryResp_State STATE_UNK = WithdrawQueryResp_State._(0, 'STATE_UNK');
  static const WithdrawQueryResp_State PENDING = WithdrawQueryResp_State._(1, 'PENDING');
  static const WithdrawQueryResp_State PASS = WithdrawQueryResp_State._(2, 'PASS');
  static const WithdrawQueryResp_State SUCCESS = WithdrawQueryResp_State._(3, 'SUCCESS');
  static const WithdrawQueryResp_State FAILED = WithdrawQueryResp_State._(4, 'FAILED');

  static const $core.List<WithdrawQueryResp_State> values = <WithdrawQueryResp_State> [
    STATE_UNK,
    PENDING,
    PASS,
    SUCCESS,
    FAILED,
  ];

  static final $core.Map<$core.int, WithdrawQueryResp_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WithdrawQueryResp_State valueOf($core.int value) => _byValue[value];

  const WithdrawQueryResp_State._($core.int v, $core.String n) : super(v, n);
}

class AccountSettleReq_Cmd extends $pb.ProtobufEnum {
  static const AccountSettleReq_Cmd QUERY = AccountSettleReq_Cmd._(0, 'QUERY');
  static const AccountSettleReq_Cmd UPDATE = AccountSettleReq_Cmd._(1, 'UPDATE');
  static const AccountSettleReq_Cmd REMOVE = AccountSettleReq_Cmd._(2, 'REMOVE');

  static const $core.List<AccountSettleReq_Cmd> values = <AccountSettleReq_Cmd> [
    QUERY,
    UPDATE,
    REMOVE,
  ];

  static final $core.Map<$core.int, AccountSettleReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountSettleReq_Cmd valueOf($core.int value) => _byValue[value];

  const AccountSettleReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class AccountSettleResp_Status extends $pb.ProtobufEnum {
  static const AccountSettleResp_Status OK = AccountSettleResp_Status._(0, 'OK');
  static const AccountSettleResp_Status TOKEN_INVALID = AccountSettleResp_Status._(1, 'TOKEN_INVALID');
  static const AccountSettleResp_Status TRANSACTION_FAILED = AccountSettleResp_Status._(2, 'TRANSACTION_FAILED');

  static const $core.List<AccountSettleResp_Status> values = <AccountSettleResp_Status> [
    OK,
    TOKEN_INVALID,
    TRANSACTION_FAILED,
  ];

  static final $core.Map<$core.int, AccountSettleResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountSettleResp_Status valueOf($core.int value) => _byValue[value];

  const AccountSettleResp_Status._($core.int v, $core.String n) : super(v, n);
}

class OrderChargeResp_Status extends $pb.ProtobufEnum {
  static const OrderChargeResp_Status OK = OrderChargeResp_Status._(0, 'OK');
  static const OrderChargeResp_Status TOKEN_INVALID = OrderChargeResp_Status._(1, 'TOKEN_INVALID');
  static const OrderChargeResp_Status INSUFFICIENT = OrderChargeResp_Status._(2, 'INSUFFICIENT');
  static const OrderChargeResp_Status TRANSACTION_FAILURE = OrderChargeResp_Status._(3, 'TRANSACTION_FAILURE');

  static const $core.List<OrderChargeResp_Status> values = <OrderChargeResp_Status> [
    OK,
    TOKEN_INVALID,
    INSUFFICIENT,
    TRANSACTION_FAILURE,
  ];

  static final $core.Map<$core.int, OrderChargeResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderChargeResp_Status valueOf($core.int value) => _byValue[value];

  const OrderChargeResp_Status._($core.int v, $core.String n) : super(v, n);
}

class OrderStateReq_Category extends $pb.ProtobufEnum {
  static const OrderStateReq_Category UNK = OrderStateReq_Category._(0, 'UNK');
  static const OrderStateReq_Category RECHARGE = OrderStateReq_Category._(1, 'RECHARGE');
  static const OrderStateReq_Category CHARGE = OrderStateReq_Category._(2, 'CHARGE');
  static const OrderStateReq_Category HAPPY_PAY = OrderStateReq_Category._(3, 'HAPPY_PAY');

  static const $core.List<OrderStateReq_Category> values = <OrderStateReq_Category> [
    UNK,
    RECHARGE,
    CHARGE,
    HAPPY_PAY,
  ];

  static final $core.Map<$core.int, OrderStateReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderStateReq_Category valueOf($core.int value) => _byValue[value];

  const OrderStateReq_Category._($core.int v, $core.String n) : super(v, n);
}

class OrderStateResp_State extends $pb.ProtobufEnum {
  static const OrderStateResp_State PENDING = OrderStateResp_State._(0, 'PENDING');
  static const OrderStateResp_State SUCCESS = OrderStateResp_State._(1, 'SUCCESS');

  static const $core.List<OrderStateResp_State> values = <OrderStateResp_State> [
    PENDING,
    SUCCESS,
  ];

  static final $core.Map<$core.int, OrderStateResp_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderStateResp_State valueOf($core.int value) => _byValue[value];

  const OrderStateResp_State._($core.int v, $core.String n) : super(v, n);
}

class AccountDetailReq_Category extends $pb.ProtobufEnum {
  static const AccountDetailReq_Category CATEGORY_UNK = AccountDetailReq_Category._(0, 'CATEGORY_UNK');
  static const AccountDetailReq_Category DIAMOND = AccountDetailReq_Category._(1, 'DIAMOND');
  static const AccountDetailReq_Category ATTRACTION = AccountDetailReq_Category._(2, 'ATTRACTION');

  static const $core.List<AccountDetailReq_Category> values = <AccountDetailReq_Category> [
    CATEGORY_UNK,
    DIAMOND,
    ATTRACTION,
  ];

  static final $core.Map<$core.int, AccountDetailReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountDetailReq_Category valueOf($core.int value) => _byValue[value];

  const AccountDetailReq_Category._($core.int v, $core.String n) : super(v, n);
}

class AccountDetailResp_STATUS extends $pb.ProtobufEnum {
  static const AccountDetailResp_STATUS OK = AccountDetailResp_STATUS._(0, 'OK');
  static const AccountDetailResp_STATUS TOKEN_INVALID = AccountDetailResp_STATUS._(1, 'TOKEN_INVALID');
  static const AccountDetailResp_STATUS ERROR = AccountDetailResp_STATUS._(2, 'ERROR');

  static const $core.List<AccountDetailResp_STATUS> values = <AccountDetailResp_STATUS> [
    OK,
    TOKEN_INVALID,
    ERROR,
  ];

  static final $core.Map<$core.int, AccountDetailResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountDetailResp_STATUS valueOf($core.int value) => _byValue[value];

  const AccountDetailResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class ShopRankReq_Category extends $pb.ProtobufEnum {
  static const ShopRankReq_Category TRUE_LOVE = ShopRankReq_Category._(0, 'TRUE_LOVE');
  static const ShopRankReq_Category OPEN_BOX_LUCK = ShopRankReq_Category._(1, 'OPEN_BOX_LUCK');
  static const ShopRankReq_Category GUARDIAN = ShopRankReq_Category._(2, 'GUARDIAN');
  static const ShopRankReq_Category NOBLE = ShopRankReq_Category._(3, 'NOBLE');
  static const ShopRankReq_Category CONSUME = ShopRankReq_Category._(4, 'CONSUME');
  static const ShopRankReq_Category ATTRACTION = ShopRankReq_Category._(5, 'ATTRACTION');
  static const ShopRankReq_Category CP = ShopRankReq_Category._(6, 'CP');
  static const ShopRankReq_Category CELEBRITY = ShopRankReq_Category._(7, 'CELEBRITY');

  static const $core.List<ShopRankReq_Category> values = <ShopRankReq_Category> [
    TRUE_LOVE,
    OPEN_BOX_LUCK,
    GUARDIAN,
    NOBLE,
    CONSUME,
    ATTRACTION,
    CP,
    CELEBRITY,
  ];

  static final $core.Map<$core.int, ShopRankReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShopRankReq_Category valueOf($core.int value) => _byValue[value];

  const ShopRankReq_Category._($core.int v, $core.String n) : super(v, n);
}

class ShopRankReq_Period extends $pb.ProtobufEnum {
  static const ShopRankReq_Period WEEK = ShopRankReq_Period._(0, 'WEEK');
  static const ShopRankReq_Period DAY = ShopRankReq_Period._(1, 'DAY');
  static const ShopRankReq_Period MONTH = ShopRankReq_Period._(2, 'MONTH');

  static const $core.List<ShopRankReq_Period> values = <ShopRankReq_Period> [
    WEEK,
    DAY,
    MONTH,
  ];

  static final $core.Map<$core.int, ShopRankReq_Period> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShopRankReq_Period valueOf($core.int value) => _byValue[value];

  const ShopRankReq_Period._($core.int v, $core.String n) : super(v, n);
}

class ShopRankResp_Status extends $pb.ProtobufEnum {
  static const ShopRankResp_Status OK = ShopRankResp_Status._(0, 'OK');
  static const ShopRankResp_Status ERROR = ShopRankResp_Status._(1, 'ERROR');

  static const $core.List<ShopRankResp_Status> values = <ShopRankResp_Status> [
    OK,
    ERROR,
  ];

  static final $core.Map<$core.int, ShopRankResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShopRankResp_Status valueOf($core.int value) => _byValue[value];

  const ShopRankResp_Status._($core.int v, $core.String n) : super(v, n);
}

class ShopMiniRankResp_Status extends $pb.ProtobufEnum {
  static const ShopMiniRankResp_Status OK = ShopMiniRankResp_Status._(0, 'OK');
  static const ShopMiniRankResp_Status ERROR = ShopMiniRankResp_Status._(1, 'ERROR');

  static const $core.List<ShopMiniRankResp_Status> values = <ShopMiniRankResp_Status> [
    OK,
    ERROR,
  ];

  static final $core.Map<$core.int, ShopMiniRankResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShopMiniRankResp_Status valueOf($core.int value) => _byValue[value];

  const ShopMiniRankResp_Status._($core.int v, $core.String n) : super(v, n);
}

class ExchangeResp_Status extends $pb.ProtobufEnum {
  static const ExchangeResp_Status OK = ExchangeResp_Status._(0, 'OK');
  static const ExchangeResp_Status TOKEN_INVALID = ExchangeResp_Status._(1, 'TOKEN_INVALID');
  static const ExchangeResp_Status INSUFFICIENT = ExchangeResp_Status._(2, 'INSUFFICIENT');
  static const ExchangeResp_Status FAILED = ExchangeResp_Status._(3, 'FAILED');

  static const $core.List<ExchangeResp_Status> values = <ExchangeResp_Status> [
    OK,
    TOKEN_INVALID,
    INSUFFICIENT,
    FAILED,
  ];

  static final $core.Map<$core.int, ExchangeResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExchangeResp_Status valueOf($core.int value) => _byValue[value];

  const ExchangeResp_Status._($core.int v, $core.String n) : super(v, n);
}

