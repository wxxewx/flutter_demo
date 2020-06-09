import 'dart:async';

import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/bloc/multiple_bloc.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/im/im_global.dart';
import 'package:baselib/utils/toast.dart';
import 'package:cike/page/main/tab_controller.dart';

class MainPageBloc extends MultipleBloc {
  MainPageBloc() : super([MainTabController()]);

  StreamSubscription _accountStatusSubscription;
  StreamSubscription _unReadStatusSubscription;

  @override
  void initState() {
    super.initState();
    _accountStatusSubscription =
        AccountGlobal.instance.accountStatus.listen(_accountStatusChanged);
    _unReadStatusSubscription =
        ConversationGlobal.instance.unReadCount.listen((value) {
          var tabController = find<MainTabController>();
          tabController.hasNewMessage(value);
        });
  }

  /**
   * 登录状态监听
   */
  void _accountStatusChanged(LoginInfo loginInfo) {
    //登录无效，重新登录
    if (loginInfo.status == LoginStatus.NONE ||
        loginInfo.status == LoginStatus.FAILED) {
      ToastUtil.show(loginInfo.tip);
      Routers.navigateTo(context, "/login", replace: true, clearStack: true);
    }
  }

  @override
  void dispose() {
    _accountStatusSubscription.cancel();
    _unReadStatusSubscription.cancel();
    super.dispose();
  }
}
