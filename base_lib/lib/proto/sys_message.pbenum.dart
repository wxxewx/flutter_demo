///
//  Generated code. Do not modify.
//  source: sys_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SkillListResp_Category extends $pb.ProtobufEnum {
  static const SkillListResp_Category VOICE = SkillListResp_Category._(0, 'VOICE');
  static const SkillListResp_Category GAME = SkillListResp_Category._(1, 'GAME');

  static const $core.List<SkillListResp_Category> values = <SkillListResp_Category> [
    VOICE,
    GAME,
  ];

  static final $core.Map<$core.int, SkillListResp_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SkillListResp_Category valueOf($core.int value) => _byValue[value];

  const SkillListResp_Category._($core.int v, $core.String n) : super(v, n);
}

class MusicSearchResp_STATUS extends $pb.ProtobufEnum {
  static const MusicSearchResp_STATUS OK = MusicSearchResp_STATUS._(0, 'OK');
  static const MusicSearchResp_STATUS SEARCH_UNAVAIABLE = MusicSearchResp_STATUS._(1, 'SEARCH_UNAVAIABLE');

  static const $core.List<MusicSearchResp_STATUS> values = <MusicSearchResp_STATUS> [
    OK,
    SEARCH_UNAVAIABLE,
  ];

  static final $core.Map<$core.int, MusicSearchResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MusicSearchResp_STATUS valueOf($core.int value) => _byValue[value];

  const MusicSearchResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class ComplainReq_CTYPE extends $pb.ProtobufEnum {
  static const ComplainReq_CTYPE USER = ComplainReq_CTYPE._(0, 'USER');
  static const ComplainReq_CTYPE ROOM = ComplainReq_CTYPE._(1, 'ROOM');
  static const ComplainReq_CTYPE TWEET = ComplainReq_CTYPE._(2, 'TWEET');

  static const $core.List<ComplainReq_CTYPE> values = <ComplainReq_CTYPE> [
    USER,
    ROOM,
    TWEET,
  ];

  static final $core.Map<$core.int, ComplainReq_CTYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ComplainReq_CTYPE valueOf($core.int value) => _byValue[value];

  const ComplainReq_CTYPE._($core.int v, $core.String n) : super(v, n);
}

class ComplainResp_STATUS extends $pb.ProtobufEnum {
  static const ComplainResp_STATUS OK = ComplainResp_STATUS._(0, 'OK');
  static const ComplainResp_STATUS TOKEN_EXPIRES = ComplainResp_STATUS._(1, 'TOKEN_EXPIRES');

  static const $core.List<ComplainResp_STATUS> values = <ComplainResp_STATUS> [
    OK,
    TOKEN_EXPIRES,
  ];

  static final $core.Map<$core.int, ComplainResp_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ComplainResp_STATUS valueOf($core.int value) => _byValue[value];

  const ComplainResp_STATUS._($core.int v, $core.String n) : super(v, n);
}

class ServerAddrResp_Server extends $pb.ProtobufEnum {
  static const ServerAddrResp_Server UNK = ServerAddrResp_Server._(0, 'UNK');
  static const ServerAddrResp_Server API = ServerAddrResp_Server._(1, 'API');
  static const ServerAddrResp_Server HB = ServerAddrResp_Server._(2, 'HB');
  static const ServerAddrResp_Server RED = ServerAddrResp_Server._(3, 'RED');
  static const ServerAddrResp_Server GAME = ServerAddrResp_Server._(4, 'GAME');

  static const $core.List<ServerAddrResp_Server> values = <ServerAddrResp_Server> [
    UNK,
    API,
    HB,
    RED,
    GAME,
  ];

  static final $core.Map<$core.int, ServerAddrResp_Server> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ServerAddrResp_Server valueOf($core.int value) => _byValue[value];

