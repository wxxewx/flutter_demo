///
//  Generated code. Do not modify.
//  source: sys_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const SkillListReq$json = const {
  '1': 'SkillListReq',
  '2': const [
    const {'1': 'skill_id', '3': 1, '4': 1, '5': 9, '10': 'skillId'},
  ],
};

const SkillListResp$json = const {
  '1': 'SkillListResp',
  '2': const [
    const {'1': 'skills', '3': 1, '4': 3, '5': 11, '6': '.proto_def.SkillListResp.Skill', '10': 'skills'},
  ],
  '3': const [SkillListResp_SkillGrade$json, SkillListResp_Skill$json],
  '4': const [SkillListResp_Category$json],
};

const SkillListResp_SkillGrade$json = const {
  '1': 'SkillGrade',
  '2': const [
    const {'1': 'skill_id', '3': 1, '4': 1, '5': 9, '10': 'skillId'},
    const {'1': 'grade_id', '3': 2, '4': 1, '5': 9, '10': 'gradeId'},
    const {'1': 'grade_title', '3': 3, '4': 1, '5': 9, '10': 'gradeTitle'},
  ],
};

const SkillListResp_Skill$json = const {
  '1': 'Skill',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon_url', '3': 3, '4': 1, '5': 9, '10': 'iconUrl'},
    const {'1': 'category', '3': 4, '4': 1, '5': 14, '6': '.proto_def.SkillListResp.Category', '10': 'category'},
    const {'1': 'grades', '3': 5, '4': 3, '5': 11, '6': '.proto_def.SkillListResp.SkillGrade', '10': 'grades'},
  ],
};

const SkillListResp_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'VOICE', '2': 0},
    const {'1': 'GAME', '2': 1},
  ],
};

const HobbyListResp$json = const {
  '1': 'HobbyListResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.HobbyListResp.Item', '10': 'items'},
  ],
  '3': const [HobbyListResp_Item$json],
};

const HobbyListResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'hobby_id', '3': 1, '4': 1, '5': 5, '10': 'hobbyId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'category', '3': 3, '4': 1, '5': 9, '10': 'category'},
  ],
};

const CareerListResp$json = const {
  '1': 'CareerListResp',
  '2': const [
    const {'1': 'careers', '3': 1, '4': 3, '5': 11, '6': '.proto_def.CareerListResp.Career', '10': 'careers'},
  ],
  '3': const [CareerListResp_Career$json],
};

const CareerListResp_Career$json = const {
  '1': 'Career',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'category', '3': 3, '4': 1, '5': 9, '10': 'category'},
  ],
};

const MusicSearchReq$json = const {
  '1': 'MusicSearchReq',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
  ],
};

const MusicSearchResp$json = const {
  '1': 'MusicSearchResp',
  '2': const [
    const {'1': 'musics', '3': 1, '4': 3, '5': 11, '6': '.proto_def.MusicSearchResp.Music', '10': 'musics'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.proto_def.MusicSearchResp.STATUS', '10': 'status'},
  ],
  '3': const [MusicSearchResp_Music$json],
  '4': const [MusicSearchResp_STATUS$json],
};

const MusicSearchResp_Music$json = const {
  '1': 'Music',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'author', '3': 2, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'song_id', '3': 4, '4': 1, '5': 9, '10': 'songId'},
    const {'1': 'album_id', '3': 5, '4': 1, '5': 9, '10': 'albumId'},
  ],
};

const MusicSearchResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'SEARCH_UNAVAIABLE', '2': 1},
  ],
};

const MusicPlayUrlReq$json = const {
  '1': 'MusicPlayUrlReq',
  '2': const [
    const {'1': 'song_id', '3': 1, '4': 1, '5': 9, '10': 'songId'},
    const {'1': 'album_id', '3': 2, '4': 1, '5': 9, '10': 'albumId'},
  ],
};

const MusicPlayUrlResp$json = const {
  '1': 'MusicPlayUrlResp',
  '2': const [
    const {'1': 'play_url', '3': 1, '4': 1, '5': 9, '10': 'playUrl'},
  ],
};

const RoomCategoryListReq$json = const {
  '1': 'RoomCategoryListReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const RoomCategoryListResp$json = const {
  '1': 'RoomCategoryListResp',
  '2': const [
    const {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.proto_def.RoomCategoryListResp.Category', '10': 'categories'},
  ],
  '3': const [RoomCategoryListResp_TopicPortal$json, RoomCategoryListResp_Category$json],
};

const RoomCategoryListResp_TopicPortal$json = const {
  '1': 'TopicPortal',
  '2': const [
    const {'1': 'icon', '3': 1, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'portal', '3': 3, '4': 1, '5': 9, '10': 'portal'},
    const {'1': 'controlled', '3': 4, '4': 1, '5': 8, '10': 'controlled'},
  ],
};

const RoomCategoryListResp_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'cate_id', '3': 1, '4': 1, '5': 5, '10': 'cateId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'seat_count', '3': 3, '4': 1, '5': 5, '10': 'seatCount'},
    const {'1': 'topics', '3': 4, '4': 3, '5': 11, '6': '.proto_def.RoomCategoryListResp.TopicPortal', '10': 'topics'},
  ],
};

