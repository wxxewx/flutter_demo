import 'package:nim/login_info.dart';
import 'package:nim/service/chatroom_service.dart';
import 'package:nim/service/conversation_service.dart';
import 'package:nim/service/friend_service.dart';

import 'error.dart';

typedef LoginSuccessCall(NimLoginInfo nimLoginInfo);
typedef LoginErrorCall(NimError nimError);

typedef LoginStatusCall(NimLoginStatus nimLoginStatus);
typedef SyncDataStatusCall(LoginSyncStatus loginSyncStatus);

typedef FriendChangedNotify(
    List<NimFriend> addFriends, List<String> deletedFriends);

typedef RecentChangedNotify(List<NimRecent> nimRecents);

typedef void ChatRoomMessageReceive(NimChatRoomMessage nimChatRoomMessage);
