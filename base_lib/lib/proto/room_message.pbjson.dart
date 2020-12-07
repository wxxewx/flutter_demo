///
//  Generated code. Do not modify.
//  source: room_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Role$json = const {
  '1': 'Role',
  '2': const [
    const {'1': 'GUEST', '2': 0},
    const {'1': 'OWNER', '2': 1},
    const {'1': 'OPERATOR', '2': 2},
    const {'1': 'BLOCKED', '2': 3},
    const {'1': 'MUTED', '2': 4},
  ],
};

const NotificationType$json = const {
  '1': 'NotificationType',
  '2': const [
    const {'1': 'EVENT', '2': 0},
    const {'1': 'ROOM_CONTROL', '2': 1},
    const {'1': 'SEAT_CONTROL', '2': 2},
    const {'1': 'MEMBER_CONTROL', '2': 3},
  ],
};

const ControlState$json = const {
  '1': 'ControlState',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'DISABLE', '2': 1},
    const {'1': 'ENABLE', '2': 2},
  ],
};

const TopRoomsResp$json = const {
  '1': 'TopRoomsResp',
  '2': const [
    const {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.proto_def.Room', '10': 'rooms'},
  ],
};

const RoomListReq$json = const {
  '1': 'RoomListReq',
  '2': const [
    const {'1': 'category', '3': 1, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'page_number', '3': 2, '4': 1, '5': 5, '10': 'pageNumber'},
    const {'1': 'num_per_page', '3': 3, '4': 1, '5': 5, '10': 'numPerPage'},
    const {'1': 'query', '3': 4, '4': 1, '5': 9, '10': 'query'},
  ],
};

const Room$json = const {
  '1': 'Room',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'room_img', '3': 6, '4': 1, '5': 9, '10': 'roomImg'},
    const {'1': 'member_num', '3': 4, '4': 1, '5': 5, '10': 'memberNum'},
    const {'1': 'category', '3': 7, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'cate_id', '3': 16, '4': 1, '5': 5, '10': 'cateId'},
    const {'1': 'owner_name', '3': 5, '4': 1, '5': 9, '10': 'ownerName'},
    const {'1': 'owner_avatar', '3': 8, '4': 1, '5': 9, '10': 'ownerAvatar'},
    const {'1': 'owner_id', '3': 12, '4': 1, '5': 9, '10': 'ownerId'},
    const {'1': 'layout', '3': 9, '4': 1, '5': 14, '6': '.proto_def.Room.LAYOUT', '10': 'layout'},
    const {'1': 'need_password', '3': 10, '4': 1, '5': 8, '10': 'needPassword'},
    const {'1': 'extern_room_id', '3': 11, '4': 1, '5': 9, '10': 'externRoomId'},
    const {'1': 'enable', '3': 13, '4': 1, '5': 8, '10': 'enable'},
    const {'1': 'index', '3': 14, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'greate_num', '3': 15, '4': 1, '5': 9, '10': 'greateNum'},
  ],
  '4': const [Room_LAYOUT$json],
};

const Room_LAYOUT$json = const {
  '1': 'LAYOUT',
  '2': const [
    const {'1': 'SEATS_4', '2': 0},
    const {'1': 'SEATS_8', '2': 1},
    const {'1': 'SEATS_0', '2': 2},
  ],
};

