import 'package:baselib/api/url/url.dart';
import 'package:baselib/api/url/bees.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/domain/location.dart';
import 'package:baselib/domain/user/user_domain.dart';
import 'package:baselib/meta/noble.dart';
import 'package:baselib/proto/user_message.pb.dart';

/**
 * 获取用户信息
 */
Future<ResultBody<User>> getUserOverview(String userId, Account account) {
  var req = UserOverviewReq.create()
    ..token = account.token
    ..srcUid = account.userId
    ..dstUid = userId;
  return App.mainRequest.post<User, UserOverviewReq>(BeesApi.USER_OVERVIEW, req,
      (byte) async {
    var resp = UserOverviewResp.fromBuffer(byte);
    if (resp.status == UserOverviewResp_STATUS.OK) {
      var user = resp.user;
      var uid = user.uid;
      var name = user.name;
      var age = user.age;
      var gender = Gender(user.gender);
      var nobles = await NobleMeta.instance.get();
      var noble = Noble.buildNoble( user.noble, nobles,name: user.nobleName);
      var avatar =
          gender.isMale ? Avatar.Male(user.avatar) : Avatar.Female(user.avatar);
      var userGrade = UserGrade(user.banbanGrade);
      var split = user.location.split(" ");
      var location;
      if (split.length >= 2) {
        location = Location.Province_City(split[0], split[1]);
      } else {
        location = Location.City(user.location);
      }
      var lv = Lv(user.vip);
      var greatNum = (user.greatNum == null ||
              user.greatNum == "" ||
              user.greatNum == "None")
          ? ""
          : user.greatNum;

      var fans = user.fans;
      var follows = user.follows;
      var lastLogin = user.lastLogin;
      var completeUser = User(
        uid,
        name,
        gender,
        age,
        avatar,
        noble,
        lv,
        greatNum: greatNum,
        location: location,
        fans: fans,
        banbanGrade: userGrade,
        follows: follows,
        lastLogin: lastLogin,
      );
      return ResultBody(true, data: completeUser);
    } else {
      return ResultBody(false, error: ResultError(resp.status.toString()));
    }
  });
}
