import 'package:baselib/domain/user/avatar.dart';
import 'package:baselib/domain/user/gender.dart';
import 'package:nim/contacts.dart';
import 'package:nim/login_info.dart';
import 'package:nim/nim.dart';
import 'package:nim/service/friend_service.dart';
import 'package:nim/service/conversation_service.dart';
import 'package:rxdart/rxdart.dart';

import 'contacts.dart';
import 'conversation.dart';

///
/// 联系人的全局类，
/// 默认没有加载好友，需要根据不同的加载时机自行调用init
///
/// 监听[contacts]即可
///
class FriendsGlobal {
  static FriendsGlobal get instance => _getInstance();
  static FriendsGlobal _instance;

  FriendsGlobal._internal() {
    contacts.add(null);
  }

  static FriendsGlobal _getInstance() {
    if (_instance == null) {
      _instance = new FriendsGlobal._internal();
    }
    return _instance;
  }

  BehaviorSubject<List<Contacts>> contacts = BehaviorSubject();
  List<Contacts> _contacts = [];

  //数据是否同步完成
  bool _synced = false;

  init() {
    Nim.friendService.observeFriendChangedNotify(_nimFriendChangedNotify);
    Nim.authService.observerNimLoginSyncDataStatus(_nimLoginSyncDataStatus);
  }

  void refreshContacts() => _getFriends();

  /**
   * 获取联系人
   */
  _getFriends() async {
    var friends = await Nim.friendService.getFriends();
    _contacts = friends.map(_nimContactsToContacts).toList();
    contacts.add(_contacts);
  }

  void _nimLoginSyncDataStatus(LoginSyncStatus loginSyncStatus) {
    if (loginSyncStatus == LoginSyncStatus.SYNC_COMPLETED) {
      _synced = true;
      _getFriends();
    } else {
      _synced = false;
    }
  }

  void _nimFriendChangedNotify(
      List<NimFriend> addFriends, List<String> deletedFriends) async {
    if (_synced) {
      if (addFriends.isNotEmpty) {
        var newContacts = await Nim.friendService
            .getUserInfoList(addFriends.map((e) => e.account).toList());
        _contacts.insertAll(
            0, newContacts.map(_nimContactsToContacts).toList());
      }

      if (deletedFriends.isNotEmpty) {
        deletedFriends.forEach((account) {
          _contacts.removeWhere((element) => element.contactsId == account);
        });
      }
      contacts.add(_contacts);
    }
  }
}

///
/// 会话消息的全局类
///
/// 同样不会自动去初始化，需要在合适的时机自己去调用init方法
///
class ConversationGlobal {
  static ConversationGlobal get instance => _getInstance();
  static ConversationGlobal _instance;

  ConversationGlobal._internal() {
    unReadCount.add(0);
    conversations.add(null);
  }

  static ConversationGlobal _getInstance() {
    if (_instance == null) {
      _instance = new ConversationGlobal._internal();
    }
    return _instance;
  }

  BehaviorSubject<List<Conversation>> conversations = BehaviorSubject();
  BehaviorSubject<int> unReadCount = BehaviorSubject();
  List<Conversation> _conversation = [];

  //数据是否同步完成
  bool _synced = false;

  init() {
    Nim.conversationService
        .observeRecentContactNotify(_observeRecentContactNotify);

    Nim.authService.observerNimLoginSyncDataStatus(_nimLoginSyncDataStatus);
  }

  //监听资料同步情况
  void _nimLoginSyncDataStatus(LoginSyncStatus loginSyncStatus) {
    if (loginSyncStatus == LoginSyncStatus.SYNC_COMPLETED) {
      _synced = true;
      _getRecents();
    } else {
      _synced = false;
    }
  }

  _observeRecentContactNotify(List<NimRecent> nimRecents) async {
    if (_synced) {
      var list = await _buildConversations(nimRecents);
      list.forEach((element) {
        _conversation.removeWhere((element2) =>
            element.contacts.contactsId == element2.contacts.contactsId);
      });
      list.sort(_sort);
      _conversation.insertAll(0, list);
      conversations.add(_conversation);
      var unRead = await Nim.conversationService.getTotalUnreadCount();
      unReadCount.add(unRead);
    }
  }

  //查询所有的会话
  void _getRecents() async {
    var recents = await Nim.conversationService.queryRecentContacts();
    _conversation = await _buildConversations(recents);
    conversations.add(_conversation);
  }

  Future<List<Conversation>> _buildConversations(
      List<NimRecent> recents) async {
    var userInfos = {};
    (await Nim.friendService
            .getUserInfoList(recents.map((e) => e.contactId).toList()))
        .forEach((element) {
      userInfos[element.contactsId] = element;
    });

    var _conversation = recents.map((e) {
      var userInfo = userInfos[e.contactId];
      if (userInfo == null) return null;
      return Conversation(
          _nimRecentToConversationContent(e), _nimContactsToContacts(userInfo));
    }).toList();
    _conversation.removeWhere((element) => element == null);
    _conversation.sort(_sort);
    var unRead = await Nim.conversationService.getTotalUnreadCount();
    unReadCount.add(unRead);
    return _conversation;
  }

  ///
  /// 对会话进行排序
  ///
  int _sort(Conversation a, Conversation b) {
    if (a.content.time > b.content.time) {
      return -1;
    } else if (a.content.time < b.content.time) {
      return 1;
    } else {
      return 0;
    }
  }

  void refreshConversations() => _getRecents();
}

//网易接口数据转换为上层Contacts
Contacts _nimContactsToContacts(NimContacts nimContacts) {
  var gender = nimContacts.gender == 1 ? Gender("M") : Gender("F");
  var avatar = gender.isMale
      ? Avatar.Male(nimContacts.avatar)
      : Avatar.Female(nimContacts.avatar);
  return Contacts(
      nimContacts.birthday,
      nimContacts.signature,
      nimContacts.email,
      nimContacts.extension,
      nimContacts.mobile,
      nimContacts.name,
      nimContacts.contactsId,
      avatar,
      gender);
}

//网易接口数据转换为上层[ConversationContent]
ConversationContent _nimRecentToConversationContent(NimRecent recent) {
  return ConversationContent(recent.content, recent.recentMessageId,
      recent.sessionType, recent.time, recent.unreadCount);
}