const RoomListResp$json = const {
  '1': 'RoomListResp',
  '2': const [
    const {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.proto_def.Room', '10': 'rooms'},
  ],
};

const RoomDetailReq$json = const {
  '1': 'RoomDetailReq',
  '2': const [
    const {'1': 'chatroom_id', '3': 1, '4': 1, '5': 9, '10': 'chatroomId'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

const RoomDetailResp$json = const {
  '1': 'RoomDetailResp',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomDetailResp.STATUS', '10': 'code'},
    const {'1': 'room', '3': 2, '4': 1, '5': 11, '6': '.proto_def.Room', '10': 'room'},
    const {'1': 'room_followed', '3': 4, '4': 1, '5': 8, '10': 'roomFollowed'},
    const {'1': 'seats', '3': 3, '4': 3, '5': 11, '6': '.proto_def.RoomDetailResp.Seat', '10': 'seats'},
  ],
  '3': const [RoomDetailResp_Seat$json],
  '4': const [RoomDetailResp_STATUS$json, RoomDetailResp_SEAT_STATE$json],
};

const RoomDetailResp_Seat$json = const {
  '1': 'Seat',
  '2': const [
    const {'1': 'idx', '3': 1, '4': 1, '5': 5, '10': 'idx'},
    const {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.proto_def.RoomDetailResp.SEAT_STATE', '10': 'state'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'user_id', '3': 4, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'user_name', '3': 5, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'user_avatar', '3': 6, '4': 1, '5': 9, '10': 'userAvatar'},
  ],
};

const RoomDetailResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'PASSWORD_INVALID', '2': 1},
    const {'1': 'ROOM_IS_FULL', '2': 2},
    const {'1': 'USER_IS_BLOCKED', '2': 3},
  ],
};

const RoomDetailResp_SEAT_STATE$json = const {
  '1': 'SEAT_STATE',
  '2': const [
    const {'1': 'DISABLED', '2': 0},
    const {'1': 'OPEN', '2': 1},
    const {'1': 'OCCUPIED', '2': 2},
  ],
};

const RoomCreateReq$json = const {
  '1': 'RoomCreateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'category_id', '3': 4, '4': 1, '5': 5, '10': 'categoryId'},
    const {'1': 'declaration', '3': 5, '4': 1, '5': 9, '10': 'declaration'},
    const {'1': 'password', '3': 6, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'theme_id', '3': 7, '4': 1, '5': 5, '10': 'themeId'},
  ],
};

const RoomCreateResp$json = const {
  '1': 'RoomCreateResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomCreateResp.STATUS', '10': 'status'},
    const {'1': 'room_id', '3': 2, '4': 1, '5': 9, '10': 'roomId'},
  ],
  '4': const [RoomCreateResp_STATUS$json],
};

const RoomCreateResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'OVER_LIMIT', '2': 1},
    const {'1': 'TOKEN_INVALID', '2': 2},
    const {'1': 'CREATE_FAILED', '2': 3},
  ],
};

const RoomSubscribeReq$json = const {
  '1': 'RoomSubscribeReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 3, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'followed', '3': 4, '4': 1, '5': 8, '10': 'followed'},
  ],
};

const RoomSubscribeResp$json = const {
  '1': 'RoomSubscribeResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomSubscribeResp.STATUS', '10': 'status'},
    const {'1': 'followed', '3': 2, '4': 1, '5': 8, '10': 'followed'},
  ],
  '4': const [RoomSubscribeResp_STATUS$json],
};

const RoomSubscribeResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
  ],
};

const UserRoomsReq$json = const {
  '1': 'UserRoomsReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.proto_def.UserRoomsReq.Category', '10': 'category'},
  ],
  '4': const [UserRoomsReq_Category$json],
};

const UserRoomsReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'ALL', '2': 0},
    const {'1': 'CREATED', '2': 1},
    const {'1': 'FOLLOWED', '2': 2},
  ],
};

const UserRoomsResp$json = const {
  '1': 'UserRoomsResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.UserRoomsResp.STATUS', '10': 'status'},
    const {'1': 'rooms', '3': 2, '4': 3, '5': 11, '6': '.proto_def.Room', '10': 'rooms'},
  ],
  '4': const [UserRoomsResp_STATUS$json],
};

const UserRoomsResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
  ],
};

const RoomMembersReq$json = const {
  '1': 'RoomMembersReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 3, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'role', '3': 4, '4': 1, '5': 14, '6': '.proto_def.Role', '10': 'role'},
    const {'1': 'noble', '3': 5, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'vip', '3': 6, '4': 1, '5': 5, '10': 'vip'},
  ],
};

