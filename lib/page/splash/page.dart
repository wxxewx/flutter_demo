import 'dart:async';

import 'package:baselib/account/account_global.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/utils/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Splash();
  }
}

class _Splash extends State<SplashPage> {
  StreamSubscription _accountStatusSubscription;

  @override
  void initState() {
    super.initState();
    _accountStatusSubscription =
        AccountGlobal.instance.accountStatus.listen(_accountStatusChanged);
    AccountGlobal.instance.autoLogin();
  }

  /**
   * 登录状态监听
   */
  void _accountStatusChanged(LoginInfo loginInfo) {
    //登录无效，重新登录
    if (loginInfo.status == LoginStatus.NONE) {
      Routers.navigateTo(context, "/login", replace: true, clearStack: true);
    }
    //登录异常
    else if (loginInfo.status == LoginStatus.FAILED) {
      ToastUtil.show(loginInfo.tip);
      Routers.navigateTo(context, "/login", replace: true, clearStack: true);
    }
    //登陆成功
    else if (loginInfo.status == LoginStatus.ONLINE) {
      Routers.navigateTo(context, "/main",
          forceLogin: true, replace: true, clearStack: true);
    }
  }

  @override
  void dispose() {
    _accountStatusSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Image.asset("images/splash_background.png",
            width: double.infinity, height: double.infinity),
      ),
    );
  }
}
