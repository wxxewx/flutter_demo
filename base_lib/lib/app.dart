import 'package:baselib/common/bus/ibus.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:common_utils/common_utils.dart';
import 'package:fluro/fluro.dart';
import 'package:nim/nim.dart';

import 'common/bus/bus.dart';
import 'common/http/request_proto.dart';
import 'fluro/page_builder.dart';

class App {
  //编译环境
  static final bool inProduction =
      const bool.fromEnvironment("dart.vm.product");

  //元数据默认缓存时长
  static num metaCachePeriod = 1000 * 60 * 60 * 24;

  //log输出的前缀
  static String logTag = "CIKE";

  //声网appkey
  static String agoraAppKey = "";

  static DioProtoRequest mainRequest;

  static void initializer(
      DioProtoRequest mainRequest, List<IModule> modules, String loginPage,
      {metaCachePeriod, logTag, agoraAppKey}) {
    assert(mainRequest != null);
    App.mainRequest = mainRequest;
    App.metaCachePeriod = metaCachePeriod ?? App.metaCachePeriod;
    App.logTag = logTag;
    App.agoraAppKey = agoraAppKey;
    LogUtil.init(isDebug: true, tag: App.logTag);
    modules.forEach((module) {
      //注册各个模块的页面
      var pages = module.getPages();
      var publicEvents = module.gePublicEvents();
      Routers.init(pages);
      //注册各个模块的公共服务
      publicEvents.forEach((publicEvent) {
        EventBus.instance.register(
            publicEvent.event, EventType.get, publicEvent.iSubscriber,
            package: publicEvent.package);
      });
    });
    Routers.initLoginPage(loginPage);
    Nim.init();
  }
}

/***
 * getPages：对外提供的路由页面
 * gePublicEvents：对外提供的可以被响应的event事件
 */
abstract class IModule {
  List<PageBuilder> getPages();

  List<EventBuilder> gePublicEvents();
}
