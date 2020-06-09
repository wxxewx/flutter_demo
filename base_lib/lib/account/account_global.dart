import 'package:baselib/agora/agora.dart';
import 'package:baselib/api/bees.dart';
import 'package:baselib/api/umbrella.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/im/im_global.dart';
import 'package:baselib/utils/key_value_cache.dart';
import 'package:common_utils/common_utils.dart';
import 'package:nim/login_info.dart';
import 'package:nim/nim.dart';
import 'package:rxdart/rxdart.dart';

class AccountGlobal {
  static AccountGlobal get instance => _getInstance();
  static AccountGlobal _instance;

  AccountGlobal._internal() {}

  static AccountGlobal _getInstance() {
    if (_instance == null) {
      _instance = new AccountGlobal._internal();
    }
    return _instance;
  }

  static const PHONE_KEY = "phone";
  static const TOKEN_KEY = "token";
  static const USERID_KEY = "userId";

  ///当前的账户信息
  BehaviorSubject<Account> account = BehaviorSubject();
  Account _account;

  ///账户状态
  BehaviorSubject<LoginInfo> accountStatus = BehaviorSubject();

  Account getAccount() {
    return _account;
  }

  /**
   * 自动登录
   */
  Future autoLogin() async {
    accountStatus.add(LoginInfo.LOGGING_IN());
    var phone = await getString(PHONE_KEY);
    var token = await getString(TOKEN_KEY);
    var userId = await getString(USERID_KEY);
    if (phone == null || token == null || userId == null) {
      accountStatus.add(LoginInfo.NONE());
    } else {
      var body = await checkLoginToken(token, userId);
      //token有效并且续期
      if (body.isSuccess && body.data) {
        //去请求最新的全面的用户数据
        var userOverview =
            await getUserOverview(userId, Account(userId, token));
        if (userOverview.isSuccess) {
          var newAccount =
              Account(userId, token, phone: phone, user: userOverview.data);
          _account = newAccount;
          _loginNim();
        } else {
          accountStatus.add(LoginInfo.FAILED("获取用户信息失败"));
          _clearAccountCache();
        }
      }

      ///请求失败，或者登录失效
      else {
        accountStatus.add(LoginInfo.FAILED("登录失效"));
        _clearAccountCache();
      }
    }
  }

  //需要再去获取用户的详细的信息-》存储本地
  void loginSuccess(Account data) {
    accountStatus.add(LoginInfo.LOGGING_IN());
    _account = data;
    _loginNim();
  }

  ///登录网易
  ///监听登录状态
  void _loginNim() {
    Nim.login(NimLoginInfo(_account.userId, _account.token),
        loginSuccess: (nimLoginInfo) {
      account.add(_account);
    }, loginError: (nimError) {
      loginFailed(nimError.message);
    });
    Nim.authService.observerNimLoginStatus((nimLoginStatus) {
      LogUtil.v("loginStatus==${nimLoginStatus.nimLoginStatusType.toString()}");
      //登陆成功
      if (nimLoginStatus.nimLoginStatusType == NimLoginStatusType.LOGINED) {
        _saveAccountCache(_account);
        FriendsGlobal.instance.init();
        ConversationGlobal.instance.init();
        AgoraGlobal.instance.init();
        accountStatus.add(LoginInfo.ONLINE());
      }

      //同步数据中
      else if (nimLoginStatus.nimLoginStatusType ==
          NimLoginStatusType.SYNCING) {
        accountStatus.add(LoginInfo.SYNCING());
      }
      //登录异常且不会再去重试，本次登录失败
      else if (nimLoginStatus.wontAutoLoginForever) {
        loginFailed(nimLoginStatus.loginMessage);
      }
    });
  }



  void loginFailed(String message) {
    _clearAccountCache();
    accountStatus.add(LoginInfo.FAILED(message));
  }

  void _saveAccountCache(Account data) async {
    setString(PHONE_KEY, data.phone);
    setString(TOKEN_KEY, data.token);
    setString(USERID_KEY, data.userId);
  }

  void _clearAccountCache() async {
    setString(PHONE_KEY, null);
    setString(TOKEN_KEY, null);
    setString(USERID_KEY, null);
  }
}
