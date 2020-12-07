///
//  Generated code. Do not modify.
//  source: shop_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const CATEGORY$json = const {
  '1': 'CATEGORY',
  '2': const [
    const {'1': 'ALL', '2': 0},
    const {'1': 'GIFT', '2': 1},
    const {'1': 'AVATAR_BOX', '2': 2},
    const {'1': 'SEAT_GUARDIAN', '2': 3},
    const {'1': 'BOX', '2': 4},
    const {'1': 'KEY', '2': 5},
    const {'1': 'NOBLE', '2': 6},
    const {'1': 'AVATAR_DECORATOR_1', '2': 7},
    const {'1': 'AVATAR_DECORATOR_2', '2': 8},
    const {'1': 'AVATAR_DECORATOR_3', '2': 9},
    const {'1': 'PROP', '2': 10},
    const {'1': 'BLIND_BOX', '2': 11},
    const {'1': 'EXP_CARD', '2': 12},
    const {'1': 'SHOW', '2': 13},
    const {'1': 'FANS_CARD', '2': 14},
    const {'1': 'FREE', '2': 15},
  ],
};

const PRODUCT_GRADE$json = const {
  '1': 'PRODUCT_GRADE',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'BROZEN', '2': 1},
    const {'1': 'SILVER', '2': 2},
    const {'1': 'GOLDEN', '2': 3},
  ],
};

const PRODUCT_ORIGIN$json = const {
  '1': 'PRODUCT_ORIGIN',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'ACTIVITY', '2': 1},
    const {'1': 'LV', '2': 2},
    const {'1': 'PEERAGE', '2': 3},
  ],
};

const PayChannel$json = const {
  '1': 'PayChannel',
  '2': const [
    const {'1': 'BALANCE', '2': 0},
    const {'1': 'ALIPAY_APP', '2': 1},
    const {'1': 'WEIXIN_APP', '2': 2},
    const {'1': 'APPLE', '2': 3},
  ],
};

const OS$json = const {
  '1': 'OS',
  '2': const [
    const {'1': 'OS_UNK', '2': 0},
    const {'1': 'OS_IOS', '2': 1},
    const {'1': 'OS_ANDROID', '2': 2},
  ],
};

const Sticker$json = const {
  '1': 'Sticker',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
  ],
};

const StickersResp$json = const {
  '1': 'StickersResp',
  '2': const [
    const {'1': 'stickers', '3': 1, '4': 3, '5': 11, '6': '.proto_def.Sticker', '10': 'stickers'},
  ],
};

const Product$json = const {
  '1': 'Product',
  '2': const [
    const {'1': 'pid', '3': 1, '4': 1, '5': 5, '10': 'pid'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'price', '3': 4, '4': 1, '5': 5, '10': 'price'},
    const {'1': 'period', '3': 5, '4': 1, '5': 5, '10': 'period'},
    const {'1': 'permanent', '3': 6, '4': 1, '5': 8, '10': 'permanent'},
    const {'1': 'category', '3': 7, '4': 1, '5': 14, '6': '.proto_def.CATEGORY', '10': 'category'},
    const {'1': 'grade', '3': 8, '4': 1, '5': 14, '6': '.proto_def.PRODUCT_GRADE', '10': 'grade'},
    const {'1': 'priority', '3': 9, '4': 1, '5': 5, '10': 'priority'},
    const {'1': 'svga_url', '3': 10, '4': 1, '5': 9, '10': 'svgaUrl'},
    const {'1': 'svga_duration', '3': 11, '4': 1, '5': 5, '10': 'svgaDuration'},
    const {'1': 'diamonds', '3': 12, '4': 1, '5': 5, '10': 'diamonds'},
    const {'1': 'description', '3': 13, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'for_sale', '3': 14, '4': 1, '5': 8, '10': 'forSale'},
    const {'1': 'badge', '3': 15, '4': 1, '5': 9, '10': 'badge'},
    const {'1': 'origin', '3': 16, '4': 1, '5': 14, '6': '.proto_def.PRODUCT_ORIGIN', '10': 'origin'},
  ],
};

const ShopProductsReq$json = const {
  '1': 'ShopProductsReq',
  '2': const [
    const {'1': 'category', '3': 1, '4': 1, '5': 14, '6': '.proto_def.CATEGORY', '10': 'category'},
  ],
};

