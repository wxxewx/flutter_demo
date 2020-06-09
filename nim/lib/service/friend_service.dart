import 'package:flutter/src/services/platform_channel.dart';
import 'package:nim/call_back.dart';
import 'package:nim/contacts.dart';
import 'package:nim/service/service.dart';

class FriendService extends IService {
  FriendService(MethodChannel channel) : super(channel);

  List<FriendChangedNotify> _friendChangedNotifys = [];

  @override
  void init() {
    channel.invokeMethod("observeFriendChangedNotify", true);
  }

  void observeFriendChangedNotify(FriendChangedNotify friendChangedNotify) {
    _friendChangedNotifys.add(friendChangedNotify);
  }

  void removerFriendChangedNotify(FriendChangedNotify friendChangedNotify) {
    _friendChangedNotifys.remove(friendChangedNotify);
  }

  ///获取联系人账号
  Future<List<NimContacts>> getFriends() async {
    var accounts =
        await channel.invokeMethod<List<dynamic>>("getFriendAccounts");
    return await getUserInfoList(accounts);
  }

  ///查询联系人
  Future<List<NimContacts>> getUserInfoList(List accounts) async {
    if (accounts == null || accounts.isEmpty) return List();
    var users =
        await channel.invokeMethod<List<dynamic>>("getUserInfoList", accounts);
    var contacts = users.map((user) {
      return NimContacts(
          user["birthday"],
          user["signature"],
          user["email"],
          user["extension"],
          user["mobile"],
          user["name"],
          user["account"],
          user["avatar"],
          user["gender"]);
    }).toList();
    return contacts;
  }

  void friendsChanged(arguments) {
    if (arguments == null) return;
    if (arguments is Map) {
      var addFriends = arguments["addFriends"] as List;
      var deletedFriends = arguments["deletedFriends"] as List;
      _friendChangedNotifys.forEach((element) {
        var adds = addFriends.map((e) {
          var map = e as Map;
          return NimFriend(map["account"], map["alias"], map["serverExtension"],
              map["extension"]);
        }).toList();
        var deletes = deletedFriends.map((e) {
          return e as String;
        }).toList();
        element?.call(adds, deletes);
      });
    }
  }
}

class NimFriend {
  final String account;
  final String alias;
  final String serverExtension;
  final Map extension;

  NimFriend(this.account, this.alias, this.serverExtension, this.extension);
}
