import 'package:baselib/app.dart';
import 'package:baselib/common/bus/ibus.dart';
import 'package:baselib/fluro/page_builder.dart';
import 'package:room/home/page.dart';
import 'package:room/room/page.dart';

import 'events.dart';

class RoomModule implements IModule {
  @override
  List<EventBuilder> gePublicEvents() {
    return [EventBuilder("room", "join_room", joinRoom)];
  }

  @override
  List<PageBuilder> getPages() {
    return [
      PageBuilder("/home", (parameters) => RoomHomePage(parameters)),
      PageBuilder("/room", (parameters) => ChatRoomPage(parameters)),
    ];
  }
}