const ShopProductsResp$json = const {
  '1': 'ShopProductsResp',
  '2': const [
    const {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.proto_def.Product', '10': 'products'},
  ],
};

const ShowListReq$json = const {
  '1': 'ShowListReq',
  '2': const [
    const {'1': 'category', '3': 1, '4': 1, '5': 14, '6': '.proto_def.ShowListReq.Category', '10': 'category'},
  ],
  '4': const [ShowListReq_Category$json],
};

const ShowListReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'ALL', '2': 0},
    const {'1': 'AVATAR_BOX', '2': 1},
    const {'1': 'CHAT_BUBBLE', '2': 2},
    const {'1': 'MIC_RIPPLE', '2': 3},
    const {'1': 'CARD_SHOW', '2': 4},
    const {'1': 'VEHICLE', '2': 5},
  ],
};

const ShowListResp$json = const {
  '1': 'ShowListResp',
  '2': const [
    const {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.proto_def.Product', '10': 'products'},
  ],
};

const MyShowReq$json = const {
  '1': 'MyShowReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.proto_def.ShowListReq.Category', '10': 'category'},
  ],
};

const MyShowResp$json = const {
  '1': 'MyShowResp',
  '2': const [
    const {'1': 'my_shows', '3': 1, '4': 3, '5': 11, '6': '.proto_def.MyShowResp.Show', '10': 'myShows'},
  ],
  '3': const [MyShowResp_Show$json],
};

const MyShowResp_Show$json = const {
  '1': 'Show',
  '2': const [
    const {'1': 'show_id', '3': 1, '4': 1, '5': 5, '10': 'showId'},
    const {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'weared', '3': 3, '4': 1, '5': 8, '10': 'weared'},
    const {'1': 'expires', '3': 4, '4': 1, '5': 9, '10': 'expires'},
    const {'1': 'category', '3': 5, '4': 1, '5': 14, '6': '.proto_def.ShowListReq.Category', '10': 'category'},
    const {'1': 'origin', '3': 6, '4': 1, '5': 14, '6': '.proto_def.PRODUCT_ORIGIN', '10': 'origin'},
    const {'1': 'permanent', '3': 7, '4': 1, '5': 8, '10': 'permanent'},
  ],
};

const ShowCtrlReq$json = const {
  '1': 'ShowCtrlReq',
  '2': const [
    const {'1': 'cmd', '3': 1, '4': 1, '5': 14, '6': '.proto_def.ShowCtrlReq.Cmd', '10': 'cmd'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'show_id', '3': 4, '4': 1, '5': 5, '10': 'showId'},
    const {'1': 'seat_idx', '3': 5, '4': 1, '5': 5, '10': 'seatIdx'},
    const {'1': 'room_id', '3': 6, '4': 1, '5': 9, '10': 'roomId'},
  ],
  '4': const [ShowCtrlReq_Cmd$json],
};

const ShowCtrlReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'OFF', '2': 0},
    const {'1': 'ON', '2': 1},
  ],
};

const ShowCtrlResp$json = const {
  '1': 'ShowCtrlResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.ShowCtrlResp.Status', '10': 'status'},
  ],
  '4': const [ShowCtrlResp_Status$json],
};

const ShowCtrlResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'NOT_HAVE_SHOW', '2': 2},
  ],
};

const OpenBoxReq$json = const {
  '1': 'OpenBoxReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'box_grade', '3': 3, '4': 1, '5': 14, '6': '.proto_def.PRODUCT_GRADE', '10': 'boxGrade'},
    const {'1': 'room_id', '3': 4, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'count', '3': 5, '4': 1, '5': 5, '10': 'count'},
  ],
};

const OpenBoxResp$json = const {
  '1': 'OpenBoxResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.OpenBoxResp.STATUS', '10': 'status'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.proto_def.OpenBoxResp.Item', '10': 'items'},
    const {'1': 'reward', '3': 3, '4': 1, '5': 11, '6': '.proto_def.OpenBoxResp.RewardBox', '10': 'reward'},
  ],
  '3': const [OpenBoxResp_Item$json, OpenBoxResp_RewardBox$json],
  '4': const [OpenBoxResp_STATUS$json],
};

const OpenBoxResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
  ],
};

const OpenBoxResp_RewardBox$json = const {
  '1': 'RewardBox',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'product_id', '3': 3, '4': 1, '5': 5, '10': 'productId'},
  ],
};

const OpenBoxResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'KEY_NEEDED', '2': 2},
    const {'1': 'BOX_EXHAUSTED', '2': 3},
    const {'1': 'TRANSACTION_FAILURE', '2': 4},
  ],
};

const SendGiftReq$json = const {
  '1': 'SendGiftReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 3, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'context', '3': 5, '4': 1, '5': 14, '6': '.proto_def.SendGiftReq.Context', '10': 'context'},
    const {'1': 'gifts', '3': 4, '4': 3, '5': 11, '6': '.proto_def.SendGiftReq.Gift', '10': 'gifts'},
  ],
  '3': const [SendGiftReq_Gift$json],
  '4': const [SendGiftReq_Context$json],
};

const SendGiftReq_Gift$json = const {
  '1': 'Gift',
  '2': const [
    const {'1': 'to_uid', '3': 1, '4': 1, '5': 9, '10': 'toUid'},
    const {'1': 'to_name', '3': 2, '4': 1, '5': 9, '10': 'toName'},
    const {'1': 'gift_id', '3': 3, '4': 1, '5': 5, '10': 'giftId'},
    const {'1': 'count', '3': 4, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'seat_idx', '3': 5, '4': 1, '5': 5, '10': 'seatIdx'},
  ],
};

const SendGiftReq_Context$json = const {
  '1': 'Context',
  '2': const [
    const {'1': 'CHATROOM', '2': 0},
    const {'1': 'IM', '2': 1},
  ],
};

const SendGiftResp$json = const {
  '1': 'SendGiftResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SendGiftResp.STATUS', '10': 'status'},
  ],
  '4': const [SendGiftResp_STATUS$json],
};

const SendGiftResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'BAG_INSUFFICIENT', '2': 1},
    const {'1': 'ERROR', '2': 2},
    const {'1': 'TOKEN_INVALID', '2': 3},
  ],
};

const DonateGiftReq$json = const {
  '1': 'DonateGiftReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 3, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'product_id', '3': 4, '4': 1, '5': 5, '10': 'productId'},
    const {'1': 'to_users', '3': 5, '4': 3, '5': 11, '6': '.proto_def.DonateGiftReq.User', '10': 'toUsers'},
  ],
  '3': const [DonateGiftReq_User$json],
};

const DonateGiftReq_User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'seat_idx', '3': 3, '4': 1, '5': 5, '10': 'seatIdx'},
    const {'1': 'count', '3': 4, '4': 1, '5': 5, '10': 'count'},
  ],
};

const DonateGiftResp$json = const {
  '1': 'DonateGiftResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SendGiftResp.STATUS', '10': 'status'},
  ],
};

const HappyPayReq$json = const {
  '1': 'HappyPayReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'channel', '3': 3, '4': 1, '5': 14, '6': '.proto_def.HappyPayReq.Channel', '10': 'channel'},
    const {'1': 'product_id', '3': 4, '4': 1, '5': 5, '10': 'productId'},
    const {'1': 'count', '3': 5, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'coupon_id', '3': 6, '4': 1, '5': 5, '10': 'couponId'},
    const {'1': 'usage', '3': 7, '4': 1, '5': 14, '6': '.proto_def.HappyPayReq.Usage', '10': 'usage'},
    const {'1': 'to_users', '3': 8, '4': 3, '5': 11, '6': '.proto_def.HappyPayReq.User', '10': 'toUsers'},
    const {'1': 'room_id', '3': 9, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'grade', '3': 10, '4': 1, '5': 14, '6': '.proto_def.PRODUCT_GRADE', '10': 'grade'},
  ],
  '3': const [HappyPayReq_User$json],
  '4': const [HappyPayReq_Channel$json, HappyPayReq_Usage$json],
};

const HappyPayReq_User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'seat_idx', '3': 3, '4': 1, '5': 5, '10': 'seatIdx'},
    const {'1': 'count', '3': 4, '4': 1, '5': 5, '10': 'count'},
  ],
};

