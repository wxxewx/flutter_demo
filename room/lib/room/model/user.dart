import 'dart:convert';

import 'package:baselib/domain/user/user_domain.dart';
import 'package:baselib/proto/peer_message.pb.dart';

class ChatRoomUserInfo {
  String userId;
  String nickName;
  Avatar avatar;
  Lv lv;
  Noble noble;
  Gender gender;
  bool invisible;
  UserGrade userGrade;

  ChatRoomUserInfo.Name(nickName)
      : this("0", nickName, Avatar.Male(""), Lv(0), Noble.None());

  ChatRoomUserInfo(this.userId, this.nickName, this.avatar, this.lv, this.noble,
      {userGrade, invisible, gender})
      : this.invisible = invisible ?? false,
        this.gender = gender ?? Gender('F'),
        this.userGrade = userGrade ?? UserGrade.normal();

  @override
  String toString() {
    return 'ChatRoomUserInfo{userId: $userId, nickName: $nickName, avatar: $avatar, lv: $lv, noble: $noble, gender: $gender, invisible: $invisible, userGrade: $userGrade}';
  }

  static ChatRoomUserInfo fromString(String s, {nick}) {
    if (s == null || s.isEmpty) {
      return ChatRoomUserInfo.Name(nick ?? "游客");
    }
    try {
      var uint8list = base64Decode(s);
      var userInfo = PeerUserInfo.fromBuffer(uint8list);
      var gender = Gender(userInfo.gender);
      var avatar = Avatar(userInfo.avatar, gender: gender);
      var noble = Noble(userInfo.noble.level, userInfo.noble.title);
      var userGrade = UserGrade(userInfo.banbanGrade.value);
      var chatRoomUserInfo = ChatRoomUserInfo(userInfo.userId,
          userInfo.nickName, avatar, Lv(userInfo.vip.level), noble,
          userGrade: userGrade,
          gender: gender,
          invisible: userInfo.hideWelcomeNotification);
      return chatRoomUserInfo;
    } catch (e) {
      return ChatRoomUserInfo.Name(nick ?? "游客");
    }
  }

  String encode() {
    var peerUserInfo = PeerUserInfo.create()
      ..userId = userId
      ..nickName = nickName
      ..avatar = avatar.url
      ..vip = lv.toProto()
      ..noble = noble.toProto()
      ..gender = gender.des
      ..banbanGrade = userGrade.toProto()
      ..hideWelcomeNotification = invisible;
    var base64encode = base64Encode(peerUserInfo.writeToBuffer());
    return base64encode;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ChatRoomUserInfo &&
              runtimeType == other.runtimeType &&
              userId == other.userId &&
              nickName == other.nickName &&
              avatar == other.avatar &&
              lv == other.lv &&
              noble == other.noble &&
              gender == other.gender &&
              invisible == other.invisible &&
              userGrade == other.userGrade;

  @override
  int get hashCode =>
      userId.hashCode ^
      nickName.hashCode ^
      avatar.hashCode ^
      lv.hashCode ^
      noble.hashCode ^
      gender.hashCode ^
      invisible.hashCode ^
      userGrade.hashCode;




}
