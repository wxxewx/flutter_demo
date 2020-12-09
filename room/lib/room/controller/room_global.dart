import 'package:baselib/account/account_global.dart';
import 'package:baselib/agora/agora.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:nim/nim.dart';
import 'package:nim/service/chatroom_service.dart';
import 'package:room/model/room.dart';
import 'package:room/room/controller/seat_controller.dart';
import 'package:room/room/controller/user_controller.dart';
import 'package:room/room/model/model.dart';
import 'package:room/room/model/room.dart';
import 'package:room/room/room_theme.dart';
import 'package:rxdart/rxdart.dart';

import 'controller_mixin.dart';
import 'message_controller.dart';

class RoomGlobal {
  static RoomGlobal get instance => _getInstance();
  static RoomGlobal _instance;

  RoomGlobal._internal() {}

  static RoomGlobal _getInstance() {
    if (_instance == null) {
      _instance = new RoomGlobal._internal();
    }
    return _instance;
  }

  ///座位处理器
  final SeatController seatController = SeatController();

  //消息处理器
  final MessageController messageController = MessageController();

  //用户相关的
  final UserController userController = UserController();

  //房主信息
  BehaviorSubject<String> ownerIdStream = BehaviorSubject();

  String get ownerId => ownerIdStream.value ?? "";

  //房间公告
  BehaviorSubject<String> announcementStream = BehaviorSubject();

  String get announcement => announcementStream.value ?? "欢迎来到德莱联盟！";

  //房间背景
  BehaviorSubject<String> roomImgStream = BehaviorSubject();

  String get roomImg => announcementStream.value ?? "";

  //房间用户数
  BehaviorSubject<int> userCountStream = BehaviorSubject();

  int get userCount => userCountStream.value ?? "0";

  ///当前所在的聊天室
  ///_chatRoom为null代表没有在聊天室
  BehaviorSubject<ChatRoom> chatRoomStream = BehaviorSubject();

  ///当前所在的房间
  ChatRoom get chatRoom => chatRoomStream.value;

  ///当前所在的聊天室
  ///_chatRoom为null代表没有在聊天室
  BehaviorSubject<NimEnterChatRoomResultData> nimEnterChatRoomResultDataStream =
      BehaviorSubject();

  ///当前所在的房间
  NimEnterChatRoomResultData get nimEnterChatRoomResultData =>
      nimEnterChatRoomResultDataStream.value;

  ///当前所在房间的用户
  ChatRoomUserInfo currentChatRoomUserInfo;

  String get currentChatRoomId => chatRoomStream?.value?.id;

  String get currentChatExternRoomId => chatRoomStream?.value?.externRoomId;

  ///房间的状态
  BehaviorSubject<InRoomState> inRoomStateStream = BehaviorSubject();

  InRoomState get inRoomState => inRoomStateStream?.value;

  ///当前本地是否打开扬声器
  ///[AllRemoteState.open]打开，可以听到其他人讲话
  ///[AllRemoteState.close]频闭，不可以听到其他人讲话
  BehaviorSubject<AllRemoteState> openAllRemoteStream = BehaviorSubject();

  ///当前是否正在该房间
  bool isInTheRoom(String roomId) => currentChatRoomId == roomId;

  //加入房间
  Future<ResultBody<bool>> joinRoom(ChatRoom chatRoom) async {
    if (currentChatRoomId == chatRoom.id) return ResultBody(true, data: true);
    inRoomStateStream.add(InRoomState.connecting);
    //离开当前的房间
    await leaveRoom();
    var body = await joinNim(chatRoom);
    if (body.isSuccess) {
      joinAgora();
    }
    return body;
  }

  ///加入声网频道
  void joinAgora() async {
    var account = AccountGlobal.instance.getAccount();
    var call;
    call = (channel, uid, elapsed) {
      AgoraGlobal.instance.enableLocalAudio(false);
      AgoraGlobal.instance.enableSpeakerphone(true);
      openAllRemote();
      AgoraGlobal.instance.removeJoinRoomSuccess(call);
    };
    AgoraGlobal.instance.addJoinRoomSuccess(call);
    await AgoraGlobal.instance.joinChannel(account, currentChatRoomId);
  }