const HappyPayReq_Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'BALANCE', '2': 0},
    const {'1': 'ALIPAY_APP', '2': 1},
    const {'1': 'WEIXIN_APP', '2': 2},
    const {'1': 'WEIXIN_PUB', '2': 3},
    const {'1': 'ALIPAY_WAP', '2': 4},
    const {'1': 'APPLE', '2': 5},
  ],
};

const HappyPayReq_Usage$json = const {
  '1': 'Usage',
  '2': const [
    const {'1': 'Buy', '2': 0},
    const {'1': 'Send', '2': 1},
  ],
};

const HappyPayResp$json = const {
  '1': 'HappyPayResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.HappyPayResp.Status', '10': 'status'},
    const {'1': 'json_str', '3': 2, '4': 1, '5': 9, '10': 'jsonStr'},
    const {'1': 'order_no', '3': 3, '4': 1, '5': 9, '10': 'orderNo'},
  ],
  '4': const [HappyPayResp_Status$json],
};

const HappyPayResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'TRANSACTION_FAILURE', '2': 2},
    const {'1': 'PARAMETER_ERROR', '2': 3},
    const {'1': 'BALANCE_INSUFFICIENT', '2': 4},
  ],
};

const BatchNumResp$json = const {
  '1': 'BatchNumResp',
  '2': const [
    const {'1': 'batch_nums', '3': 1, '4': 3, '5': 5, '10': 'batchNums'},
  ],
};

const AccountRechargeReq$json = const {
  '1': 'AccountRechargeReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 5, '10': 'amount'},
    const {'1': 'os', '3': 4, '4': 1, '5': 14, '6': '.proto_def.OS', '10': 'os'},
    const {'1': 'channel', '3': 5, '4': 1, '5': 14, '6': '.proto_def.PayChannel', '10': 'channel'},
  ],
};

const AccountRechargeResp$json = const {
  '1': 'AccountRechargeResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.AccountRechargeResp.Status', '10': 'status'},
    const {'1': 'json_str', '3': 2, '4': 1, '5': 9, '10': 'jsonStr'},
    const {'1': 'order_no', '3': 3, '4': 1, '5': 9, '10': 'orderNo'},
  ],
  '4': const [AccountRechargeResp_Status$json],
};

const AccountRechargeResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'TRANSACTION_FAILURE', '2': 2},
    const {'1': 'PARAMETER_ERROR', '2': 3},
  ],
};

const RechargeVerifyReq$json = const {
  '1': 'RechargeVerifyReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'receipt', '3': 3, '4': 1, '5': 9, '10': 'receipt'},
    const {'1': 'order_no', '3': 4, '4': 1, '5': 9, '10': 'orderNo'},
  ],
};

const RechargeVerifyResp$json = const {
  '1': 'RechargeVerifyResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
  ],
};

const AccountWithdrawReq$json = const {
  '1': 'AccountWithdrawReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 5, '10': 'amount'},
    const {'1': 'channel', '3': 4, '4': 1, '5': 14, '6': '.proto_def.AccountWithdrawReq.WithDrawChannel', '10': 'channel'},
    const {'1': 'apply_id', '3': 5, '4': 1, '5': 5, '10': 'applyId'},
  ],
  '4': const [AccountWithdrawReq_WithDrawChannel$json],
};

const AccountWithdrawReq_WithDrawChannel$json = const {
  '1': 'WithDrawChannel',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'BANK', '2': 1},
    const {'1': 'ALIPAY', '2': 2},
    const {'1': 'WX', '2': 3},
  ],
};

const AccountWithdrawResp$json = const {
  '1': 'AccountWithdrawResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.AccountWithdrawResp.Status', '10': 'status'},
  ],
  '4': const [AccountWithdrawResp_Status$json],
};

const AccountWithdrawResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'INSUFFICIENT', '2': 2},
    const {'1': 'PARAMTER_ERROR', '2': 3},
  ],
};

