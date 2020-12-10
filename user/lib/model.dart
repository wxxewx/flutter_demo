import 'package:baselib/domain/audio.dart';
import 'package:baselib/domain/location.dart';
import 'package:baselib/domain/user/status.dart';
import 'package:baselib/domain/user/user_domain.dart';
import 'package:baselib/meta/hobby.dart';

class Profile {
  final int totalGift;
  final List<Hobby> hobbys;

  final List<int> showIds;
  final List<Gift> gifts;

  final bool followed;

  final ProfileInfo info;

  Profile(this.totalGift, this.hobbys, this.showIds, this.gifts, this.followed,
      this.info);

  @override
  String toString() {
    return 'Profile{totalGift: $totalGift, hobbys: $hobbys, showIds: $showIds, gifts: $gifts, followed: $followed, info: $info}';
  }
}

class Gift {
  final String id;

  final String icon;

  final int amount;

  final String title;

  final String badge;

  Gift(this.id, this.icon, this.amount, this.title, this.badge);

  @override
  String toString() {
    return 'Gift{id: $id, icon: $icon, amount: $amount, title: $title, badge: $badge}';
  }
}

class ProfileInfo {
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
  String birth;
  String star;
  String career;
  List<String> imgUrls;
  Audio audio;
  int fans;
  int yesterdayFans;
  int follows;
  UserGrade userGrade;
  String lastLogin;
  UserStatus online;
  String roomId;
  String roomTitle;

  ProfileInfo(this.uid, this.name,
      {this.gender,
      this.age,
      this.avatar,
      this.greatNum,
      this.noble,
      this.lv,
      this.location,
      this.declaration,
      this.birth,
      this.star,
      this.career,
      this.imgUrls,
      this.audio,
      this.fans,
      this.yesterdayFans,
      this.follows,
      this.userGrade,
      this.lastLogin,
      this.online,
      this.roomId,
      this.roomTitle});

  @override
  String toString() {
    return 'ProfileInfo{uid: $uid, name: $name, gender: $gender, age: $age, avatar: $avatar, greatNum: $greatNum, noble: $noble, lv: $lv, location: $location, declaration: $declaration, birth: $birth, star: $star, career: $career, imgUrls: $imgUrls, audio: $audio, fans: $fans, yesterdayFans: $yesterdayFans, follows: $follows, userGrade: $userGrade, lastLogin: $lastLogin, online: $online, roomId: $roomId, roomTitle: $roomTitle}';
  }
}
