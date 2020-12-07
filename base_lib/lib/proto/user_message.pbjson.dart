///
//  Generated code. Do not modify.
//  source: user_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'USER_INVALID', '2': 1},
    const {'1': 'TOKEN_EXPIRE', '2': 2},
    const {'1': 'PARAMTER_ERROR', '2': 3},
    const {'1': 'PERMISSION_DENY', '2': 4},
    const {'1': 'PREREQUISITE_FAILED', '2': 5},
  ],
};

const UserInfoBrief$json = const {
  '1': 'UserInfoBrief',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'gender', '3': 10, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'age', '3': 9, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'noble', '3': 12, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'vip', '3': 11, '4': 1, '5': 5, '10': 'vip'},
    const {'1': 'fans', '3': 7, '4': 1, '5': 5, '10': 'fans'},
    const {'1': 'follows', '3': 8, '4': 1, '5': 5, '10': 'follows'},
    const {'1': 'banban_grade', '3': 13, '4': 1, '5': 5, '10': 'banbanGrade'},
    const {'1': 'location', '3': 6, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'noble_name', '3': 4, '4': 1, '5': 9, '10': 'nobleName'},
    const {'1': 'great_num', '3': 5, '4': 1, '5': 9, '10': 'greatNum'},
    const {'1': 'last_login', '3': 14, '4': 1, '5': 9, '10': 'lastLogin'},
    const {'1': 'celebrity', '3': 15, '4': 1, '5': 9, '10': 'celebrity'},
  ],
};

const NameCheckReq$json = const {
  '1': 'NameCheckReq',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const NameCheckResp$json = const {
  '1': 'NameCheckResp',
  '2': const [
    const {'1': 'can_use', '3': 1, '4': 1, '5': 8, '10': 'canUse'},
    const {'1': 'names', '3': 2, '4': 3, '5': 9, '10': 'names'},
  ],
};

const UserRegisterReq$json = const {
  '1': 'UserRegisterReq',
  '2': const [
    const {'1': 'phone', '3': 1, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gender', '3': 3, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'avatar', '3': 4, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'birth', '3': 5, '4': 1, '5': 9, '10': 'birth'},
    const {'1': 'sms_code', '3': 9, '4': 1, '5': 9, '10': 'smsCode'},
    const {'1': 'invited_code', '3': 6, '4': 1, '5': 9, '10': 'invitedCode'},
    const {'1': 'hobby_ids', '3': 7, '4': 3, '5': 5, '10': 'hobbyIds'},
    const {'1': 'skill_ids', '3': 8, '4': 3, '5': 5, '10': 'skillIds'},
    const {'1': 'device_id', '3': 10, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'open_id', '3': 11, '4': 1, '5': 9, '10': 'openId'},
    const {'1': 'country', '3': 12, '4': 1, '5': 5, '10': 'country'},
  ],
};

const UserRegisterResp$json = const {
  '1': 'UserRegisterResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.UserRegisterResp.STATUS', '10': 'status'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.proto_def.UserInfoBrief', '10': 'user'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
  '4': const [UserRegisterResp_STATUS$json],
};

const UserRegisterResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'NAME_OCUPIED', '2': 1},
    const {'1': 'PARAMETER_ERROR', '2': 2},
    const {'1': 'REPEAT_REGISTER', '2': 3},
    const {'1': 'SMS_ERROR', '2': 4},
  ],
};

const BanbanListReq$json = const {
  '1': 'BanbanListReq',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'page_number', '3': 2, '4': 1, '5': 5, '10': 'pageNumber'},
    const {'1': 'num_per_page', '3': 3, '4': 1, '5': 5, '10': 'numPerPage'},
    const {'1': 'filters', '3': 4, '4': 3, '5': 11, '6': '.proto_def.BanbanListReq.Filter', '10': 'filters'},
    const {'1': 'order_by', '3': 5, '4': 1, '5': 9, '10': 'orderBy'},
    const {'1': 'desc', '3': 6, '4': 1, '5': 8, '10': 'desc'},
  ],
  '3': const [BanbanListReq_Filter$json],
};