  ///加入网易频道
  Future<ResultBody<bool>> joinNim(ChatRoom chatRoom) async {
    var account = AccountGlobal.instance.getAccount();
    var user = account.user;
    var chatRoomUserInfo = ChatRoomUserInfo(
        user.uid, user.name, user.avatar, user.lv, user.noble,
        gender: user.gender, userGrade: user.userGrade, invisible: true);
    String base64encode = chatRoomUserInfo.encode();
    var userInfo = {"USERINFO": base64encode};
    var entryChatRoom = EntryChatRoom(roomId: chatRoom.externRoomId)
      ..nick = user.name
      ..avatar = user.avatar.url
      ..extension = userInfo
      ..notifyExtension = userInfo;
    try {
      var nimEnterChatRoomResultData =
          await Nim.chatRoomService.entryChatRoom(entryChatRoom);

      ///初始化房间信息
      var body = await _checkAndinitChatRoomData(nimEnterChatRoomResultData);
      //如果检查加入房间结果不符合预期，那么返回错误
      if (!body.isSuccess) {
        return body;
      }
      nimEnterChatRoomResultDataStream.add(nimEnterChatRoomResultData);
      //加入网易成功
      currentChatRoomUserInfo = chatRoomUserInfo;
      //需要对网易返回的消息进行解析
      inRoomStateStream.add(InRoomState.connected);
      chatRoomStream.add(chatRoom);
      initController();
      return ResultBody(true, data: true);
    } catch (e, s) {
      return ResultBody(false, error: ResultError(e.message));
    }
  }

  ///初始化controller
  void initController() {
    seatController.bind(this);
    messageController.bind(this);
    userController..bind(this);
    seatController.initController(
        seatChangedHandler: messageController.addSeatChangedMessage);
    messageController.initController(
        newChatRoomMessageHandler: seatController.newChatRoomMessageHandler);
  }

  //检查并且初始化房间信息
  Future<ResultBody<bool>> _checkAndinitChatRoomData(
      NimEnterChatRoomResultData nimEnterChatRoomResultData) async {
    var info = nimEnterChatRoomResultData.info;
    //检查房间是否有效
    if (!info.isValid) {
      return ResultBody(false, error: ResultError("您正在进入一个无效的房间"));
    }
    //设置房主信息
    ownerIdStream.add(nimEnterChatRoomResultData.info.creator);
    //设置房间公告
    announcementStream.add(nimEnterChatRoomResultData.info.announcement);
    //设置房间的用户数
    userCountStream.add(nimEnterChatRoomResultData.info.onlineUserCount);

    //房间的扩展信息
    //房间背景
    var extension = ChatRoomExtensionInfo.fromString(
        nimEnterChatRoomResultData.info.extension['ext']);
    var theme = await RoomThemeMeta.instance.findTheme(extension.themeId);
    roomImgStream.add(theme.url);
    return ResultBody(true, data: true);
  }

  ///
  /// 离开房间
  Future<void> leaveRoom() async {
    seatController.unBind();
    messageController.unBind();
    userController.unBind();
    await _leaveNimRoom();
    await _leaveAgora();
    inRoomStateStream.add(InRoomState.connecting);
    chatRoomStream.add(null);
    ownerIdStream.add(null);
    roomImgStream.add(ChatRoomTheme.normal().url);
    currentChatRoomUserInfo = null;
  }

  ///离开网易频道
  void _leaveNimRoom() async {
    if (chatRoom?.externRoomId != null) {
      Nim.chatRoomService.leaveRoom(chatRoom?.externRoomId);
    }
  }

  ///离开声网频道
  void _leaveAgora() async {
    AgoraGlobal.instance.leaveChannel();
  }

  //接受远程的音频
  void openAllRemote() {
    AgoraGlobal.instance.muteAllRemoteAudioStreams(false);
    openAllRemoteStream.add(AllRemoteState.open);
  }

  //拒绝接受远程的音频
  void muteAllRemote() {
    AgoraGlobal.instance.muteAllRemoteAudioStreams(true);
    openAllRemoteStream.add(AllRemoteState.close);
  }
}

enum AllRemoteState { open, close }

enum InRoomState { connected, connecting, leave }