const WithdrawQueryReq$json = const {
  '1': 'WithdrawQueryReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const WithdrawQueryResp$json = const {
  '1': 'WithdrawQueryResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.WithdrawQueryResp.Status', '10': 'status'},
    const {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.proto_def.WithdrawQueryResp.State', '10': 'state'},
    const {'1': 'apply_id', '3': 3, '4': 1, '5': 5, '10': 'applyId'},
    const {'1': 'amount', '3': 4, '4': 1, '5': 5, '10': 'amount'},
    const {'1': 'date', '3': 5, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'comment', '3': 6, '4': 1, '5': 9, '10': 'comment'},
  ],
  '4': const [WithdrawQueryResp_Status$json, WithdrawQueryResp_State$json],
};

const WithdrawQueryResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
  ],
};

const WithdrawQueryResp_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'STATE_UNK', '2': 0},
    const {'1': 'PENDING', '2': 1},
    const {'1': 'PASS', '2': 2},
    const {'1': 'SUCCESS', '2': 3},
    const {'1': 'FAILED', '2': 4},
  ],
};

const BankListResp$json = const {
  '1': 'BankListResp',
  '2': const [
    const {'1': 'banks', '3': 1, '4': 3, '5': 11, '6': '.proto_def.BankListResp.Bank', '10': 'banks'},
  ],
  '3': const [BankListResp_Bank$json],
};

const BankListResp_Bank$json = const {
  '1': 'Bank',
  '2': const [
    const {'1': 'bank_id', '3': 1, '4': 1, '5': 5, '10': 'bankId'},
    const {'1': 'bank_name', '3': 2, '4': 1, '5': 9, '10': 'bankName'},
    const {'1': 'withdraw_fee', '3': 3, '4': 1, '5': 5, '10': 'withdrawFee'},
  ],
};

const AccountSettleReq$json = const {
  '1': 'AccountSettleReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'cmd', '3': 3, '4': 1, '5': 14, '6': '.proto_def.AccountSettleReq.Cmd', '10': 'cmd'},
    const {'1': 'settle', '3': 4, '4': 1, '5': 11, '6': '.proto_def.AccountSettleReq.Settle', '10': 'settle'},
  ],
  '3': const [AccountSettleReq_Settle$json],
  '4': const [AccountSettleReq_Cmd$json],
};

const AccountSettleReq_Settle$json = const {
  '1': 'Settle',
  '2': const [
    const {'1': 'bank_id', '3': 1, '4': 1, '5': 5, '10': 'bankId'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'account_name', '3': 3, '4': 1, '5': 9, '10': 'accountName'},
    const {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
  ],
};

const AccountSettleReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'QUERY', '2': 0},
    const {'1': 'UPDATE', '2': 1},
    const {'1': 'REMOVE', '2': 2},
  ],
};

const AccountSettleResp$json = const {
  '1': 'AccountSettleResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.AccountSettleResp.Status', '10': 'status'},
    const {'1': 'settle', '3': 2, '4': 1, '5': 11, '6': '.proto_def.AccountSettleResp.Settle', '10': 'settle'},
  ],
  '3': const [AccountSettleResp_Settle$json],
  '4': const [AccountSettleResp_Status$json],
};

const AccountSettleResp_Settle$json = const {
  '1': 'Settle',
  '2': const [
    const {'1': 'bank_name', '3': 1, '4': 1, '5': 9, '10': 'bankName'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'account_name', '3': 3, '4': 1, '5': 9, '10': 'accountName'},
    const {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'valid', '3': 5, '4': 1, '5': 8, '10': 'valid'},
  ],
};

const AccountSettleResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'TRANSACTION_FAILED', '2': 2},
  ],
};

const OrderChargeReq$json = const {
  '1': 'OrderChargeReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'product_id', '3': 3, '4': 1, '5': 5, '10': 'productId'},
    const {'1': 'coupon_id', '3': 4, '4': 1, '5': 5, '10': 'couponId'},
    const {'1': 'count', '3': 5, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'os', '3': 6, '4': 1, '5': 14, '6': '.proto_def.OS', '10': 'os'},
    const {'1': 'channel', '3': 7, '4': 1, '5': 14, '6': '.proto_def.PayChannel', '10': 'channel'},
  ],
};

const OrderChargeResp$json = const {
  '1': 'OrderChargeResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.OrderChargeResp.Status', '10': 'status'},
    const {'1': 'json_str', '3': 2, '4': 1, '5': 9, '10': 'jsonStr'},
    const {'1': 'order_no', '3': 3, '4': 1, '5': 9, '10': 'orderNo'},
  ],
  '4': const [OrderChargeResp_Status$json],
};

const OrderChargeResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'INSUFFICIENT', '2': 2},
    const {'1': 'TRANSACTION_FAILURE', '2': 3},
  ],
};

const OrderStateReq$json = const {
  '1': 'OrderStateReq',
  '2': const [
    const {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 5, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'order_no', '3': 1, '4': 1, '5': 9, '10': 'orderNo'},
    const {'1': 'category', '3': 2, '4': 1, '5': 14, '6': '.proto_def.OrderStateReq.Category', '10': 'category'},
    const {'1': 'os', '3': 3, '4': 1, '5': 14, '6': '.proto_def.OS', '10': 'os'},
  ],
  '4': const [OrderStateReq_Category$json],
};

const OrderStateReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'RECHARGE', '2': 1},
    const {'1': 'CHARGE', '2': 2},
    const {'1': 'HAPPY_PAY', '2': 3},
  ],
};

const OrderStateResp$json = const {
  '1': 'OrderStateResp',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.proto_def.OrderStateResp.State', '10': 'state'},
  ],
  '4': const [OrderStateResp_State$json],
};

const OrderStateResp_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'PENDING', '2': 0},
    const {'1': 'SUCCESS', '2': 1},
  ],
};

const AccountDetailReq$json = const {
  '1': 'AccountDetailReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.proto_def.AccountDetailReq.Category', '10': 'category'},
    const {'1': 'page_num', '3': 4, '4': 1, '5': 5, '10': 'pageNum'},
  ],
  '4': const [AccountDetailReq_Category$json],
};

const AccountDetailReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'CATEGORY_UNK', '2': 0},
    const {'1': 'DIAMOND', '2': 1},
    const {'1': 'ATTRACTION', '2': 2},
  ],
};

const AccountDetailResp$json = const {
  '1': 'AccountDetailResp',
  '2': const [
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.proto_def.AccountDetailResp.STATUS', '10': 'status'},
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.AccountDetailResp.Item', '10': 'items'},
  ],
  '3': const [AccountDetailResp_Item$json],
  '4': const [AccountDetailResp_STATUS$json],
};

const AccountDetailResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'cost', '3': 1, '4': 1, '5': 5, '10': 'cost'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'time', '3': 3, '4': 1, '5': 9, '10': 'time'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 9, '10': 'direction'},
  ],
};

const AccountDetailResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'ERROR', '2': 2},
  ],
};

const ShopRankReq$json = const {
  '1': 'ShopRankReq',
  '2': const [
    const {'1': 'category', '3': 1, '4': 1, '5': 14, '6': '.proto_def.ShopRankReq.Category', '10': 'category'},
    const {'1': 'room_id', '3': 2, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'period', '3': 3, '4': 1, '5': 14, '6': '.proto_def.ShopRankReq.Period', '10': 'period'},
  ],
  '4': const [ShopRankReq_Category$json, ShopRankReq_Period$json],
};

const ShopRankReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'TRUE_LOVE', '2': 0},
    const {'1': 'OPEN_BOX_LUCK', '2': 1},
    const {'1': 'GUARDIAN', '2': 2},
    const {'1': 'NOBLE', '2': 3},
    const {'1': 'CONSUME', '2': 4},
    const {'1': 'ATTRACTION', '2': 5},
    const {'1': 'CP', '2': 6},
    const {'1': 'CELEBRITY', '2': 7},
    const {'1': 'FANS_CLUB', '2': 8},
  ],
};

const ShopRankReq_Period$json = const {
  '1': 'Period',
  '2': const [
    const {'1': 'WEEK', '2': 0},
    const {'1': 'DAY', '2': 1},
    const {'1': 'MONTH', '2': 2},
    const {'1': 'ALL', '2': 3},
  ],
};

const ShopRankResp$json = const {
  '1': 'ShopRankResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.ShopRankResp.Status', '10': 'status'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.proto_def.ShopRankResp.Item', '10': 'items'},
  ],
  '3': const [ShopRankResp_User$json, ShopRankResp_Extension$json, ShopRankResp_Item$json],
  '4': const [ShopRankResp_Status$json],
};

