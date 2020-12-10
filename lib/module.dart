import 'package:baselib/app.dart';
import 'package:baselib/common/bus/bus.dart';
import 'package:baselib/fluro/page_builder.dart';
import 'package:cike/page/main/page.dart';
import 'package:cike/page/splash/page.dart';

class MainModule extends IModule {
  @override
  List<PageBuilder> getPages() {
    return [
      PageBuilder("/", (parameters) {
        return SplashPage();
      }),
      PageBuilder("/main", (parameters) {
        return MainPage(parameters);
      }),
    ];
  }

  @override
  List<EventBuilder> gePublicEvents() =>[];

  @override
  List<ViewBuilder> getWidgets() =>[];
}