const ComplainReq$json = const {
  '1': 'ComplainReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'ctype', '3': 3, '4': 1, '5': 14, '6': '.proto_def.ComplainReq.CTYPE', '10': 'ctype'},
    const {'1': 'target_id', '3': 4, '4': 1, '5': 9, '10': 'targetId'},
    const {'1': 'violation_id', '3': 5, '4': 1, '5': 9, '10': 'violationId'},
    const {'1': 'comment', '3': 6, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'urls', '3': 7, '4': 3, '5': 9, '10': 'urls'},
  ],
  '4': const [ComplainReq_CTYPE$json],
};

const ComplainReq_CTYPE$json = const {
  '1': 'CTYPE',
  '2': const [
    const {'1': 'USER', '2': 0},
    const {'1': 'ROOM', '2': 1},
    const {'1': 'TWEET', '2': 2},
  ],
};

const ComplainResp$json = const {
  '1': 'ComplainResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.ComplainResp.STATUS', '10': 'status'},
  ],
  '4': const [ComplainResp_STATUS$json],
};

const ComplainResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_EXPIRES', '2': 1},
  ],
};

const NobleListReq$json = const {
  '1': 'NobleListReq',
};

const NobleListResp$json = const {
  '1': 'NobleListResp',
  '2': const [
    const {'1': 'nobles', '3': 1, '4': 3, '5': 11, '6': '.proto_def.NobleListResp.Noble', '10': 'nobles'},
  ],
  '3': const [NobleListResp_Noble$json],
};

const NobleListResp_Noble$json = const {
  '1': 'Noble',
  '2': const [
    const {'1': 'nid', '3': 1, '4': 1, '5': 5, '10': 'nid'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

const ServerAddrReq$json = const {
  '1': 'ServerAddrReq',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'platform', '3': 2, '4': 1, '5': 9, '10': 'platform'},
    const {'1': 'channel', '3': 3, '4': 1, '5': 9, '10': 'channel'},
    const {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
  ],
};

const ServerAddrResp$json = const {
  '1': 'ServerAddrResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.ServerAddrResp.Status', '10': 'status'},
    const {'1': 'servers', '3': 2, '4': 3, '5': 11, '6': '.proto_def.ServerAddrResp.ServersEntry', '10': 'servers'},
  ],
  '3': const [ServerAddrResp_ServersEntry$json],
  '4': const [ServerAddrResp_Server$json, ServerAddrResp_Status$json],
};

const ServerAddrResp_ServersEntry$json = const {
  '1': 'ServersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const ServerAddrResp_Server$json = const {
  '1': 'Server',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'API', '2': 1},
    const {'1': 'HB', '2': 2},
    const {'1': 'RED', '2': 3},
    const {'1': 'GAME', '2': 4},
  ],
};

const ServerAddrResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'AB_TEST_STAGE', '2': 1},
    const {'1': 'VERSION_NEED_UPDATE', '2': 2},
  ],
};

const ApplyInfo$json = const {
  '1': 'ApplyInfo',
  '2': const [
    const {'1': 'img', '3': 1, '4': 1, '5': 9, '10': 'img'},
    const {'1': 'audio', '3': 2, '4': 1, '5': 9, '10': 'audio'},
    const {'1': 'duration', '3': 8, '4': 1, '5': 5, '10': 'duration'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'lowest_price', '3': 4, '4': 1, '5': 5, '10': 'lowestPrice'},
    const {'1': 'skill_id', '3': 5, '4': 1, '5': 5, '10': 'skillId'},
    const {'1': 'skill_grade', '3': 6, '4': 1, '5': 5, '10': 'skillGrade'},
    const {'1': 'game_uid', '3': 7, '4': 1, '5': 9, '10': 'gameUid'},
  ],
};

const ApplyTip$json = const {
  '1': 'ApplyTip',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'requirement', '3': 2, '4': 1, '5': 9, '10': 'requirement'},
    const {'1': 'example_img', '3': 3, '4': 1, '5': 9, '10': 'exampleImg'},
  ],
};

const SkillApplyUpdateReq$json = const {
  '1': 'SkillApplyUpdateReq',
  '2': const [
    const {'1': 'cmd', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SkillApplyUpdateReq.Cmd', '10': 'cmd'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'skill_id', '3': 4, '4': 1, '5': 5, '10': 'skillId'},
    const {'1': 'info', '3': 5, '4': 1, '5': 11, '6': '.proto_def.ApplyInfo', '10': 'info'},
  ],
  '4': const [SkillApplyUpdateReq_Cmd$json],
};

const SkillApplyUpdateReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'UPDATE', '2': 1},
    const {'1': 'CANCEL', '2': 2},
  ],
};