const BanbanListReq_Filter$json = const {
  '1': 'Filter',
  '2': const [
    const {'1': 'field', '3': 1, '4': 1, '5': 9, '10': 'field'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

const BanBanListResp$json = const {
  '1': 'BanBanListResp',
  '2': const [
    const {'1': 'banbans', '3': 1, '4': 3, '5': 11, '6': '.proto_def.BanBanListResp.VoiceCharacter', '10': 'banbans'},
  ],
  '3': const [BanBanListResp_VoiceCharacter$json],
};

const BanBanListResp_VoiceCharacter$json = const {
  '1': 'VoiceCharacter',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gender', '3': 12, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'age', '3': 13, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'great_num', '3': 24, '4': 1, '5': 9, '10': 'greatNum'},
    const {'1': 'noble', '3': 11, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'noble_name', '3': 16, '4': 1, '5': 9, '10': 'nobleName'},
    const {'1': 'vip', '3': 17, '4': 1, '5': 5, '10': 'vip'},
    const {'1': 'vip_str', '3': 18, '4': 1, '5': 9, '10': 'vipStr'},
    const {'1': 'location', '3': 10, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'declaration', '3': 5, '4': 1, '5': 9, '10': 'declaration'},
    const {'1': 'audio', '3': 14, '4': 1, '5': 9, '10': 'audio'},
    const {'1': 'audio_duration', '3': 15, '4': 1, '5': 5, '10': 'audioDuration'},
    const {'1': 'skill', '3': 4, '4': 1, '5': 9, '10': 'skill'},
    const {'1': 'skill_category', '3': 19, '4': 1, '5': 9, '10': 'skillCategory'},
    const {'1': 'fans', '3': 21, '4': 1, '5': 5, '10': 'fans'},
    const {'1': 'follows', '3': 22, '4': 1, '5': 5, '10': 'follows'},
    const {'1': 'banban_grade', '3': 23, '4': 1, '5': 5, '10': 'banbanGrade'},
    const {'1': 'celebrity', '3': 26, '4': 1, '5': 9, '10': 'celebrity'},
    const {'1': 'last_login', '3': 6, '4': 1, '5': 9, '10': 'lastLogin'},
    const {'1': 'online', '3': 7, '4': 1, '5': 8, '10': 'online'},
    const {'1': 'chating', '3': 8, '4': 1, '5': 8, '10': 'chating'},
    const {'1': 'fresh_man', '3': 9, '4': 1, '5': 8, '10': 'freshMan'},
    const {'1': 'chatroom_id', '3': 20, '4': 1, '5': 9, '10': 'chatroomId'},
    const {'1': 'room_title', '3': 25, '4': 1, '5': 9, '10': 'roomTitle'},
    const {'1': 'room_category', '3': 27, '4': 1, '5': 9, '10': 'roomCategory'},
  ],
};

const SearchReq$json = const {
  '1': 'SearchReq',
  '2': const [
    const {'1': 'keyword', '3': 1, '4': 1, '5': 9, '10': 'keyword'},
    const {'1': 'page_number', '3': 2, '4': 1, '5': 5, '10': 'pageNumber'},
    const {'1': 'num_per_page', '3': 3, '4': 1, '5': 5, '10': 'numPerPage'},
  ],
};

const SearchResp$json = const {
  '1': 'SearchResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'skills', '3': 2, '4': 3, '5': 11, '6': '.proto_def.SearchResp.SkillInfoBrief', '10': 'skills'},
    const {'1': 'users', '3': 3, '4': 3, '5': 11, '6': '.proto_def.UserInfoBrief', '10': 'users'},
  ],
  '3': const [SearchResp_SkillInfoBrief$json],
};

const SearchResp_SkillInfoBrief$json = const {
  '1': 'SkillInfoBrief',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon_url', '3': 2, '4': 1, '5': 9, '10': 'iconUrl'},
    const {'1': 'category', '3': 3, '4': 1, '5': 9, '10': 'category'},
  ],
};

const UserOverviewReq$json = const {
  '1': 'UserOverviewReq',
  '2': const [
    const {'1': 'dst_uid', '3': 1, '4': 1, '5': 9, '10': 'dstUid'},
    const {'1': 'src_uid', '3': 2, '4': 1, '5': 9, '10': 'srcUid'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

const UserOverviewResp$json = const {
  '1': 'UserOverviewResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.UserOverviewResp.STATUS', '10': 'status'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.proto_def.UserInfoBrief', '10': 'user'},
    const {'1': 'followed', '3': 3, '4': 1, '5': 8, '10': 'followed'},
  ],
  '4': const [UserOverviewResp_STATUS$json],
};

const UserOverviewResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'USER_NOT_EXIST', '2': 1},
  ],
};

const LoginReq$json = const {
  '1': 'LoginReq',
  '2': const [
    const {'1': 'phone', '3': 1, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'sms_code', '3': 2, '4': 1, '5': 9, '10': 'smsCode'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'open_id', '3': 4, '4': 1, '5': 9, '10': 'openId'},
    const {'1': 'country', '3': 5, '4': 1, '5': 5, '10': 'country'},
    const {'1': 'device_id', '3': 6, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

const LoginResp$json = const {
  '1': 'LoginResp',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.proto_def.LoginResp.STATUS', '10': 'code'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'nick_name', '3': 4, '4': 1, '5': 9, '10': 'nickName'},
    const {'1': 'avatar', '3': 5, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'token', '3': 6, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'user', '3': 7, '4': 1, '5': 11, '6': '.proto_def.UserInfoBrief', '10': 'user'},
  ],
  '4': const [LoginResp_STATUS$json],
};

const LoginResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'SMS_TIMEOUT', '2': 1},
    const {'1': 'SMS_ERROR', '2': 2},
    const {'1': 'USER_INVALID', '2': 3},
    const {'1': 'BIND_OPENID_FAILED', '2': 4},
  ],
};

const HomePageReq$json = const {
  '1': 'HomePageReq',
  '2': const [
    const {'1': 'tgt_uid', '3': 1, '4': 1, '5': 9, '10': 'tgtUid'},
    const {'1': 'src_uid', '3': 2, '4': 1, '5': 9, '10': 'srcUid'},
  ],
};

