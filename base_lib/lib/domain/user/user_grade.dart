import 'package:baselib/proto/peer_message.pbenum.dart';

class UserGrade {
  final String title;
  final int lv;
  final UserGradeCategory userGradeCategory;

  UserGrade(this.lv)
      : title = _title(lv),
        userGradeCategory = _userGradeCategory(lv);

  UserGrade.normal() : this(1);

  static String _title(int lv) {
    String title;
    switch (lv) {
      case 0:
        title = "未知用户";
        break;
      case 1:
        title = "普通用户";
        break;
      case 2:
        title = "陪陪";
        break;
      case 3:
        title = "红人";
        break;
      case 8:
        title = "超管";
        break;
    }
    return title;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is UserGrade &&
              runtimeType == other.runtimeType &&
              title == other.title &&
              lv == other.lv &&
              userGradeCategory == other.userGradeCategory;

  @override
  int get hashCode =>
      title.hashCode ^
      lv.hashCode ^
      userGradeCategory.hashCode;



  static _userGradeCategory(int lv) {
    UserGradeCategory userGradeCategory;
    switch (lv) {
      case 0:
        userGradeCategory = UserGradeCategory.NONE;
        break;
      case 1:
        userGradeCategory = UserGradeCategory.NOTBANBAN;
        break;
      case 2:
        userGradeCategory = UserGradeCategory.BANBAN;
        break;
      case 3:
        userGradeCategory = UserGradeCategory.STAR;
        break;
      case 8:
        userGradeCategory = UserGradeCategory.SUPERVISOR;
        break;
    }
    return userGradeCategory;
  }

  @override
  String toString() {
    return 'UserGrade{title: $title, lv: $lv, userGradeCategory: $userGradeCategory}';
  }

  PeerUserInfo_BanBanGrade toProto() {
    PeerUserInfo_BanBanGrade userGradeCategory;
    switch (lv) {
      case 0:
        userGradeCategory = PeerUserInfo_BanBanGrade.NONE;
        break;
      case 1:
        userGradeCategory = PeerUserInfo_BanBanGrade.NOT_BANBAN;
        break;
      case 2:
        userGradeCategory = PeerUserInfo_BanBanGrade.BANBAN;
        break;
      case 3:
        userGradeCategory = PeerUserInfo_BanBanGrade.STAR;
        break;
      case 8:
        userGradeCategory = PeerUserInfo_BanBanGrade.SUPERVISOR;
        break;
    }
    return userGradeCategory;
  }
}

enum UserGradeCategory { NONE, NOTBANBAN, BANBAN, STAR, SUPERVISOR }
