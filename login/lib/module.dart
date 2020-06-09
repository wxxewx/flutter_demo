import 'package:baselib/app.dart';
import 'package:baselib/common/bus/bus.dart';
import 'package:baselib/fluro/page_builder.dart';
import 'package:login/page.dart';

class LoginModule extends IModule {
  @override
  List<PageBuilder> getPages() {
    return [
      PageBuilder("/login", (parameters) {
        return LoginPage(parameters);
      })
    ];
  }

  @override
  List<EventBuilder> gePublicEvents() => [];
}
