///
//  Generated code. Do not modify.
//  source: fans_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const TaskCategory$json = const {
  '1': 'TaskCategory',
  '2': const [
    const {'1': 'CONSUME', '2': 0},
    const {'1': 'FREE_GIFT', '2': 1},
    const {'1': 'WATCH_LIVE', '2': 2},
  ],
};

const FansClub$json = const {
  '1': 'FansClub',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'fans_num', '3': 6, '4': 1, '5': 5, '10': 'fansNum'},
  ],
};

const FansClubInfoReq$json = const {
  '1': 'FansClubInfoReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'to_uid', '3': 3, '4': 1, '5': 9, '10': 'toUid'},
  ],
};

const FansClubInfoResp$json = const {
  '1': 'FansClubInfoResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.FansClubInfoResp.Status', '10': 'status'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.proto_def.FansClub', '10': 'info'},
    const {'1': 'income', '3': 3, '4': 1, '5': 5, '10': 'income'},
    const {'1': 'is_fans', '3': 4, '4': 1, '5': 8, '10': 'isFans'},
  ],
  '4': const [FansClubInfoResp_Status$json],
};

const FansClubInfoResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'PARAM_ERROR', '2': 2},
  ],
};

const FansClubInfoEditReq$json = const {
  '1': 'FansClubInfoEditReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
  ],
};

const FansClubInfoEditResp$json = const {
  '1': 'FansClubInfoEditResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.FansClubInfoEditResp.Status', '10': 'status'},
  ],
  '4': const [FansClubInfoEditResp_Status$json],
};

const FansClubInfoEditResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'OP_LIMITED', '2': 2},
    const {'1': 'CONTENT_LIMITED', '2': 3},
  ],
};

const FansClubUserLevelReq$json = const {
  '1': 'FansClubUserLevelReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'to_uid', '3': 3, '4': 1, '5': 9, '10': 'toUid'},
  ],
};

const FansClubUserLevelResp$json = const {
  '1': 'FansClubUserLevelResp',
  '2': const [
    const {'1': 'total_score', '3': 1, '4': 1, '5': 5, '10': 'totalScore'},
    const {'1': 'today_score', '3': 2, '4': 1, '5': 5, '10': 'todayScore'},
    const {'1': 'level', '3': 3, '4': 1, '5': 5, '10': 'level'},
    const {'1': 'next_level_score', '3': 4, '4': 1, '5': 5, '10': 'nextLevelScore'},
  ],
};

const FansClubListReq$json = const {
  '1': 'FansClubListReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const FansClubListResp$json = const {
  '1': 'FansClubListResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.FansClub', '10': 'items'},
  ],
};

const FansClubTaskStateReq$json = const {
  '1': 'FansClubTaskStateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const FansClubTaskStateResp$json = const {
  '1': 'FansClubTaskStateResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.FansClubTaskStateResp.Status', '10': 'status'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.proto_def.FansClubTaskStateResp.TaskState', '10': 'items'},
  ],
  '3': const [FansClubTaskStateResp_TaskState$json],
  '4': const [FansClubTaskStateResp_Status$json],
};

const FansClubTaskStateResp_TaskState$json = const {
  '1': 'TaskState',
  '2': const [
    const {'1': 'category', '3': 1, '4': 1, '5': 14, '6': '.proto_def.TaskCategory', '10': 'category'},
    const {'1': 'today_score', '3': 2, '4': 1, '5': 5, '10': 'todayScore'},
    const {'1': 'daily_limit', '3': 3, '4': 1, '5': 5, '10': 'dailyLimit'},
  ],
};

const FansClubTaskStateResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
  ],
};

const FansClubTaskAchieveReq$json = const {
  '1': 'FansClubTaskAchieveReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'to_uid', '3': 2, '4': 1, '5': 9, '10': 'toUid'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'category', '3': 4, '4': 1, '5': 14, '6': '.proto_def.TaskCategory', '10': 'category'},
    const {'1': 'value', '3': 5, '4': 1, '5': 5, '10': 'value'},
  ],
};

const FansClubTaskAchieveResp$json = const {
  '1': 'FansClubTaskAchieveResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.FansClubTaskAchieveResp.Status', '10': 'status'},
  ],
  '4': const [FansClubTaskAchieveResp_Status$json],
};

const FansClubTaskAchieveResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
  ],
};