const RoomMembersResp$json = const {
  '1': 'RoomMembersResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomMembersResp.STATUS', '10': 'status'},
    const {'1': 'members', '3': 2, '4': 3, '5': 11, '6': '.proto_def.RoomMembersResp.Member', '10': 'members'},
  ],
  '3': const [RoomMembersResp_Member$json],
  '4': const [RoomMembersResp_STATUS$json],
};

const RoomMembersResp_Member$json = const {
  '1': 'Member',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'time', '3': 4, '4': 1, '5': 9, '10': 'time'},
    const {'1': 'noble', '3': 5, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'vip', '3': 6, '4': 1, '5': 5, '10': 'vip'},
    const {'1': 'role', '3': 7, '4': 1, '5': 14, '6': '.proto_def.Role', '10': 'role'},
    const {'1': 'comment', '3': 8, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'gender', '3': 9, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'age', '3': 10, '4': 1, '5': 5, '10': 'age'},
    const {'1': 'great_num', '3': 11, '4': 1, '5': 9, '10': 'greatNum'},
  ],
};

const RoomMembersResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'USER_INVALID', '2': 1},
    const {'1': 'PERMISSION_DENIED', '2': 2},
  ],
};

const RoomMemberControlReq$json = const {
  '1': 'RoomMemberControlReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 3, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'tgt_uid', '3': 4, '4': 1, '5': 9, '10': 'tgtUid'},
    const {'1': 'role', '3': 5, '4': 1, '5': 14, '6': '.proto_def.Role', '10': 'role'},
    const {'1': 'valid', '3': 6, '4': 1, '5': 8, '10': 'valid'},
    const {'1': 'comment', '3': 7, '4': 1, '5': 9, '10': 'comment'},
  ],
};

const RoomMemberControlResp$json = const {
  '1': 'RoomMemberControlResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomMemberControlResp.STATUS', '10': 'status'},
  ],
  '4': const [RoomMemberControlResp_STATUS$json],
};

const RoomMemberControlResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'PERMISSION_DENIED', '2': 2},
    const {'1': 'OPERATION_FAILED', '2': 3},
  ],
};

const RoomMemberControlNotification$json = const {
  '1': 'RoomMemberControlNotification',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'role', '3': 4, '4': 1, '5': 14, '6': '.proto_def.Role', '10': 'role'},
    const {'1': 'comment', '3': 5, '4': 1, '5': 9, '10': 'comment'},
  ],
};

const RoomEventReq$json = const {
  '1': 'RoomEventReq',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomEventReq.EventType', '10': 'type'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 4, '4': 1, '5': 9, '10': 'roomId'},
  ],
  '4': const [RoomEventReq_EventType$json],
};

const RoomEventReq_EventType$json = const {
  '1': 'EventType',
  '2': const [
    const {'1': 'ENTER', '2': 0},
    const {'1': 'LEAVE', '2': 1},
    const {'1': 'OPEN_BOX', '2': 2},
    const {'1': 'SEND_GIFT', '2': 3},
    const {'1': 'COUPLE', '2': 4},
    const {'1': 'NOBLE', '2': 5},
    const {'1': 'OPEN_MAGICBOX', '2': 6},
  ],
};

const RoomEventResp$json = const {
  '1': 'RoomEventResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomEventResp.STATUS', '10': 'status'},
  ],
  '4': const [RoomEventResp_STATUS$json],
};

const RoomEventResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'ERROR', '2': 1},
  ],
};

const RoomEventNotification$json = const {
  '1': 'RoomEventNotification',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomEventReq.EventType', '10': 'type'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.proto_def.RoomEventNotification.User', '10': 'user'},
    const {'1': 'room', '3': 5, '4': 1, '5': 11, '6': '.proto_def.RoomEventNotification.Room', '10': 'room'},
    const {'1': 'gifts', '3': 3, '4': 3, '5': 11, '6': '.proto_def.RoomEventNotification.Gift', '10': 'gifts'},
    const {'1': 'box_msgs', '3': 4, '4': 3, '5': 11, '6': '.proto_def.RoomEventNotification.BoxOpenMsg', '10': 'boxMsgs'},
  ],
  '3': const [RoomEventNotification_User$json, RoomEventNotification_Room$json, RoomEventNotification_Gift$json, RoomEventNotification_BoxOpenMsg$json],
  '4': const [RoomEventNotification_GRADE$json],
};