  const ServerAddrResp_Server._($core.int v, $core.String n) : super(v, n);
}

class ServerAddrResp_Status extends $pb.ProtobufEnum {
  static const ServerAddrResp_Status OK = ServerAddrResp_Status._(0, 'OK');
  static const ServerAddrResp_Status AB_TEST_STAGE = ServerAddrResp_Status._(1, 'AB_TEST_STAGE');
  static const ServerAddrResp_Status VERSION_NEED_UPDATE = ServerAddrResp_Status._(2, 'VERSION_NEED_UPDATE');

  static const $core.List<ServerAddrResp_Status> values = <ServerAddrResp_Status> [
    OK,
    AB_TEST_STAGE,
    VERSION_NEED_UPDATE,
  ];

  static final $core.Map<$core.int, ServerAddrResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ServerAddrResp_Status valueOf($core.int value) => _byValue[value];

  const ServerAddrResp_Status._($core.int v, $core.String n) : super(v, n);
}

class SkillApplyUpdateReq_Cmd extends $pb.ProtobufEnum {
  static const SkillApplyUpdateReq_Cmd UNK = SkillApplyUpdateReq_Cmd._(0, 'UNK');
  static const SkillApplyUpdateReq_Cmd UPDATE = SkillApplyUpdateReq_Cmd._(1, 'UPDATE');
  static const SkillApplyUpdateReq_Cmd CANCEL = SkillApplyUpdateReq_Cmd._(2, 'CANCEL');

  static const $core.List<SkillApplyUpdateReq_Cmd> values = <SkillApplyUpdateReq_Cmd> [
    UNK,
    UPDATE,
    CANCEL,
  ];

  static final $core.Map<$core.int, SkillApplyUpdateReq_Cmd> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SkillApplyUpdateReq_Cmd valueOf($core.int value) => _byValue[value];

  const SkillApplyUpdateReq_Cmd._($core.int v, $core.String n) : super(v, n);
}

class SkillApplyUpdateResp_Status extends $pb.ProtobufEnum {
  static const SkillApplyUpdateResp_Status OK = SkillApplyUpdateResp_Status._(0, 'OK');
  static const SkillApplyUpdateResp_Status ERROR = SkillApplyUpdateResp_Status._(1, 'ERROR');

  static const $core.List<SkillApplyUpdateResp_Status> values = <SkillApplyUpdateResp_Status> [
    OK,
    ERROR,
  ];

  static final $core.Map<$core.int, SkillApplyUpdateResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SkillApplyUpdateResp_Status valueOf($core.int value) => _byValue[value];

  const SkillApplyUpdateResp_Status._($core.int v, $core.String n) : super(v, n);
}

class SkillApplyQueryResp_Status extends $pb.ProtobufEnum {
  static const SkillApplyQueryResp_Status OK = SkillApplyQueryResp_Status._(0, 'OK');
  static const SkillApplyQueryResp_Status ERROR = SkillApplyQueryResp_Status._(1, 'ERROR');

  static const $core.List<SkillApplyQueryResp_Status> values = <SkillApplyQueryResp_Status> [
    OK,
    ERROR,
  ];

  static final $core.Map<$core.int, SkillApplyQueryResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SkillApplyQueryResp_Status valueOf($core.int value) => _byValue[value];

  const SkillApplyQueryResp_Status._($core.int v, $core.String n) : super(v, n);
}

class SkillApplyQueryResp_ApplyState extends $pb.ProtobufEnum {
  static const SkillApplyQueryResp_ApplyState NOTAPPLY = SkillApplyQueryResp_ApplyState._(0, 'NOTAPPLY');
  static const SkillApplyQueryResp_ApplyState APPLYING = SkillApplyQueryResp_ApplyState._(1, 'APPLYING');
  static const SkillApplyQueryResp_ApplyState APPLIED = SkillApplyQueryResp_ApplyState._(2, 'APPLIED');
  static const SkillApplyQueryResp_ApplyState FAILED = SkillApplyQueryResp_ApplyState._(3, 'FAILED');
  static const SkillApplyQueryResp_ApplyState CANCELED = SkillApplyQueryResp_ApplyState._(4, 'CANCELED');

  static const $core.List<SkillApplyQueryResp_ApplyState> values = <SkillApplyQueryResp_ApplyState> [
    NOTAPPLY,
    APPLYING,
    APPLIED,
    FAILED,
    CANCELED,
  ];

