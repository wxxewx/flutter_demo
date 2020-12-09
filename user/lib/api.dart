import 'package:baselib/api/url/bees.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/domain/audio.dart';
import 'package:baselib/domain/location.dart';
import 'package:baselib/domain/user/lv.dart';
import 'package:baselib/domain/user/noble.dart';
import 'package:baselib/domain/user/status.dart';
import 'package:baselib/domain/user/user_domain.dart';
import 'package:baselib/meta/noble.dart';
import 'package:baselib/proto/user_message.pb.dart';
import 'package:user/model.dart';

///获取用户详情
Future<ResultBody<Profile>> getUserProfile(
    Account account, String userId) async {
  var req = HomePageReq.create()
    ..srcUid = account.userId
    ..tgtUid = userId;

  return App.mainRequest.post<Profile, HomePageReq>(BeesApi.HOME_PAGE, req,
      (byte) async {
    var pageResp = HomePageResp.fromBuffer(byte);
    var gifts = pageResp.gifts
        .map((e) => Gift(e.id, e.icon, e.amount, e.title, e.badge)).toList();
    var personal = pageResp.personal;
    var nobles = await NobleMeta.instance.get();
    var location = Location.City(personal.location);
    var lv = Lv(personal.vip);
    var noble = Noble.buildNoble(personal.noble, nobles);
    var gender = Gender(personal.gender);
    var avatar = Avatar(personal.avatar, gender: gender);
    var audio = Audio(personal.audio, duration: personal.audioDuration);
    var userGrade = UserGrade(personal.banbanGrade);
    var userStatus = decodeUserStatusfromString(personal.online);
    var profileInfo = ProfileInfo(personal.uid, personal.name,
        gender: gender,
        age: personal.age,
        audio: audio,
        avatar: avatar,
        birth: personal.birth,
        career: personal.career,
        declaration: personal.declaration,
        fans: personal.fans,
        follows: personal.follows,
        greatNum: personal.greatNum,
        imgUrls: personal.imgUrls,
        lastLogin: personal.lastLogin,
        location: location,
        lv: lv,
        noble: noble,
        online: userStatus,
        roomId: personal.roomId ?? "",
        roomTitle: personal.roomTitle ?? "",
        star: personal.star,
        userGrade: userGrade,
        yesterdayFans: personal.yesterdayFans);
    var profile = Profile(pageResp.totalGift, pageResp.hobby, pageResp.showIds,
        gifts, pageResp.followed, profileInfo);

    return ResultBody(true, data: profile);
  });
}