const RoomEventNotification_User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'noble', '3': 4, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'vip', '3': 5, '4': 1, '5': 5, '10': 'vip'},
  ],
};

const RoomEventNotification_Room$json = const {
  '1': 'Room',
  '2': const [
    const {'1': 'room_id', '3': 1, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

const RoomEventNotification_Gift$json = const {
  '1': 'Gift',
  '2': const [
    const {'1': 'to_uid', '3': 1, '4': 1, '5': 9, '10': 'toUid'},
    const {'1': 'to_name', '3': 2, '4': 1, '5': 9, '10': 'toName'},
    const {'1': 'gift_id', '3': 3, '4': 1, '5': 5, '10': 'giftId'},
    const {'1': 'count', '3': 4, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'grade', '3': 5, '4': 1, '5': 14, '6': '.proto_def.RoomEventNotification.GRADE', '10': 'grade'},
    const {'1': 'winning', '3': 6, '4': 1, '5': 8, '10': 'winning'},
  ],
};

const RoomEventNotification_BoxOpenMsg$json = const {
  '1': 'BoxOpenMsg',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'box_grade', '3': 3, '4': 1, '5': 14, '6': '.proto_def.RoomEventNotification.GRADE', '10': 'boxGrade'},
    const {'1': 'winning', '3': 4, '4': 1, '5': 8, '10': 'winning'},
  ],
};

const RoomEventNotification_GRADE$json = const {
  '1': 'GRADE',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'BROZEN', '2': 1},
    const {'1': 'SILVER', '2': 2},
    const {'1': 'GOLDEN', '2': 3},
    const {'1': 'MAGIC', '2': 4},
    const {'1': 'PANDORA', '2': 5},
  ],
};

const RoomControlReq$json = const {
  '1': 'RoomControlReq',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomControlReq.ControlType', '10': 'type'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 4, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'room_info', '3': 5, '4': 1, '5': 11, '6': '.proto_def.RoomControlReq.Info', '10': 'roomInfo'},
    const {'1': 'tgt_uid', '3': 6, '4': 1, '5': 9, '10': 'tgtUid'},
  ],
  '3': const [RoomControlReq_Info$json],
  '4': const [RoomControlReq_ControlType$json],
};

const RoomControlReq_Info$json = const {
  '1': 'Info',
  '2': const [
    const {'1': 'declaration', '3': 1, '4': 1, '5': 9, '10': 'declaration'},
    const {'1': 'background', '3': 2, '4': 1, '5': 9, '10': 'background'},
    const {'1': 'room_avatar', '3': 3, '4': 1, '5': 9, '10': 'roomAvatar'},
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'muted_all', '3': 5, '4': 1, '5': 14, '6': '.proto_def.ControlState', '10': 'mutedAll'},
    const {'1': 'enable', '3': 6, '4': 1, '5': 14, '6': '.proto_def.ControlState', '10': 'enable'},
    const {'1': 'title', '3': 7, '4': 1, '5': 9, '10': 'title'},
  ],
};

const RoomControlReq_ControlType$json = const {
  '1': 'ControlType',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'KICK', '2': 1},
    const {'1': 'INFO_UPDATE', '2': 2},
    const {'1': 'PASSWORD_UPDATE', '2': 3},
  ],
};

const RoomControlResp$json = const {
  '1': 'RoomControlResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.RoomControlResp.STATUS', '10': 'status'},
  ],
  '4': const [RoomControlResp_STATUS$json],
};

const RoomControlResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'PERMISSION_DENIED', '2': 2},
    const {'1': 'OPERATION_FAILED', '2': 3},
  ],
};

