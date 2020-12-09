import 'package:baselib/domain/audio.dart';
import 'package:baselib/domain/location.dart';
import 'package:baselib/domain/user/status.dart';
import 'package:baselib/domain/user/user_domain.dart';

class Profile {
  final int totalGift;
  final List<int> hobbys;

  final List<int> showIds;
  final List<Gift> gifts;

  final bool followed;

  final ProfileInfo info;

  Profile(this.totalGift, this.hobbys, this.showIds, this.gifts, this.followed,
      this.info);
}

class Gift {
  final String id;

  final String icon;

  final int amount;

  final String title;

  final String badge;

  Gift(this.id, this.icon, this.amount, this.title, this.badge);
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
}