const HomePageResp$json = const {
  '1': 'HomePageResp',
  '2': const [
    const {'1': 'personal', '3': 1, '4': 1, '5': 11, '6': '.proto_def.HomePageResp.Personal', '10': 'personal'},
    const {'1': 'total_gift', '3': 4, '4': 1, '5': 5, '10': 'totalGift'},
    const {'1': 'hobby', '3': 12, '4': 3, '5': 5, '10': 'hobby'},
    const {'1': 'gifts', '3': 5, '4': 3, '5': 11, '6': '.proto_def.HomePageResp.Gift', '10': 'gifts'},
    const {'1': 'skills', '3': 6, '4': 3, '5': 11, '6': '.proto_def.HomePageResp.Skill', '10': 'skills'},
    const {'1': 'interests', '3': 8, '4': 3, '5': 11, '6': '.proto_def.HomePageResp.Interest', '10': 'interests'},
    const {'1': 'total_cp_num', '3': 10, '4': 1, '5': 5, '10': 'totalCpNum'},
    const {'1': 'followed', '3': 11, '4': 1, '5': 8, '10': 'followed'},
    const {'1': 'show_ids', '3': 13, '4': 3, '5': 5, '10': 'showIds'},
  ],
  '3': const [HomePageResp_Personal$json, HomePageResp_Gift$json, HomePageResp_Interest$json, HomePageResp_Skill$json],
};

const HomePageResp_Personal$json = const {
  '1': 'Personal',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 11, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'gender', '3': 3, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'age', '3': 4, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'noble', '3': 15, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'vip', '3': 19, '4': 1, '5': 5, '10': 'vip'},
    const {'1': 'great_num', '3': 23, '4': 1, '5': 9, '10': 'greatNum'},
    const {'1': 'birth', '3': 16, '4': 1, '5': 9, '10': 'birth'},
    const {'1': 'star', '3': 5, '4': 1, '5': 9, '10': 'star'},
    const {'1': 'career', '3': 6, '4': 1, '5': 9, '10': 'career'},
    const {'1': 'declaration', '3': 7, '4': 1, '5': 9, '10': 'declaration'},
    const {'1': 'last_login', '3': 8, '4': 1, '5': 9, '10': 'lastLogin'},
    const {'1': 'audio', '3': 13, '4': 1, '5': 9, '10': 'audio'},
    const {'1': 'audio_duration', '3': 14, '4': 1, '5': 5, '10': 'audioDuration'},
    const {'1': 'img_urls', '3': 10, '4': 3, '5': 9, '10': 'imgUrls'},
    const {'1': 'fans', '3': 9, '4': 1, '5': 5, '10': 'fans'},
    const {'1': 'yesterday_fans', '3': 24, '4': 1, '5': 5, '10': 'yesterdayFans'},
    const {'1': 'follows', '3': 20, '4': 1, '5': 5, '10': 'follows'},
    const {'1': 'location', '3': 17, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'banban_grade', '3': 22, '4': 1, '5': 5, '10': 'banbanGrade'},
    const {'1': 'online', '3': 18, '4': 1, '5': 9, '10': 'online'},
    const {'1': 'room_id', '3': 21, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'room_title', '3': 25, '4': 1, '5': 9, '10': 'roomTitle'},
    const {'1': 'celebrity', '3': 26, '4': 1, '5': 9, '10': 'celebrity'},
  ],
};

const HomePageResp_Gift$json = const {
  '1': 'Gift',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 5, '10': 'amount'},
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'badge', '3': 5, '4': 1, '5': 9, '10': 'badge'},
  ],
};

const HomePageResp_Interest$json = const {
  '1': 'Interest',
  '2': const [
    const {'1': 'skill_id', '3': 1, '4': 1, '5': 9, '10': 'skillId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

const HomePageResp_Skill$json = const {
  '1': 'Skill',
  '2': const [
    const {'1': 'skill_id', '3': 1, '4': 1, '5': 5, '10': 'skillId'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'priority', '3': 3, '4': 1, '5': 5, '10': 'priority'},
    const {'1': 'grade', '3': 4, '4': 1, '5': 9, '10': 'grade'},
    const {'1': 'img_url', '3': 5, '4': 1, '5': 9, '10': 'imgUrl'},
    const {'1': 'audio_url', '3': 6, '4': 1, '5': 9, '10': 'audioUrl'},
    const {'1': 'skill_icon', '3': 7, '4': 1, '5': 9, '10': 'skillIcon'},
    const {'1': 'skill_title', '3': 8, '4': 1, '5': 9, '10': 'skillTitle'},
  ],
};

const UserSkillsReq$json = const {
  '1': 'UserSkillsReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const UserSkillsResp$json = const {
  '1': 'UserSkillsResp',
  '2': const [
    const {'1': 'skills', '3': 1, '4': 3, '5': 11, '6': '.proto_def.HomePageResp.Skill', '10': 'skills'},
  ],
};

const LocationUpdateReq$json = const {
  '1': 'LocationUpdateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'location', '3': 3, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'hide_location', '3': 4, '4': 1, '5': 8, '10': 'hideLocation'},
  ],
};

const LocationUpdateResp$json = const {
  '1': 'LocationUpdateResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
  ],
};

const UserInfoUpdateReq$json = const {
  '1': 'UserInfoUpdateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gender', '3': 5, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'birth', '3': 6, '4': 1, '5': 9, '10': 'birth'},
    const {'1': 'career_id', '3': 7, '4': 1, '5': 5, '10': 'careerId'},
  ],
};

