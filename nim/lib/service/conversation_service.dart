import 'package:flutter/src/services/platform_channel.dart';
import 'package:nim/call_back.dart';
import 'package:nim/service/service.dart';
import 'package:nim/nim.dart';
import 'package:nim/types/msg_status.dart';
import 'package:nim/types/msg_type.dart';
import 'package:nim/types/sesion_type.dart';

class ConversationService extends IService {
  ConversationService(MethodChannel channel) : super(channel);

  List<RecentChangedNotify> _recentChangedNotifys = [];

  @override
  void init() {
    channel.invokeMethod("observeRecentContact", true);
  }

  void observeRecentContactNotify(RecentChangedNotify recentChangedNotify) {
    _recentChangedNotifys.add(recentChangedNotify);
  }

  void removeRecentContactNotify(RecentChangedNotify recentChangedNotify) {
    _recentChangedNotifys.remove(recentChangedNotify);
  }

  ///
  /// 获取最近的会话列表
  Future<List<NimRecent>> queryRecentContacts() async {
    var list = await channel.invokeMethod<List>("queryRecentContacts");
    var recents = list.map(_parseRecent).toList();
    return recents;
  }

  ///
  /// 当最近的会话发生变更时，会收到回调
  ///
  void recentsChanged(arguments) {
    if (arguments is List) {
      var newRecents = arguments.map(_parseRecent).toList();
      _recentChangedNotifys.forEach((element) {
        element(newRecents);
      });
    }
  }

  ///查询未读消息
  Future<int> getTotalUnreadCount() async {
    return await channel.invokeMethod<int>("getTotalUnreadCount");
  }

  NimRecent _parseRecent(e) {
    var map = e as Map;
    var contactId = map["contactId"];
    var content = map["content"];
    var fromAccount = map["fromAccount"];
    var fromNick = map["fromNick"];
    var recentMessageId = map["recentMessageId"];
    var extension = map["extension"];
    var tag = map["tag"];
    var msgType = createMsgType(map["msgType"]);
    var msgStatus = createMsgStatus(map["msgStatus"]);
    var sessionType = createSessionType(map["sessionType"]);
    var time = map["time"];
    var unreadCount = map["unreadCount"];
    var attachment = map["attachment"];
    return NimRecent(
        contactId,
        content,
        fromNick,
        fromAccount,
        recentMessageId,
        extension,
        tag,
        msgType,
        msgStatus,
        sessionType,
        time,
        unreadCount,
        attachment);
  }
}

///最近的会话
class NimRecent {
  final String contactId;
  final String content;
  final String fromNick;
  final String fromAccount;
  final String recentMessageId;
  final Map extension;
  final int tag;
  final MsgType msgType;
  final MsgStatus msgStatus;
  final SessionType sessionType;
  final int time;
  final int unreadCount;
  final String attachment;

  NimRecent(
      this.contactId,
      this.content,
      this.fromNick,
      this.fromAccount,
      this.recentMessageId,
      this.extension,
      this.tag,
      this.msgType,
      this.msgStatus,
      this.sessionType,
      this.time,
      this.unreadCount,
      this.attachment);
}
