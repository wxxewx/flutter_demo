import 'dart:core';

import 'package:flutter/src/services/platform_channel.dart';
import 'package:nim/call_back.dart';
import 'package:nim/login_info.dart';
import 'package:nim/service/service.dart';
import 'package:nim/types.dart';
import 'package:nim/types/msg_type.dart';
import 'package:nim/types/notification_type.dart';

class ChatRoomService extends IService {
  ChatRoomService(MethodChannel channel) : super(channel);

  List<ChatRoomMessageReceive> _receives = [];

  @override
  void init() {
    channel.invokeMethod("observeMessages", true);
  }

  //发送文字消息
  Future<bool> sentChatRoomMsg(String msg, String roomId) async {
    var success = await channel
        .invokeMethod<bool>("sentChatRoomMsg", {'roomId': roomId, 'msg': msg});
    return success;
  }

  ///加入聊天室
  Future<NimEnterChatRoomResultData> entryChatRoom(
      EntryChatRoom entryChatRoom) async {
    var arguments = {
      "roomId": entryChatRoom.roomId,
      "nick": entryChatRoom.nick,
      "avatar": entryChatRoom.avatar,
      "extension": entryChatRoom.extension,
      "notifyExtension": entryChatRoom.notifyExtension,
    };

    var map = await channel.invokeMethod<Map>('entryChatRoom', arguments);

    var info = map['info'];
    var member = map['member'];
    var roomInfo = NimRoomInfo(
        roomId: info["roomId"],
        name: info["name"],
        broadcastUrl: info["broadcastUrl"],
        announcement: info["announcement"],
        extension: info["extension"],
        creator: info["creator"],
        isMuted: info["mute"],
        isValid: info["validFlag"],
        queueLevel: info["queueLevel"],
        onlineUserCount: info["onlineUserCount"]);

    var memberInfo = NimMemberInfo(
        roomId: member["roomId"],
        type: createMemberType(member["type"]),
        account: member["account"],
        nick: member["nick"],
        avatar: member["avatar"],
        extension: member["extension"],
        isOnline: member["isOnline"],
        inBlackList: member["inBlackList"],
        isMuted: member["isMuted"],
        isValid: member["isValid"],
        memberLevel: member["memberLevel"],
        enterTime: member["enterTime"],
        updateTime: member["updateTime"],
        tempMuteDuration: member["tempMuteDuration"]);

    var status = NimLoginStatusType.INVALID;
    NimLoginStatusType.values.forEach((element) {
      if (element.index == map["status"]) {
        status = element;
      }
    });

    var enterChatRoomResultData = NimEnterChatRoomResultData(
        roomId: map["roomId"],
        account: map["account"],
        resCode: map["resCode"],
        statusType: status,
        member: memberInfo,
        info: roomInfo);
    return enterChatRoomResultData;
  }

  ///获取房间的队列
  Future<Map> fetchQueue(String externRoomId) async {
    var map = await channel.invokeMethod<Map>("fetchQueue", externRoomId);
    return map;
  }

  //离开房间
  void leaveRoom(String externRoomId) async {
    channel.invokeMethod("leaveRoom", externRoomId);
  }

  //房间消息变更通知
  void addChatRoomMessageCall(ChatRoomMessageReceive chatRoomMessageReceive) {
    _receives.add(chatRoomMessageReceive);
  }

  //房间消息变更通知
  void removeChatRoomMessageCall(
      ChatRoomMessageReceive chatRoomMessageReceive) {
    _receives.remove(chatRoomMessageReceive);
  }

  ///处理接受到的聊天室消息
  void receiveMessage(arguments) {
    var map = arguments as Map;
    var msgType = createMsgType(map["msgType"]);
    var senderNick = map["senderNick"];
    var senderAvatar = map["senderAvatar"];
    var senderExtension = map["senderExtension"];
    var remoteExtension = map["remoteExtension"];
    var fromAccount = map["fromAccount"];
    var content = map["content"];
    var attachStr = map["attachStr"];
    Map attachment = map["attachment"];
    print(attachment);
    var roomAttachment = NimChatRoomAttachment(
        attachment['extension'],
        createNotificationType(attachment['type']),
        attachment['operator'],
        attachment['operatorNick'],
        attachment['targets'],
        attachment['targetNicks']);

    var nimChatRoomMessage = NimChatRoomMessage(
        msgType,
        senderNick,
        senderAvatar,
        senderExtension,
        remoteExtension,
        fromAccount,
        roomAttachment,
        content,
        attachStr);
    _receives.forEach((element) {
      element.call(nimChatRoomMessage);
    });
  }
}

