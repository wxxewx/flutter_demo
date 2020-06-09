import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/fluro/page_builder.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import 'empty/page.dart';

class Routers {
  static Router router = Router();

  static String login_page = "";

  static Map<String, PageBuilder> _routers = {};

  static void init(List<PageBuilder> pages) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
      return EmptyPage();
    }); //空页面
    pages.forEach((page) {
      var handler = page.handler();
      router.define(page.path, handler: handler);
      _routers[page.path] = page;
    });
  }

  static void initLoginPage(String loginPage) {
    Routers.login_page = login_page;
  }

  /**
   * 生成对应的page
   */
  static Widget generatePage(BuildContext context, String path,
      {Parameters parameters}) {
    var pageBuilder = _routers[path];
    if (pageBuilder == null) {
      return router.notFoundHandler.handlerFunc(context, {});
    }
    pageBuilder.parameters = parameters ?? Parameters();
    var widget = pageBuilder.handler().handlerFunc(context, {});
    if (widget == null) {
      return router.notFoundHandler.handlerFunc(context, {});
    }
    return widget;
  }

  static Future navigateTo(BuildContext context, String page,
      {Parameters parameters,
      bool forceLogin = false,
      bool replace = false,
      bool clearStack = false,
      TransitionType transition = TransitionType.nativeModal,
      Duration transitionDuration = const Duration(milliseconds: 100),
      RouteTransitionsBuilder transitionBuilder}) {
    var pageBuilder = _routers[page];
    if (pageBuilder != null) {
      pageBuilder.parameters = parameters ?? Parameters();
    }
    var account = AccountGlobal.instance.getAccount();
    var path = page;
    if (forceLogin && (account == null || !account.isValid)) path = login_page;
    return router.navigateTo(context, path,
        replace: replace,
        clearStack: clearStack,
        transition: transition,
        transitionDuration: transitionDuration,
        transitionBuilder: transitionBuilder);
  }

  static pop(BuildContext context) {
    router.pop(context);
  }
}
