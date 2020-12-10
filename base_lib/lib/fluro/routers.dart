import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/fluro/page_builder.dart';
import 'package:baselib/theme/theme_global.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'empty/page.dart';

class Routers {
  static FluroRouter router = FluroRouter();

  static String login_page = "";

  static Map<String, PageBuilder> _routers = {};

  static List<ViewBuilder> _publicWidgets = [];

  static void init(List<PageBuilder> pages, List<ViewBuilder> publicWidgets) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
      return EmptyPage();
    }); //空页面
    pages.forEach((page) {
      var handler = page.handler();
      router.define(page.path, handler: handler);
      _routers[page.path] = page;
    });

    _publicWidgets.addAll(publicWidgets);
  }

  static void initLoginPage(String loginPage) {
    Routers.login_page = login_page;
  }

  /**
   * 生成对应的View
   */
  static Widget generateView(BuildContext context, String name,
      {Parameters parameters, Theme theme}) {
    var viewBuilder =
        _publicWidgets.firstWhere((element) => element.name == name);
    assert(viewBuilder != null, "没有发现名字为：${name}的组件");
    viewBuilder.parameters = parameters ?? Parameters();
    viewBuilder.theme = theme ?? ThemeGlobal.instance.themeData;
    var widget = viewBuilder.handler().handlerFunc(context, {});
    return widget;
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
