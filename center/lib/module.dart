import 'package:baselib/app.dart';
import 'package:baselib/fluro/page_builder.dart';
import 'package:baselib/common/bus/bus.dart';
import 'package:center/page.dart';

class CenterModule extends IModule {
  @override
  List<PageBuilder> getPages() {
    return [
      PageBuilder("/me", (parameters) {
        return MePage(parameters);
      }),
    ];
  }
  @override
  List<EventBuilder> gePublicEvents() =>[];

  @override
  List<ViewBuilder> getWidgets() =>[];
}