const UserInfoUpdateResp$json = const {
  '1': 'UserInfoUpdateResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
  ],
};

const UserExtInfoUpdateReq$json = const {
  '1': 'UserExtInfoUpdateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 11, '6': '.proto_def.UserExtInfoUpdateReq.Media', '10': 'avatar'},
    const {'1': 'declaration', '3': 4, '4': 1, '5': 11, '6': '.proto_def.UserExtInfoUpdateReq.Media', '10': 'declaration'},
    const {'1': 'gallery', '3': 5, '4': 1, '5': 11, '6': '.proto_def.UserExtInfoUpdateReq.Gallery', '10': 'gallery'},
    const {'1': 'audio', '3': 6, '4': 1, '5': 11, '6': '.proto_def.UserExtInfoUpdateReq.Media', '10': 'audio'},
    const {'1': 'video', '3': 7, '4': 1, '5': 11, '6': '.proto_def.UserExtInfoUpdateReq.Media', '10': 'video'},
  ],
  '3': const [UserExtInfoUpdateReq_Media$json, UserExtInfoUpdateReq_Gallery$json],
  '4': const [UserExtInfoUpdateReq_Cmd$json],
};

const UserExtInfoUpdateReq_Media$json = const {
  '1': 'Media',
  '2': const [
    const {'1': 'cmd', '3': 1, '4': 1, '5': 14, '6': '.proto_def.UserExtInfoUpdateReq.Cmd', '10': 'cmd'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'duration', '3': 3, '4': 1, '5': 5, '10': 'duration'},
  ],
};

const UserExtInfoUpdateReq_Gallery$json = const {
  '1': 'Gallery',
  '2': const [
    const {'1': 'cmd', '3': 1, '4': 1, '5': 14, '6': '.proto_def.UserExtInfoUpdateReq.Cmd', '10': 'cmd'},
    const {'1': 'gallery', '3': 2, '4': 3, '5': 9, '10': 'gallery'},
  ],
};

const UserExtInfoUpdateReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'UPDATE', '2': 1},
    const {'1': 'CLEAR', '2': 2},
  ],
};

const UserExtInfoUpdateResp$json = const {
  '1': 'UserExtInfoUpdateResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
  ],
};

const UserInterestsUpdateReq$json = const {
  '1': 'UserInterestsUpdateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'method', '3': 3, '4': 1, '5': 14, '6': '.proto_def.UserInterestsUpdateReq.METHOD', '10': 'method'},
    const {'1': 'skill_id', '3': 4, '4': 1, '5': 5, '10': 'skillId'},
  ],
  '4': const [UserInterestsUpdateReq_METHOD$json],
};

const UserInterestsUpdateReq_METHOD$json = const {
  '1': 'METHOD',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'ADD', '2': 1},
    const {'1': 'REMOVE', '2': 2},
  ],
};

const UserInterestsUpdateResp$json = const {
  '1': 'UserInterestsUpdateResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
  ],
};

const UserHobbyUpdateReq$json = const {
  '1': 'UserHobbyUpdateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'method', '3': 3, '4': 1, '5': 14, '6': '.proto_def.UserHobbyUpdateReq.METHOD', '10': 'method'},
    const {'1': 'hobby_id', '3': 4, '4': 1, '5': 5, '10': 'hobbyId'},
  ],
  '4': const [UserHobbyUpdateReq_METHOD$json],
};

const UserHobbyUpdateReq_METHOD$json = const {
  '1': 'METHOD',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'ADD', '2': 1},
    const {'1': 'REMOVE', '2': 2},
  ],
};

const UserHobbyUpdateResp$json = const {
  '1': 'UserHobbyUpdateResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
  ],
};

const TokenOssResp$json = const {
  '1': 'TokenOssResp',
  '2': const [
    const {'1': 'access_key_id', '3': 1, '4': 1, '5': 9, '10': 'accessKeyId'},
    const {'1': 'access_key_secret', '3': 2, '4': 1, '5': 9, '10': 'accessKeySecret'},
    const {'1': 'security_token', '3': 3, '4': 1, '5': 9, '10': 'securityToken'},
    const {'1': 'expiration', '3': 4, '4': 1, '5': 5, '10': 'expiration'},
  ],
};

const TokenAgoraReq$json = const {
  '1': 'TokenAgoraReq',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 9, '10': 'channel'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
  ],
};

