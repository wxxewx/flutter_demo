import 'package:baselib/app.dart';
import 'package:baselib/common/bus/ibus.dart';
import 'package:baselib/fluro/page_builder.dart';
import 'package:square/pub/page.dart';
import 'package:square/square.dart';
import 'package:square/square/page.dart';
import 'package:square/theme/page.dart';

class SquareModule implements IModule {
  @override
  List<EventBuilder> gePublicEvents() {
    return [];
  }

  @override
  List<PageBuilder> getPages() {
    return [
      PageBuilder("/square", (parameters) => SquarePage(parameters)),
      PageBuilder("/squareList", (parameters) => SquareListPage(parameters)),
      PageBuilder("/pubTweet", (parameters) => PubTweetPage(parameters)),
      PageBuilder("/tagSelect", (parameters) => TagSelectPage(parameters)),
    ];
  }

  @override
  List<ViewBuilder> getWidgets() {
    return [];
  }
}