  static final $core.Map<$core.int, SkillApplyQueryResp_ApplyState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SkillApplyQueryResp_ApplyState valueOf($core.int value) => _byValue[value];

  const SkillApplyQueryResp_ApplyState._($core.int v, $core.String n) : super(v, n);
}

class UserSkillCtrlResp_Status extends $pb.ProtobufEnum {
  static const UserSkillCtrlResp_Status OK = UserSkillCtrlResp_Status._(0, 'OK');
  static const UserSkillCtrlResp_Status ERROR = UserSkillCtrlResp_Status._(1, 'ERROR');

  static const $core.List<UserSkillCtrlResp_Status> values = <UserSkillCtrlResp_Status> [
    OK,
    ERROR,
  ];

  static final $core.Map<$core.int, UserSkillCtrlResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserSkillCtrlResp_Status valueOf($core.int value) => _byValue[value];

  const UserSkillCtrlResp_Status._($core.int v, $core.String n) : super(v, n);
}

class PolicyResp_Category extends $pb.ProtobufEnum {
  static const PolicyResp_Category ALL = PolicyResp_Category._(0, 'ALL');
  static const PolicyResp_Category ShowRoom = PolicyResp_Category._(1, 'ShowRoom');
  static const PolicyResp_Category ShowTweet = PolicyResp_Category._(2, 'ShowTweet');
  static const PolicyResp_Category PubTweet = PolicyResp_Category._(3, 'PubTweet');
  static const PolicyResp_Category ShowBox = PolicyResp_Category._(4, 'ShowBox');

  static const $core.List<PolicyResp_Category> values = <PolicyResp_Category> [
    ALL,
    ShowRoom,
    ShowTweet,
    PubTweet,
    ShowBox,
  ];

  static final $core.Map<$core.int, PolicyResp_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PolicyResp_Category valueOf($core.int value) => _byValue[value];

  const PolicyResp_Category._($core.int v, $core.String n) : super(v, n);
}

class AppConfigResp_Key extends $pb.ProtobufEnum {
  static const AppConfigResp_Key UND = AppConfigResp_Key._(0, 'UND');
  static const AppConfigResp_Key RoomDisplayNum = AppConfigResp_Key._(1, 'RoomDisplayNum');
  static const AppConfigResp_Key TopicDisplayNum = AppConfigResp_Key._(2, 'TopicDisplayNum');
  static const AppConfigResp_Key OAuth = AppConfigResp_Key._(3, 'OAuth');

  static const $core.List<AppConfigResp_Key> values = <AppConfigResp_Key> [
    UND,
    RoomDisplayNum,
    TopicDisplayNum,
    OAuth,
  ];

  static final $core.Map<$core.int, AppConfigResp_Key> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AppConfigResp_Key valueOf($core.int value) => _byValue[value];

  const AppConfigResp_Key._($core.int v, $core.String n) : super(v, n);
}

class BannerListResp_Category extends $pb.ProtobufEnum {
  static const BannerListResp_Category UNk = BannerListResp_Category._(0, 'UNk');
  static const BannerListResp_Category ROOMS_TOP = BannerListResp_Category._(1, 'ROOMS_TOP');
  static const BannerListResp_Category ROOM_INSIDE = BannerListResp_Category._(2, 'ROOM_INSIDE');
  static const BannerListResp_Category TWEETS_TOP = BannerListResp_Category._(3, 'TWEETS_TOP');
  static const BannerListResp_Category HOME_TOP = BannerListResp_Category._(4, 'HOME_TOP');

  static const $core.List<BannerListResp_Category> values = <BannerListResp_Category> [
    UNk,
    ROOMS_TOP,
    ROOM_INSIDE,
    TWEETS_TOP,
    HOME_TOP,
  ];

  static final $core.Map<$core.int, BannerListResp_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BannerListResp_Category valueOf($core.int value) => _byValue[value];

  const BannerListResp_Category._($core.int v, $core.String n) : super(v, n);
}