const TokenAgoraResp$json = const {
  '1': 'TokenAgoraResp',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const FollowReq$json = const {
  '1': 'FollowReq',
  '2': const [
    const {'1': 'src_uid', '3': 1, '4': 1, '5': 9, '10': 'srcUid'},
    const {'1': 'tgt_uid', '3': 2, '4': 1, '5': 9, '10': 'tgtUid'},
    const {'1': 'cmd', '3': 5, '4': 1, '5': 14, '6': '.proto_def.FollowReq.Cmd', '10': 'cmd'},
    const {'1': 'flag', '3': 3, '4': 1, '5': 8, '10': 'flag'},
    const {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
  ],
  '4': const [FollowReq_Cmd$json],
};

const FollowReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'FOLLOW', '2': 0},
    const {'1': 'BLOCK', '2': 1},
  ],
};

const FollowResp$json = const {
  '1': 'FollowResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
  ],
};

const SmsCodeReq$json = const {
  '1': 'SmsCodeReq',
  '2': const [
    const {'1': 'phone', '3': 1, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'country', '3': 2, '4': 1, '5': 5, '10': 'country'},
  ],
};

const SmsCodeResp$json = const {
  '1': 'SmsCodeResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SmsCodeResp.STATUS', '10': 'status'},
    const {'1': 'registered', '3': 2, '4': 1, '5': 8, '10': 'registered'},
    const {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
  '4': const [SmsCodeResp_STATUS$json],
};

const SmsCodeResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'OVER_LIMIT', '2': 1},
    const {'1': 'PHONE_INVALID', '2': 2},
    const {'1': 'USER_BANNED', '2': 3},
  ],
};

const SmsCodeVerifyReq$json = const {
  '1': 'SmsCodeVerifyReq',
  '2': const [
    const {'1': 'phone', '3': 1, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'country', '3': 3, '4': 1, '5': 5, '10': 'country'},
  ],
};

const SmsCodeVerifyResp$json = const {
  '1': 'SmsCodeVerifyResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SmsCodeVerifyResp.STATUS', '10': 'status'},
  ],
  '4': const [SmsCodeVerifyResp_STATUS$json],
};

const SmsCodeVerifyResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'CODE_INVALID', '2': 1},
  ],
};

const UserCpRelationsReq$json = const {
  '1': 'UserCpRelationsReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

const UserCpRelationsResp$json = const {
  '1': 'UserCpRelationsResp',
  '2': const [
    const {'1': 'relations', '3': 1, '4': 3, '5': 11, '6': '.proto_def.UserCpRelationsResp.CpRelation', '10': 'relations'},
  ],
  '3': const [UserCpRelationsResp_CpRelation$json],
  '4': const [UserCpRelationsResp_Couple_Type$json],
};

const UserCpRelationsResp_CpRelation$json = const {
  '1': 'CpRelation',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.proto_def.UserInfoBrief', '10': 'user'},
    const {'1': 'days_left', '3': 2, '4': 1, '5': 5, '10': 'daysLeft'},
    const {'1': 'expire', '3': 5, '4': 1, '5': 9, '10': 'expire'},
    const {'1': 'cp_type', '3': 3, '4': 1, '5': 14, '6': '.proto_def.UserCpRelationsResp.Couple_Type', '10': 'cpType'},
    const {'1': 'cp_title', '3': 4, '4': 1, '5': 9, '10': 'cpTitle'},
  ],
};

const UserCpRelationsResp_Couple_Type$json = const {
  '1': 'Couple_Type',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'BRONZE', '2': 1},
    const {'1': 'SILVER', '2': 2},
    const {'1': 'GOLDEN', '2': 3},
  ],
};

const UserGuardiansReq$json = const {
  '1': 'UserGuardiansReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 3, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'category', '3': 4, '4': 1, '5': 14, '6': '.proto_def.UserGuardiansReq.Category', '10': 'category'},
    const {'1': 'to_user_id', '3': 5, '4': 1, '5': 9, '10': 'toUserId'},
  ],
  '4': const [UserGuardiansReq_Category$json],
};

const UserGuardiansReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'ALL', '2': 0},
    const {'1': 'BRONZE', '2': 1},
    const {'1': 'SILVER', '2': 2},
    const {'1': 'GOLDEN', '2': 3},
  ],
};

const UserGuardiansResp$json = const {
  '1': 'UserGuardiansResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'guardians', '3': 2, '4': 3, '5': 11, '6': '.proto_def.UserGuardiansResp.Guardian', '10': 'guardians'},
  ],
  '3': const [UserGuardiansResp_Guardian$json],
};

const UserGuardiansResp_Guardian$json = const {
  '1': 'Guardian',
  '2': const [
    const {'1': 'category', '3': 1, '4': 1, '5': 14, '6': '.proto_def.UserGuardiansReq.Category', '10': 'category'},
    const {'1': 'room_id', '3': 2, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'to_user_id', '3': 3, '4': 1, '5': 9, '10': 'toUserId'},
    const {'1': 'expires_at', '3': 4, '4': 1, '5': 9, '10': 'expiresAt'},
  ],
};

const UserFriendsReq$json = const {
  '1': 'UserFriendsReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.proto_def.UserFriendsReq.Category', '10': 'category'},
    const {'1': 'page_num', '3': 4, '4': 1, '5': 5, '10': 'pageNum'},
  ],
  '4': const [UserFriendsReq_Category$json],
};

const UserFriendsReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'MY_FANS', '2': 0},
    const {'1': 'MY_LIKES', '2': 1},
  ],
};

const UserFriendsResp$json = const {
  '1': 'UserFriendsResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.proto_def.UserFriendsResp.Relation', '10': 'items'},
  ],
  '3': const [UserFriendsResp_Relation$json],
};

const UserFriendsResp_Relation$json = const {
  '1': 'Relation',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.proto_def.UserInfoBrief', '10': 'user'},
    const {'1': 'time', '3': 2, '4': 1, '5': 5, '10': 'time'},
  ],
};

const IsFollowedReq$json = const {
  '1': 'IsFollowedReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'tgt_uid', '3': 3, '4': 1, '5': 9, '10': 'tgtUid'},
    const {'1': 'reversed', '3': 4, '4': 1, '5': 8, '10': 'reversed'},
  ],
};

const IsFollowedResp$json = const {
  '1': 'IsFollowedResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'flag', '3': 2, '4': 1, '5': 8, '10': 'flag'},
  ],
};

const BagReq$json = const {
  '1': 'BagReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const BagResp$json = const {
  '1': 'BagResp',
  '2': const [
    const {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.proto_def.BagResp.Product', '10': 'products'},
    const {'1': 'coupons', '3': 2, '4': 3, '5': 11, '6': '.proto_def.BagResp.Coupon', '10': 'coupons'},
  ],
  '3': const [BagResp_Product$json, BagResp_Coupon$json],
  '4': const [BagResp_CATEGORY$json, BagResp_PRODUCT_GRADE$json, BagResp_STATE$json],
};

const BagResp_Product$json = const {
  '1': 'Product',
  '2': const [
    const {'1': 'pid', '3': 1, '4': 1, '5': 5, '10': 'pid'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'category', '3': 4, '4': 1, '5': 14, '6': '.proto_def.BagResp.CATEGORY', '10': 'category'},
    const {'1': 'grade', '3': 5, '4': 1, '5': 14, '6': '.proto_def.BagResp.PRODUCT_GRADE', '10': 'grade'},
    const {'1': 'count', '3': 6, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'permant', '3': 7, '4': 1, '5': 8, '10': 'permant'},
    const {'1': 'expire', '3': 8, '4': 1, '5': 9, '10': 'expire'},
    const {'1': 'state', '3': 9, '4': 1, '5': 14, '6': '.proto_def.BagResp.STATE', '10': 'state'},
    const {'1': 'badge', '3': 10, '4': 1, '5': 9, '10': 'badge'},
  ],
};

const BagResp_Coupon$json = const {
  '1': 'Coupon',
  '2': const [
    const {'1': 'cid', '3': 1, '4': 1, '5': 5, '10': 'cid'},
    const {'1': 'pid', '3': 2, '4': 1, '5': 5, '10': 'pid'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'permant', '3': 5, '4': 1, '5': 8, '10': 'permant'},
    const {'1': 'count', '3': 6, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'value', '3': 7, '4': 1, '5': 5, '10': 'value'},
  ],
};

const BagResp_CATEGORY$json = const {
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

const BagResp_PRODUCT_GRADE$json = const {
  '1': 'PRODUCT_GRADE',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'BROZEN', '2': 1},
    const {'1': 'SILVER', '2': 2},
    const {'1': 'GOLDEN', '2': 3},
  ],
};

const BagResp_STATE$json = const {
  '1': 'STATE',
  '2': const [
    const {'1': 'UNUSED', '2': 0},
    const {'1': 'TRANSFERED', '2': 1},
    const {'1': 'USED', '2': 2},
  ],
};

const AccountBalanceReq$json = const {
  '1': 'AccountBalanceReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const AccountBalanceResp$json = const {
  '1': 'AccountBalanceResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'diamond', '3': 2, '4': 1, '5': 5, '10': 'diamond'},
    const {'1': 'attraction', '3': 3, '4': 1, '5': 5, '10': 'attraction'},
  ],
};

const IdentityInfo$json = const {
  '1': 'IdentityInfo',
  '2': const [
    const {'1': 'id_name', '3': 1, '4': 1, '5': 9, '10': 'idName'},
    const {'1': 'id_number', '3': 2, '4': 1, '5': 9, '10': 'idNumber'},
    const {'1': 'id_front_img', '3': 3, '4': 1, '5': 9, '10': 'idFrontImg'},
    const {'1': 'id_back_img', '3': 4, '4': 1, '5': 9, '10': 'idBackImg'},
    const {'1': 'phone', '3': 5, '4': 1, '5': 9, '10': 'phone'},
  ],
};

const RealNameVerifyReq$json = const {
  '1': 'RealNameVerifyReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'cmd', '3': 3, '4': 1, '5': 14, '6': '.proto_def.RealNameVerifyReq.Cmd', '10': 'cmd'},
    const {'1': 'info', '3': 4, '4': 1, '5': 11, '6': '.proto_def.IdentityInfo', '10': 'info'},
  ],
  '4': const [RealNameVerifyReq_Cmd$json],
};

const RealNameVerifyReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'QUERY', '2': 0},
    const {'1': 'UPDATE', '2': 1},
  ],
};

const RealNameVerifyResp$json = const {
  '1': 'RealNameVerifyResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.proto_def.RealNameVerifyResp.State', '10': 'state'},
    const {'1': 'info', '3': 3, '4': 1, '5': 11, '6': '.proto_def.IdentityInfo', '10': 'info'},
    const {'1': 'comment', '3': 4, '4': 1, '5': 9, '10': 'comment'},
  ],
  '4': const [RealNameVerifyResp_State$json],
};

const RealNameVerifyResp_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'NOT_VERIFY', '2': 0},
    const {'1': 'REVIEWING', '2': 1},
    const {'1': 'PASS', '2': 2},
    const {'1': 'FAILED', '2': 3},
  ],
};

const Celebrity$json = const {
  '1': 'Celebrity',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
  ],
};

const CelebrityVerifyReq$json = const {
  '1': 'CelebrityVerifyReq',
  '2': const [
    const {'1': 'cmd', '3': 1, '4': 1, '5': 14, '6': '.proto_def.CelebrityVerifyReq.Cmd', '10': 'cmd'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'info', '3': 4, '4': 1, '5': 11, '6': '.proto_def.Celebrity', '10': 'info'},
  ],
  '4': const [CelebrityVerifyReq_Cmd$json],
};

const CelebrityVerifyReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'QUERY', '2': 0},
    const {'1': 'UPDATE', '2': 1},
  ],
};

const CelebrityVerifyResp$json = const {
  '1': 'CelebrityVerifyResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.proto_def.CelebrityVerifyResp.State', '10': 'state'},
    const {'1': 'info', '3': 3, '4': 1, '5': 11, '6': '.proto_def.Celebrity', '10': 'info'},
  ],
  '4': const [CelebrityVerifyResp_State$json],
};

const CelebrityVerifyResp_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'NOT_VERIFY', '2': 0},
    const {'1': 'PENDING', '2': 1},
    const {'1': 'PASS', '2': 2},
    const {'1': 'FAILED', '2': 3},
  ],
};

const UserNobleStateReq$json = const {
  '1': 'UserNobleStateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const UserNobleStateResp$json = const {
  '1': 'UserNobleStateResp',
  '2': const [
    const {'1': 'noble', '3': 1, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'noble_name', '3': 2, '4': 1, '5': 9, '10': 'nobleName'},
    const {'1': 'expires', '3': 3, '4': 1, '5': 9, '10': 'expires'},
  ],
};

const UserVipStateReq$json = const {
  '1': 'UserVipStateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const UserVipStateResp$json = const {
  '1': 'UserVipStateResp',
  '2': const [
    const {'1': 'vip', '3': 1, '4': 1, '5': 5, '10': 'vip'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
};

const DailyCheckInReq$json = const {
  '1': 'DailyCheckInReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.proto_def.DailyCheckInReq.Category', '10': 'category'},
  ],
  '4': const [DailyCheckInReq_Category$json],
};

const DailyCheckInReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'BOX', '2': 1},
    const {'1': 'COIN', '2': 2},
    const {'1': 'ROULETTE', '2': 3},
  ],
};

const DailyCheckInResp$json = const {
  '1': 'DailyCheckInResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'category', '3': 2, '4': 1, '5': 14, '6': '.proto_def.DailyCheckInReq.Category', '10': 'category'},
    const {'1': 'count', '3': 3, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'grade', '3': 4, '4': 1, '5': 14, '6': '.proto_def.DailyCheckInResp.Grade', '10': 'grade'},
  ],
  '4': const [DailyCheckInResp_Grade$json],
};

const DailyCheckInResp_Grade$json = const {
  '1': 'Grade',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'BROZEN', '2': 1},
    const {'1': 'SILVER', '2': 2},
    const {'1': 'GOLDEN', '2': 3},
  ],
};

const WearProductReq$json = const {
  '1': 'WearProductReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'cmd', '3': 3, '4': 1, '5': 14, '6': '.proto_def.WearProductReq.Cmd', '10': 'cmd'},
    const {'1': 'category', '3': 4, '4': 1, '5': 5, '10': 'category'},
    const {'1': 'use_new', '3': 5, '4': 1, '5': 8, '10': 'useNew'},
    const {'1': 'product_id', '3': 6, '4': 1, '5': 5, '10': 'productId'},
  ],
  '4': const [WearProductReq_Cmd$json],
};

const WearProductReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'OFF', '2': 0},
    const {'1': 'ON', '2': 1},
  ],
};

const WearProductResp$json = const {
  '1': 'WearProductResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
  ],
};

const UserDecoratorReq$json = const {
  '1': 'UserDecoratorReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const UserDecoratorResp$json = const {
  '1': 'UserDecoratorResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.proto_def.UserDecoratorResp.Item', '10': 'items'},
  ],
  '3': const [UserDecoratorResp_Item$json],
  '4': const [UserDecoratorResp_State$json],
};

const UserDecoratorResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'category', '3': 1, '4': 1, '5': 5, '10': 'category'},
    const {'1': 'expires', '3': 2, '4': 1, '5': 9, '10': 'expires'},
    const {'1': 'state', '3': 3, '4': 1, '5': 14, '6': '.proto_def.UserDecoratorResp.State', '10': 'state'},
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
  ],
};

const UserDecoratorResp_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'OFF', '2': 0},
    const {'1': 'ON', '2': 1},
  ],
};

const IspPhoneAuthReq$json = const {
  '1': 'IspPhoneAuthReq',
  '2': const [
    const {'1': 'isp_token', '3': 1, '4': 1, '5': 9, '10': 'ispToken'},
    const {'1': 'isp_access_token', '3': 2, '4': 1, '5': 9, '10': 'ispAccessToken'},
  ],
};

const IspPhoneAuthResp$json = const {
  '1': 'IspPhoneAuthResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.IspPhoneAuthResp.Status', '10': 'status'},
    const {'1': 'registered', '3': 2, '4': 1, '5': 8, '10': 'registered'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'sms_code', '3': 4, '4': 1, '5': 9, '10': 'smsCode'},
    const {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
  '4': const [IspPhoneAuthResp_Status$json],
};

const IspPhoneAuthResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'USER_BANNED', '2': 1},
    const {'1': 'QUERY_PHONE_FAILURE', '2': 2},
  ],
};

const WxUserAuthReq$json = const {
  '1': 'WxUserAuthReq',
  '2': const [
    const {'1': 'open_id', '3': 1, '4': 1, '5': 9, '10': 'openId'},
    const {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

const WxUserAuthResp$json = const {
  '1': 'WxUserAuthResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.WxUserAuthResp.Status', '10': 'status'},
    const {'1': 'registered', '3': 2, '4': 1, '5': 8, '10': 'registered'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'sms_code', '3': 4, '4': 1, '5': 9, '10': 'smsCode'},
    const {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
  '4': const [WxUserAuthResp_Status$json],
};

const WxUserAuthResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'USER_BANNED', '2': 1},
    const {'1': 'ACCESS_TOKEN_INVALID', '2': 2},
  ],
};

const UserUnRegisterReq$json = const {
  '1': 'UserUnRegisterReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const UserUnRegisterResp$json = const {
  '1': 'UserUnRegisterResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
  ],
};

const MyInviterReq$json = const {
  '1': 'MyInviterReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const MyInviterResp$json = const {
  '1': 'MyInviterResp',
  '2': const [
    const {'1': 'invite_code', '3': 1, '4': 1, '5': 9, '10': 'inviteCode'},
    const {'1': 'inviter_name', '3': 2, '4': 1, '5': 9, '10': 'inviterName'},
    const {'1': 'flag', '3': 3, '4': 1, '5': 8, '10': 'flag'},
  ],
};

const UpdateMyInviterReq$json = const {
  '1': 'UpdateMyInviterReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'invite_code', '3': 3, '4': 1, '5': 9, '10': 'inviteCode'},
  ],
};

const UpdateMyInviterResp$json = const {
  '1': 'UpdateMyInviterResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.STATUS', '10': 'status'},
  ],
};

const MyInviteeReq$json = const {
  '1': 'MyInviteeReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'page_num', '3': 3, '4': 1, '5': 5, '10': 'pageNum'},
  ],
};

const MyInviteeResp$json = const {
  '1': 'MyInviteeResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.MyInviteeResp.InviteRecord', '10': 'items'},
  ],
  '3': const [MyInviteeResp_InviteRecord$json],
};

const MyInviteeResp_InviteRecord$json = const {
  '1': 'InviteRecord',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.proto_def.UserInfoBrief', '10': 'user'},
    const {'1': 'time', '3': 2, '4': 1, '5': 5, '10': 'time'},
  ],
};

const SettlementDailyReq$json = const {
  '1': 'SettlementDailyReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'page_num', '3': 3, '4': 1, '5': 5, '10': 'pageNum'},
  ],
};

const SettlementDailyResp$json = const {
  '1': 'SettlementDailyResp',
  '2': const [
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.proto_def.SettlementDailyResp.SettlementRecord', '10': 'items'},
  ],
  '3': const [SettlementDailyResp_SettlementRecord$json],
};

const SettlementDailyResp_SettlementRecord$json = const {
  '1': 'SettlementRecord',
  '2': const [
    const {'1': 'time', '3': 1, '4': 1, '5': 5, '10': 'time'},
    const {'1': 'origin', '3': 2, '4': 1, '5': 9, '10': 'origin'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 5, '10': 'amount'},
  ],
};

const InviteIncomeReq$json = const {
  '1': 'InviteIncomeReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const InviteIncomeResp$json = const {
  '1': 'InviteIncomeResp',
  '2': const [
    const {'1': 'settled_income', '3': 1, '4': 1, '5': 5, '10': 'settledIncome'},
    const {'1': 'unsettle_income', '3': 2, '4': 1, '5': 5, '10': 'unsettleIncome'},
  ],
};