class NimChatRoomAttachment {
  final Map extension;
  final NotificationType type;
  final String operator;
  final String operatorNick;
  final List targets;
  final List targetNicks;

  NimChatRoomAttachment(this.extension, this.type, this.operator,
      this.operatorNick, this.targets, this.targetNicks);

  @override
  String toString() {
    return 'NimChatRoomAttachment{extension: $extension, type: $type, operator: $operator, operatorNick: $operatorNick, targets: $targets, targetNicks: $targetNicks}';
  }
}

class NimChatRoomMessage {
  final MsgType msgType;
  final String senderNick;
  final String senderAvatar;
  final Map senderExtension;
  final Map remoteExtension;
  final String fromAccount;
  final NimChatRoomAttachment attachment;
  final String content;
  final String attachStr;

  NimChatRoomMessage(
      this.msgType,
      this.senderNick,
      this.senderAvatar,
      this.senderExtension,
      this.remoteExtension,
      this.fromAccount,
      this.attachment,
      this.content,
      this.attachStr);

  @override
  String toString() {
    return 'NimChatRoomMessage{msgType: $msgType, senderNick: $senderNick, senderAvatar: $senderAvatar, senderExtension: $senderExtension, remoteExtension: $remoteExtension, fromAccount: $fromAccount, content: $content, attachStr: $attachStr}';
  }
}

class NimEnterChatRoomResultData {
  String roomId;
  String account;
  int resCode;
  NimLoginStatusType statusType;
  NimMemberInfo member;
  NimRoomInfo info;



  NimEnterChatRoomResultData(
      {this.roomId,
      this.account,
      this.resCode,
      this.statusType,
      this.member,
      this.info});
}

class NimRoomInfo {
  String roomId;
  String name;
  String broadcastUrl;
  String announcement;
  Map extension;
  String creator;
  bool isMuted;
  bool isValid;
  int onlineUserCount;
  int queueLevel;


  NimRoomInfo(
      {this.roomId,
      this.name,
      this.broadcastUrl,
      this.announcement,
      this.extension,
      this.creator,
      this.isMuted,
      this.isValid,
      this.onlineUserCount,
      this.queueLevel});
}

class NimMemberInfo {
  String roomId;
  String account;
  String nick;
  String avatar;
  Map extension;
  bool isOnline;
  bool inBlackList;
  bool isMuted;
  bool isValid;
  int memberLevel;
  MemberType type;
  int enterTime;
  int updateTime;
  int tempMuteDuration;

  NimMemberInfo(
      {this.roomId,
      this.account,
      this.nick,
      this.avatar,
      this.extension,
      this.isOnline,
      this.inBlackList,
      this.isMuted,
      this.isValid,
      this.memberLevel,
      this.type,
      this.enterTime,
      this.updateTime,
      this.tempMuteDuration});
}

///加入聊天室的参数
class EntryChatRoom {
  String roomId;
  String nick;
  String avatar;
  Map extension;
  Map notifyExtension;

  EntryChatRoom(
      {this.roomId,
      this.nick,
      this.avatar,
      this.extension,
      this.notifyExtension});
}

/**
 * 聊天室成员角色类型
 */
enum MemberType {
  /**
   * 未知
   */
  UNKNOWN,

  /**
   * 游客
   */
  GUEST,

  /**
   * 受限用户（非游客）= 被禁言 + 被拉黑的用户
   */
  LIMITED,

  /**
   * 普通成员（非游客）
   */
  NORMAL,

  /**
   * 创建者（非游客）
   */
  CREATOR,

  /**
   * 管理员（非游客）
   */
  ADMIN,

  /**
   * 匿名游客
   */
  ANONYMOUS
}

MemberType createMemberType(int member) {
  var type;
  switch (member) {
    case -1000:
      type = MemberType.UNKNOWN;
      break;
    case -2:
      type = MemberType.GUEST;
      break;
    case -1:
      type = MemberType.LIMITED;
      break;
    case 0:
      type = MemberType.NORMAL;
      break;
    case 1:
      type = MemberType.CREATOR;
      break;
    case 2:
      type = MemberType.ADMIN;
      break;
    case 4:
      type = MemberType.ANONYMOUS;
      break;
  }
  return type;
}