const SeatControlReq$json = const {
  '1': 'SeatControlReq',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SeatControlReq.ControlType', '10': 'type'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 4, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'tgt_uid', '3': 5, '4': 1, '5': 9, '10': 'tgtUid'},
    const {'1': 'seat_idx', '3': 6, '4': 1, '5': 5, '10': 'seatIdx'},
  ],
  '4': const [SeatControlReq_ControlType$json],
};

const SeatControlReq_ControlType$json = const {
  '1': 'ControlType',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'APPLY', '2': 1},
    const {'1': 'CANCEL', '2': 2},
    const {'1': 'TAKEN', '2': 3},
    const {'1': 'RELEASE', '2': 4},
    const {'1': 'OPEN_MIC', '2': 5},
    const {'1': 'CLOSE_MIC', '2': 6},
    const {'1': 'LOCK', '2': 7},
    const {'1': 'UNLOCK', '2': 8},
  ],
};

const SeatControlResp$json = const {
  '1': 'SeatControlResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SeatControlResp.STATUS', '10': 'status'},
  ],
  '4': const [SeatControlResp_STATUS$json],
};

const SeatControlResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'ERROR', '2': 1},
    const {'1': 'SEAT_OCCUPIED', '2': 2},
    const {'1': 'ALREADY_SEATED', '2': 3},
  ],
};

const RoomTitleTipResp$json = const {
  '1': 'RoomTitleTipResp',
  '2': const [
    const {'1': 'titles', '3': 1, '4': 3, '5': 9, '10': 'titles'},
  ],
};

const RoomThemeResp$json = const {
  '1': 'RoomThemeResp',
  '2': const [
    const {'1': 'themes', '3': 1, '4': 3, '5': 11, '6': '.proto_def.RoomThemeResp.Theme', '10': 'themes'},
  ],
  '3': const [RoomThemeResp_Theme$json],
};

const RoomThemeResp_Theme$json = const {
  '1': 'Theme',
  '2': const [
    const {'1': 'tid', '3': 1, '4': 1, '5': 5, '10': 'tid'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

const RoomExtInfo$json = const {
  '1': 'RoomExtInfo',
  '2': const [
    const {'1': 'bg_theme_id', '3': 1, '4': 1, '5': 5, '10': 'bgThemeId'},
    const {'1': 'room_timer', '3': 2, '4': 1, '5': 13, '10': 'roomTimer'},
    const {
      '1': 'seat_timer',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'seatTimer',
    },
    const {
      '1': 'seat_idx',
      '3': 4,
      '4': 1,
      '5': 5,
      '8': const {'3': true},
      '10': 'seatIdx',
    },
    const {'1': 'announcement', '3': 5, '4': 1, '5': 9, '10': 'announcement'},
    const {'1': 'title', '3': 6, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'seat_timers', '3': 7, '4': 3, '5': 11, '6': '.proto_def.RoomExtInfo.SeatTimersEntry', '10': 'seatTimers'},
    const {'1': 'counter', '3': 8, '4': 1, '5': 11, '6': '.proto_def.RoomExtInfo.OrderCounter', '10': 'counter'},
    const {'1': 'stage', '3': 9, '4': 1, '5': 14, '6': '.proto_def.RoomExtInfo.CpStage', '10': 'stage'},
  ],
  '3': const [RoomExtInfo_SeatTimer$json, RoomExtInfo_OrderCounter$json, RoomExtInfo_SeatTimersEntry$json],
  '4': const [RoomExtInfo_CpStage$json],
};

const RoomExtInfo_SeatTimer$json = const {
  '1': 'SeatTimer',
  '2': const [
    const {'1': 'seat_idx', '3': 1, '4': 1, '5': 5, '10': 'seatIdx'},
    const {'1': 'seat_timer', '3': 2, '4': 1, '5': 13, '10': 'seatTimer'},
  ],
};

const RoomExtInfo_OrderCounter$json = const {
  '1': 'OrderCounter',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'duration', '3': 2, '4': 1, '5': 5, '10': 'duration'},
    const {'1': 'expires_at', '3': 3, '4': 1, '5': 13, '10': 'expiresAt'},
  ],
};

const RoomExtInfo_SeatTimersEntry$json = const {
  '1': 'SeatTimersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.proto_def.RoomExtInfo.SeatTimer', '10': 'value'},
  ],
  '7': const {'7': true},
};

