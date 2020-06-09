import 'package:baselib/api/url/url.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/domain/location.dart';
import 'package:baselib/domain/user/user_domain.dart';
import 'package:baselib/meta/noble.dart';
import 'package:baselib/proto/user_message.pb.dart';
import 'package:common_utils/common_utils.dart';

import 'country.dart';
import 'model.dart';

/**
 * 登录
 */
Future<ResultBody<Account>> loginService(
    String phone, String code, Country country,
    {String openId}) {
  var loginReq = LoginReq.create()
    ..phone = phone
    ..smsCode = code
    ..country = country.code;
  if (openId != null) {
    loginReq..openId = openId;
  }
  return App.mainRequest.post<Account, LoginReq>(BeesApi.LOGIN, loginReq,
          (byte) async {
        var loginResp = LoginResp.fromBuffer(byte);
        if (loginResp.code == LoginResp_STATUS.OK) {
          LogUtil.e(loginResp.toString(), tag: "loginService");
          var split = loginResp.user.location.split(" ");
          var location;
          if (split.length >= 2) {
            location = Location.Province_City(split[0], split[1]);
          } else {
            location = Location.City(loginResp.user.location);
          }
          var nobles = await NobleMeta.instance.get();
          var noble = Noble.buildNoble(
              loginResp.user.noble, nobles,name: loginResp.user.nobleName);

          var gender = Gender(loginResp.user.gender);
          var avatar = gender.isMale
              ? Avatar.Male(loginResp.user.avatar)
              : Avatar.Female(loginResp.user.avatar);

          var user = User(loginResp.user.uid, loginResp.user.name, gender,
              loginResp.user.age, avatar, noble, Lv(loginResp.user.vip),
              location: location,
              fans: loginResp.user.fans,
              follows: loginResp.user.follows,
              greatNum: (loginResp.user.greatNum == null ||
                  loginResp.user.greatNum == "" ||
                  loginResp.user.greatNum == "None")
                  ? ""
                  : loginResp.user.greatNum,
              banbanGrade: UserGrade(loginResp.user.banbanGrade),
              lastLogin: loginResp.user.lastLogin);
          var account = Account(loginResp.user.uid, loginResp.token,
              user: user, phone: loginResp.phone);
          return ResultBody(true, data: account);
        } else {
          var errorMsg;
          switch (loginResp.code) {
            case LoginResp_STATUS.SMS_ERROR:
              errorMsg = "验证码错误";
              break;
            case LoginResp_STATUS.SMS_TIMEOUT:
              errorMsg = "验证码已过期";
              break;
            case LoginResp_STATUS.USER_INVALID:
              errorMsg = "用户不存在";
              break;
            case LoginResp_STATUS.BIND_OPENID_FAILED:
              errorMsg = "该微信已绑定其他账号";
              break;
            default:
              errorMsg = "登录异常，请联系客服。code: ${loginResp.code}";
              break;
          }
          return ResultBody(false, error: ResultError(errorMsg));
        }
      });
}


/**
 * 发送验证码
 */
Future<ResultBody<RegisterStatus>> getSms(String phone, Country country) {
  var smsCodeReq = SmsCodeReq.create()
    ..phone = phone
    ..country = country.code;
  return App.mainRequest.post<RegisterStatus, SmsCodeReq>(
      BeesApi.SMS_CODE, smsCodeReq, (byte) async {
    var smsCodeResp = SmsCodeResp.fromBuffer(byte);
    if (smsCodeResp.status == SmsCodeResp_STATUS.OK) {
      return ResultBody(true,
          data: RegisterStatus(smsCodeResp.registered, smsCodeResp.uid));
    } else {
      return ResultBody(false,
          error: ResultError(smsCodeResp.status.toString()));
    }
  });
}