const SkillApplyUpdateResp$json = const {
  '1': 'SkillApplyUpdateResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SkillApplyUpdateResp.Status', '10': 'status'},
  ],
  '4': const [SkillApplyUpdateResp_Status$json],
};

const SkillApplyUpdateResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'ERROR', '2': 1},
  ],
};

const SkillApplyQueryReq$json = const {
  '1': 'SkillApplyQueryReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'skill_id', '3': 3, '4': 1, '5': 5, '10': 'skillId'},
  ],
};

const SkillApplyQueryResp$json = const {
  '1': 'SkillApplyQueryResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SkillApplyQueryResp.Status', '10': 'status'},
    const {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.proto_def.SkillApplyQueryResp.ApplyState', '10': 'state'},
    const {'1': 'tip', '3': 3, '4': 1, '5': 11, '6': '.proto_def.ApplyTip', '10': 'tip'},
    const {'1': 'info', '3': 4, '4': 1, '5': 11, '6': '.proto_def.ApplyInfo', '10': 'info'},
  ],
  '4': const [SkillApplyQueryResp_Status$json, SkillApplyQueryResp_ApplyState$json],
};

const SkillApplyQueryResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'ERROR', '2': 1},
  ],
};

const SkillApplyQueryResp_ApplyState$json = const {
  '1': 'ApplyState',
  '2': const [
    const {'1': 'NOTAPPLY', '2': 0},
    const {'1': 'APPLYING', '2': 1},
    const {'1': 'APPLIED', '2': 2},
    const {'1': 'FAILED', '2': 3},
    const {'1': 'CANCELED', '2': 4},
  ],
};

const UserSkillCtrlReq$json = const {
  '1': 'UserSkillCtrlReq',
  '2': const [
    const {'1': 'user_skill_id', '3': 1, '4': 1, '5': 5, '10': 'userSkillId'},
    const {'1': 'enable', '3': 2, '4': 1, '5': 8, '10': 'enable'},
  ],
};

const UserSkillCtrlResp$json = const {
  '1': 'UserSkillCtrlResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.UserSkillCtrlResp.Status', '10': 'status'},
  ],
  '4': const [UserSkillCtrlResp_Status$json],
};

const UserSkillCtrlResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'ERROR', '2': 1},
  ],
};

const SysAvatarResp$json = const {
  '1': 'SysAvatarResp',
  '2': const [
    const {'1': 'avatars', '3': 1, '4': 3, '5': 11, '6': '.proto_def.SysAvatarResp.Avatar', '10': 'avatars'},
  ],
  '3': const [SysAvatarResp_Avatar$json],
};

const SysAvatarResp_Avatar$json = const {
  '1': 'Avatar',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'gender', '3': 2, '4': 1, '5': 9, '10': 'gender'},
  ],
};

const CheckTokenReq$json = const {
  '1': 'CheckTokenReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const CheckTokenResp$json = const {
  '1': 'CheckTokenResp',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
    const {'1': 'ttl', '3': 2, '4': 1, '5': 5, '10': 'ttl'},
  ],
};

const ViolationResp$json = const {
  '1': 'ViolationResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.ViolationResp.Item', '10': 'items'},
  ],
  '3': const [ViolationResp_Item$json],
};

const ViolationResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'vid', '3': 1, '4': 1, '5': 5, '10': 'vid'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

const VIPListResp$json = const {
  '1': 'VIPListResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.VIPListResp.Item', '10': 'items'},
  ],
  '3': const [VIPListResp_Item$json],
};

const VIPListResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'vip', '3': 1, '4': 1, '5': 5, '10': 'vip'},
    const {'1': 'threshold', '3': 2, '4': 1, '5': 5, '10': 'threshold'},
  ],
};

const NoblePrivilegeResp$json = const {
  '1': 'NoblePrivilegeResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.NoblePrivilegeResp.Item', '10': 'items'},
  ],
  '3': const [NoblePrivilegeResp_Item$json],
};

const NoblePrivilegeResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'noble_id', '3': 1, '4': 1, '5': 5, '10': 'nobleId'},
    const {'1': 'product_id', '3': 2, '4': 1, '5': 5, '10': 'productId'},
    const {'1': 'protect_days', '3': 3, '4': 1, '5': 5, '10': 'protectDays'},
    const {'1': 'anti_kicked', '3': 4, '4': 1, '5': 8, '10': 'antiKicked'},
    const {'1': 'family_permission', '3': 5, '4': 1, '5': 8, '10': 'familyPermission'},
    const {'1': 'shown_in_room_rank', '3': 6, '4': 1, '5': 8, '10': 'shownInRoomRank'},
    const {'1': 'hidden_enter_room', '3': 12, '4': 1, '5': 8, '10': 'hiddenEnterRoom'},
    const {'1': 'broadcast_gift', '3': 7, '4': 1, '5': 8, '10': 'broadcastGift'},
    const {'1': 'broadcast_noble', '3': 8, '4': 1, '5': 8, '10': 'broadcastNoble'},
    const {'1': 'discount', '3': 9, '4': 1, '5': 1, '10': 'discount'},
    const {'1': 'experience_ratio', '3': 10, '4': 1, '5': 1, '10': 'experienceRatio'},
    const {'1': 'room_max_num', '3': 11, '4': 1, '5': 5, '10': 'roomMaxNum'},
    const {'1': 'vip_prop', '3': 13, '4': 1, '5': 8, '10': 'vipProp'},
  ],
};

const SupportCountryResp$json = const {
  '1': 'SupportCountryResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.SupportCountryResp.Item', '10': 'items'},
  ],
  '3': const [SupportCountryResp_Item$json],
};

const SupportCountryResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'code', '3': 2, '4': 1, '5': 5, '10': 'code'},
  ],
};

const PolicyReq$json = const {
  '1': 'PolicyReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
  ],
};

const PolicyResp$json = const {
  '1': 'PolicyResp',
  '2': const [
    const {'1': 'policy_list', '3': 1, '4': 3, '5': 11, '6': '.proto_def.PolicyResp.PolicyListEntry', '10': 'policyList'},
  ],
  '3': const [PolicyResp_PolicyListEntry$json],
  '4': const [PolicyResp_Category$json],
};

const PolicyResp_PolicyListEntry$json = const {
  '1': 'PolicyListEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': const {'7': true},
};

const PolicyResp_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'ALL', '2': 0},
    const {'1': 'ShowRoom', '2': 1},
    const {'1': 'ShowTweet', '2': 2},
    const {'1': 'PubTweet', '2': 3},
    const {'1': 'ShowBox', '2': 4},
  ],
};

const AppConfigResp$json = const {
  '1': 'AppConfigResp',
  '2': const [
    const {'1': 'configs', '3': 1, '4': 3, '5': 11, '6': '.proto_def.AppConfigResp.ConfigsEntry', '10': 'configs'},
  ],
  '3': const [AppConfigResp_ConfigsEntry$json],
  '4': const [AppConfigResp_Key$json],
};

const AppConfigResp_ConfigsEntry$json = const {
  '1': 'ConfigsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AppConfigResp_Key$json = const {
  '1': 'Key',
  '2': const [
    const {'1': 'UND', '2': 0},
    const {'1': 'RoomDisplayNum', '2': 1},
    const {'1': 'TopicDisplayNum', '2': 2},
    const {'1': 'OAuth', '2': 3},
  ],
};

const BanRuleConfigResp$json = const {
  '1': 'BanRuleConfigResp',
  '2': const [
    const {'1': 'configs', '3': 1, '4': 3, '5': 11, '6': '.proto_def.BanRuleConfigResp.Config', '10': 'configs'},
  ],
  '3': const [BanRuleConfigResp_Config$json],
};

const BanRuleConfigResp_Config$json = const {
  '1': 'Config',
  '2': const [
    const {'1': 'sender_under_level', '3': 1, '4': 1, '5': 5, '10': 'senderUnderLevel'},
    const {'1': 'receiver_under_level', '3': 2, '4': 1, '5': 5, '10': 'receiverUnderLevel'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 5, '10': 'limit'},
  ],
};

const BannerListResp$json = const {
  '1': 'BannerListResp',
  '2': const [
    const {'1': 'banners', '3': 1, '4': 3, '5': 11, '6': '.proto_def.BannerListResp.Banner', '10': 'banners'},
  ],
  '3': const [BannerListResp_Banner$json],
  '4': const [BannerListResp_Category$json],
};

const BannerListResp_Banner$json = const {
  '1': 'Banner',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'category', '3': 2, '4': 1, '5': 14, '6': '.proto_def.BannerListResp.Category', '10': 'category'},
    const {'1': 'img', '3': 3, '4': 1, '5': 9, '10': 'img'},
    const {'1': 'portal', '3': 4, '4': 1, '5': 9, '10': 'portal'},
  ],
};

const BannerListResp_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'UNk', '2': 0},
    const {'1': 'ROOMS_TOP', '2': 1},
    const {'1': 'ROOM_INSIDE', '2': 2},
    const {'1': 'TWEETS_TOP', '2': 3},
    const {'1': 'HOME_TOP', '2': 4},
  ],
};

