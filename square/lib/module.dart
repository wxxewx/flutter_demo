import 'package:baselib/app.dart';
import 'package:baselib/common/bus/ibus.dart';
import 'package:baselib/fluro/page_builder.dart';
import 'package:square/square/page.dart';


class SquareModule implements IModule {
  @override
  List<EventBuilder> gePublicEvents() {
    return [];
  }

  @override
  List<PageBuilder> getPages() {
    return [
      PageBuilder("/square", (parameters) => SquareListPage(parameters)),
    ];
  }
}
