import 'package:flutter/services.dart';
import 'package:nim/call_back.dart';
import 'package:nim/login_info.dart';
import 'package:nim/service/service.dart';

class AuthService extends IService {
  AuthService(MethodChannel channel) : super(channel);

  List<LoginStatusCall> _loginStatusCalls = [];

  List<SyncDataStatusCall> _loginSyncDataStatusCalls = [];

  NimLoginStatus _loginStatus = NimLoginStatus(0);
  LoginSyncStatus _loginSyncDataStatus;

  @override
  void init() {
    channel.invokeMethod("observerNimLoginStatus", true);
    channel.invokeMethod("observerNimLoginSyncDataStatus", true);
  }

  ///监听用户的在线状态
  observerNimLoginStatus(LoginStatusCall loginStatusCall) {
    _loginStatusCalls.add(loginStatusCall);
    loginStatusCall(_loginStatus);
  }

  ///监听用户的在线状态
  observerNimLoginSyncDataStatus(SyncDataStatusCall syncDataStatusCall) {
    _loginSyncDataStatusCalls.add(syncDataStatusCall);
    syncDataStatusCall(_loginSyncDataStatus);
  }

  //登录状态发生变化
  void loginStatusChanged(arguments) {
    if (arguments is int) {
      _loginStatus = NimLoginStatus(arguments);
      _loginStatusCalls.forEach((element) {
        element(_loginStatus);
      });
    }
  }

  //监听数据同步的状态
  void loginSyncDataStatusChanged(arguments) {
    if (arguments is int) {
      LoginSyncStatus.values.forEach((status) {
        if (status.index == arguments) {
          _loginSyncDataStatus = status;
          _loginSyncDataStatusCalls.forEach((element) => element(status));
        }
      });
    }
  }
}
