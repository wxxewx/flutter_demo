
import 'package:baselib/app.dart';
import 'package:baselib/common/bus/ibus.dart';
import 'package:baselib/fluro/page_builder.dart';
import 'package:user/page.dart';

class ProfileModule extends IModule {
  @override
  List<PageBuilder> getPages() {
    return [
      PageBuilder("/profile", (parameters) {
        return ProfilePage(parameters);
      })
    ];
  }

  @override
  List<EventBuilder> gePublicEvents() => [];


  @override
  List<ViewBuilder> getWidgets() =>[];
}