const ShopRankResp_User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'gender', '3': 4, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'great_num', '3': 8, '4': 1, '5': 9, '10': 'greatNum'},
    const {'1': 'age', '3': 5, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'noble', '3': 6, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'vip', '3': 7, '4': 1, '5': 5, '10': 'vip'},
    const {'1': 'avatar_box', '3': 9, '4': 1, '5': 5, '10': 'avatarBox'},
    const {'1': 'fans', '3': 10, '4': 1, '5': 5, '10': 'fans'},
    const {'1': 'declaration', '3': 11, '4': 1, '5': 9, '10': 'declaration'},
    const {'1': 'celebrity', '3': 12, '4': 1, '5': 9, '10': 'celebrity'},
    const {'1': 'live', '3': 13, '4': 1, '5': 8, '10': 'live'},
    const {'1': 'room_id', '3': 14, '4': 1, '5': 5, '10': 'roomId'},
  ],
};

const ShopRankResp_Extension$json = const {
  '1': 'Extension',
  '2': const [
    const {'1': 'gift', '3': 1, '4': 1, '5': 5, '10': 'gift'},
    const {'1': 'gift_count', '3': 2, '4': 1, '5': 5, '10': 'giftCount'},
    const {'1': 'value', '3': 3, '4': 1, '5': 5, '10': 'value'},
    const {'1': 'value_desc', '3': 9, '4': 1, '5': 9, '10': 'valueDesc'},
    const {'1': 'time', '3': 4, '4': 1, '5': 9, '10': 'time'},
    const {'1': 'box', '3': 5, '4': 1, '5': 14, '6': '.proto_def.PRODUCT_GRADE', '10': 'box'},
    const {'1': 'box_count', '3': 6, '4': 1, '5': 5, '10': 'boxCount'},
    const {'1': 'relation', '3': 7, '4': 1, '5': 14, '6': '.proto_def.PRODUCT_GRADE', '10': 'relation'},
    const {'1': 'celebrity', '3': 8, '4': 1, '5': 9, '10': 'celebrity'},
  ],
};

const ShopRankResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.proto_def.ShopRankResp.User', '10': 'user'},
    const {'1': 'to_user', '3': 2, '4': 1, '5': 11, '6': '.proto_def.ShopRankResp.User', '10': 'toUser'},
    const {'1': 'ext', '3': 3, '4': 1, '5': 11, '6': '.proto_def.ShopRankResp.Extension', '10': 'ext'},
  ],
};

const ShopRankResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'ERROR', '2': 1},
  ],
};

const BoxTopRewardReq$json = const {
  '1': 'BoxTopRewardReq',
  '2': const [
    const {'1': 'grade', '3': 1, '4': 1, '5': 14, '6': '.proto_def.PRODUCT_GRADE', '10': 'grade'},
  ],
};

const BoxTopRewardResp$json = const {
  '1': 'BoxTopRewardResp',
  '2': const [
    const {'1': 'grade', '3': 1, '4': 1, '5': 14, '6': '.proto_def.PRODUCT_GRADE', '10': 'grade'},
    const {'1': 'rounds', '3': 2, '4': 3, '5': 11, '6': '.proto_def.BoxTopRewardResp.Round', '10': 'rounds'},
  ],
  '3': const [BoxTopRewardResp_Round$json],
};

const BoxTopRewardResp_Round$json = const {
  '1': 'Round',
  '2': const [
    const {'1': 'hour', '3': 1, '4': 1, '5': 5, '10': 'hour'},
    const {'1': 'pid', '3': 2, '4': 1, '5': 5, '10': 'pid'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'price', '3': 5, '4': 1, '5': 5, '10': 'price'},
  ],
};

const ExchangeReq$json = const {
  '1': 'ExchangeReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'attraction', '3': 3, '4': 1, '5': 5, '10': 'attraction'},
  ],
};

const ExchangeResp$json = const {
  '1': 'ExchangeResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.ExchangeResp.Status', '10': 'status'},
  ],
  '4': const [ExchangeResp_Status$json],
};

const ExchangeResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'INSUFFICIENT', '2': 2},
    const {'1': 'FAILED', '2': 3},
  ],
};

