import 'user/user_domain.dart';

class Account {
  final String userId;
  final String token;
  final String phone;
  User user;

  bool get isValid {
    return userId != null &&
        userId.isNotEmpty &&
        token != null &&
        token.isNotEmpty &&
        phone != null &&
        phone.isNotEmpty;
  }

  Account(this.userId, this.token, {user, phone})
      : user = user,
        phone = phone;

  @override
  String toString() {
    return 'Account{userId: $userId, token: $token, user: $user}';
  }
}

class LoginInfo {
  final LoginStatus status;
  final String tip;

  LoginInfo(this.status, this.tip);

  LoginInfo.LOGGING_IN() : this(LoginStatus.LOGGING_IN, "登陆中");

  LoginInfo.ONLINE() : this(LoginStatus.ONLINE, "登录成功");

  LoginInfo.SYNCING() : this(LoginStatus.SYNCING, "同步资料");

  LoginInfo.NONE() : this(LoginStatus.NONE, "");

  LoginInfo.FAILED(String tip) : this(LoginStatus.FAILED, tip);
}

enum LoginStatus {
  ONLINE, //登录成功，在线
  LOGGING_IN, //正在登陆中
  SYNCING, //同步数据中
  NONE, //没有有效用户
  FAILED //登录异常
}
