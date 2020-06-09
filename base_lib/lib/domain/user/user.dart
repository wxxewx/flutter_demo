
import 'package:baselib/domain/audio.dart';
import 'package:baselib/domain/location.dart';
import 'package:baselib/domain/skill.dart';

import 'user_domain.dart';

///基础版
class BasicUser {
  String uid;
  String name;
  Gender gender;
  int age;
  Avatar avatar;
  Noble noble;
  Lv lv;

  BasicUser(this.uid, this.name, this.gender, this.age, this.avatar, this.noble,
      this.lv);

  @override
  String toString() {
    return 'BasicUser{uid: $uid, name: $name, gender: $gender, age: $age, avatar: $avatar, noble: $noble, lv: $lv}';
  }
}

///完整版的用户
class User {
  String uid;
  String name;
  Gender gender;
  int age;
  Avatar avatar;
  String greatNum;
  Noble noble;
  Lv lv;
  Location location;
  String declaration;
  Audio audio;
  List<Skill> skills;
  int fans;
  int follows;
  UserGrade userGrade;
  String lastLogin;
  bool online;
  bool chating;
  bool freshMan;
  String chatroomId;
  String roomTitle;

  User(this.uid, this.name, this.gender, this.age, this.avatar,
      this.noble, this.lv,
      {greatNum,
      location,
      declaration,
      audio,
      skills,
      fans,
      follows,
      banbanGrade,
      lastLogin,
      online,
      chating,
      freshMan,
      chatroomId,
      roomTitle})
      : greatNum = (greatNum == null || greatNum == "") ? "未知" : greatNum,
        location = location ?? Location.Unknown(),
        declaration = declaration ?? "",
        audio = audio ?? Audio(null),
        skills = skills ?? List<Skill>(),
        fans = fans ?? 0,
        follows = follows ?? 0,
        userGrade = banbanGrade ?? UserGrade(1),
        lastLogin = lastLogin,
        online = online ?? false,
        chating = chating ?? false,
        freshMan = freshMan ?? false,
        chatroomId = chatroomId ?? "0",
        roomTitle = roomTitle ?? "";

  @override
  String toString() {
    return 'User{uid: $uid, name: $name, gender: $gender, age: $age, avatar: $avatar, greatNum: $greatNum, noble: $noble, lv: $lv, location: $location, declaration: $declaration, audio: $audio, skill: $skills, fans: $fans, follows: $follows, banbanGrade: $userGrade, lastLogin: $lastLogin, online: $online, chating: $chating, freshMan: $freshMan, chatroomId: $chatroomId, roomTitle: $roomTitle}';
  }
}
