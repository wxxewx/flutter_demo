///
//  Generated code. Do not modify.
//  source: peer_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Level$json = const {
  '1': 'Level',
  '2': const [
    const {'1': 'level', '3': 1, '4': 1, '5': 5, '10': 'level'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

const PeerUserInfo$json = const {
  '1': 'PeerUserInfo',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'nickName', '3': 2, '4': 1, '5': 9, '10': 'nickName'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'vip', '3': 4, '4': 1, '5': 11, '6': '.proto_def.Level', '10': 'vip'},
    const {'1': 'noble', '3': 5, '4': 1, '5': 11, '6': '.proto_def.Level', '10': 'noble'},
    const {'1': 'gender', '3': 6, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'hideWelcomeNotification', '3': 7, '4': 1, '5': 8, '10': 'hideWelcomeNotification'},
    const {'1': 'banbanGrade', '3': 8, '4': 1, '5': 14, '6': '.proto_def.PeerUserInfo.BanBanGrade', '10': 'banbanGrade'},
    const {'1': 'vehicleId', '3': 9, '4': 1, '5': 5, '10': 'vehicleId'},
  ],
  '4': const [PeerUserInfo_BanBanGrade$json],
};

const PeerUserInfo_BanBanGrade$json = const {
  '1': 'BanBanGrade',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'NOT_BANBAN', '2': 1},
    const {'1': 'BANBAN', '2': 2},
    const {'1': 'STAR', '2': 3},
    const {'1': 'SUPERVISOR', '2': 8},
  ],
};

const Ranks$json = const {
  '1': 'Ranks',
  '2': const [
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.proto_def.Ranks.Item', '10': 'items'},
  ],
  '3': const [Ranks_User$json, Ranks_Item$json],
  '4': const [Ranks_Scope$json],
};

const Ranks_User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'gender', '3': 4, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'age', '3': 5, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'noble', '3': 6, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'vip', '3': 7, '4': 1, '5': 5, '10': 'vip'},
  ],
};

const Ranks_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.proto_def.Ranks.User', '10': 'user'},
    const {'1': 'rank', '3': 2, '4': 1, '5': 5, '10': 'rank'},
    const {'1': 'value', '3': 3, '4': 1, '5': 5, '10': 'value'},
    const {'1': 'period_type', '3': 4, '4': 1, '5': 9, '10': 'periodType'},
    const {'1': 'rank_category', '3': 5, '4': 1, '5': 9, '10': 'rankCategory'},
    const {'1': 'scope', '3': 6, '4': 1, '5': 14, '6': '.proto_def.Ranks.Scope', '10': 'scope'},
  ],
};

const Ranks_Scope$json = const {
  '1': 'Scope',
  '2': const [
    const {'1': 'ROOM', '2': 0},
    const {'1': 'GLOBAL', '2': 1},
  ],
};