const RoomExtInfo_CpStage$json = const {
  '1': 'CpStage',
  '2': const [
    const {'1': 'NOTHING', '2': 0},
    const {'1': 'PREPARING', '2': 1},
    const {'1': 'CHOOSING', '2': 2},
    const {'1': 'ANNOUNCING', '2': 3},
  ],
};

const SeatQueueItem$json = const {
  '1': 'SeatQueueItem',
  '2': const [
    const {'1': 'seat_idx', '3': 1, '4': 1, '5': 5, '10': 'seatIdx'},
    const {'1': 'seat_state', '3': 2, '4': 1, '5': 14, '6': '.proto_def.SeatQueueItem.SeatState', '10': 'seatState'},
    const {'1': 'mic_state', '3': 3, '4': 1, '5': 14, '6': '.proto_def.ControlState', '10': 'micState'},
    const {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'user_name', '3': 5, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'user_avatar', '3': 6, '4': 1, '5': 9, '10': 'userAvatar'},
    const {'1': 'user_noble', '3': 7, '4': 1, '5': 5, '10': 'userNoble'},
    const {'1': 'user_vip', '3': 8, '4': 1, '5': 5, '10': 'userVip'},
    const {'1': 'avatar_box', '3': 9, '4': 1, '5': 9, '10': 'avatarBox'},
  ],
  '4': const [SeatQueueItem_SeatState$json],
};

const SeatQueueItem_SeatState$json = const {
  '1': 'SeatState',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'LOCKED', '2': 1},
    const {'1': 'OPEN', '2': 2},
    const {'1': 'OCCUPIED', '2': 3},
  ],
};

const WaitQueue$json = const {
  '1': 'WaitQueue',
  '2': const [
    const {'1': 'placeholder', '3': 1, '4': 1, '5': 9, '10': 'placeholder'},
    const {'1': 'wait_users', '3': 2, '4': 3, '5': 11, '6': '.proto_def.WaitQueue.WaitUsersEntry', '10': 'waitUsers'},
  ],
  '3': const [WaitQueue_User$json, WaitQueue_WaitUsersEntry$json],
};

const WaitQueue_User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gender', '3': 3, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'avatar', '3': 4, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'noble', '3': 5, '4': 1, '5': 5, '10': 'noble'},
    const {'1': 'vip', '3': 6, '4': 1, '5': 5, '10': 'vip'},
    const {'1': 'seat_idx', '3': 7, '4': 1, '5': 5, '10': 'seatIdx'},
    const {'1': 'timestamp', '3': 8, '4': 1, '5': 5, '10': 'timestamp'},
  ],
};

const WaitQueue_WaitUsersEntry$json = const {
  '1': 'WaitUsersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.proto_def.WaitQueue.User', '10': 'value'},
  ],
  '7': const {'7': true},
};

const SeatFundControlReq$json = const {
  '1': 'SeatFundControlReq',
  '2': const [
    const {'1': 'cmd', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SeatFundControlReq.Cmd', '10': 'cmd'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 4, '4': 1, '5': 5, '10': 'roomId'},
    const {'1': 'seat_idx', '3': 5, '4': 1, '5': 5, '10': 'seatIdx'},
  ],
  '4': const [SeatFundControlReq_Cmd$json],
};

const SeatFundControlReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'START', '2': 1},
    const {'1': 'PAUSE', '2': 2},
    const {'1': 'RESET', '2': 3},
    const {'1': 'STOP', '2': 4},
  ],
};

const SeatFundControlResp$json = const {
  '1': 'SeatFundControlResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SeatFundControlResp.Status', '10': 'status'},
  ],
  '4': const [SeatFundControlResp_Status$json],
};

const SeatFundControlResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'PERMISSION_DENIED', '2': 2},
    const {'1': 'OPERATION_FAILED', '2': 3},
  ],
};

const SeatFundQueue$json = const {
  '1': 'SeatFundQueue',
  '2': const [
    const {'1': 'placeholder', '3': 1, '4': 1, '5': 9, '10': 'placeholder'},
    const {'1': 'show_funds', '3': 2, '4': 1, '5': 8, '10': 'showFunds'},
    const {'1': 'seat_funds', '3': 3, '4': 3, '5': 11, '6': '.proto_def.SeatFundQueue.SeatFundsEntry', '10': 'seatFunds'},
    const {'1': 'week_income', '3': 4, '4': 1, '5': 5, '10': 'weekIncome'},
  ],
  '3': const [SeatFundQueue_Item$json, SeatFundQueue_SeatFundsEntry$json],
};

const SeatFundQueue_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'seat_idx', '3': 1, '4': 1, '5': 5, '10': 'seatIdx'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 5, '10': 'amount'},
  ],
};

const SeatFundQueue_SeatFundsEntry$json = const {
  '1': 'SeatFundsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.proto_def.SeatFundQueue.Item', '10': 'value'},
  ],
  '7': const {'7': true},
};

const SeatDecoratorControlReq$json = const {
  '1': 'SeatDecoratorControlReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'cmd', '3': 3, '4': 1, '5': 14, '6': '.proto_def.SeatDecoratorControlReq.Cmd', '10': 'cmd'},
    const {'1': 'room_id', '3': 4, '4': 1, '5': 5, '10': 'roomId'},
    const {'1': 'seat_idx', '3': 5, '4': 1, '5': 5, '10': 'seatIdx'},
    const {'1': 'category', '3': 6, '4': 1, '5': 5, '10': 'category'},
  ],
  '4': const [SeatDecoratorControlReq_Cmd$json],
};

const SeatDecoratorControlReq_Cmd$json = const {
  '1': 'Cmd',
  '2': const [
    const {'1': 'UNK', '2': 0},
    const {'1': 'HIDE', '2': 1},
    const {'1': 'SHOW', '2': 2},
  ],
};

const SeatDecoratorControlResp$json = const {
  '1': 'SeatDecoratorControlResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.SeatDecoratorControlResp.Status', '10': 'status'},
  ],
  '4': const [SeatDecoratorControlResp_Status$json],
};

const SeatDecoratorControlResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'PRODUCT_EXPIRE', '2': 2},
    const {'1': 'PARAMETER_ERROR', '2': 3},
  ],
};

const KeepAliveRegister$json = const {
  '1': 'KeepAliveRegister',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'room_id', '3': 2, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'seat_idx', '3': 3, '4': 1, '5': 5, '10': 'seatIdx'},
    const {'1': 'in_waitq', '3': 4, '4': 1, '5': 8, '10': 'inWaitq'},
  ],
};

const OrderDispatchReq$json = const {
  '1': 'OrderDispatchReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'room_id', '3': 3, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'skill_id', '3': 4, '4': 1, '5': 5, '10': 'skillId'},
    const {'1': 'skill_title', '3': 5, '4': 1, '5': 9, '10': 'skillTitle'},
    const {'1': 'gender', '3': 6, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'comment', '3': 7, '4': 1, '5': 9, '10': 'comment'},
  ],
};

const OrderDispatchResp$json = const {
  '1': 'OrderDispatchResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.OrderDispatchResp.STATUS', '10': 'status'},
    const {'1': 'order_count', '3': 2, '4': 1, '5': 5, '10': 'orderCount'},
    const {'1': 'expires_at', '3': 3, '4': 1, '5': 13, '10': 'expiresAt'},
  ],
  '4': const [OrderDispatchResp_STATUS$json],
};

const OrderDispatchResp_STATUS$json = const {
  '1': 'STATUS',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'ERROR', '2': 1},
  ],
};

