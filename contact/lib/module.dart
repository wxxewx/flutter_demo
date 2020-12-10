import 'package:baselib/app.dart';
import 'package:baselib/common/bus/ibus.dart';
import 'package:baselib/fluro/page_builder.dart';
import 'package:contact/message.dart';

import 'contacts/page.dart';
import 'conversation/page.dart';

class ContactsModule extends IModule {

  @override
  List<ViewBuilder> getWidgets() =>[];

  @override
  List<EventBuilder> gePublicEvents() {
    return [];
  }

  @override
  List<PageBuilder> getPages() {
    return [
      PageBuilder("/message", (parameters) {
        return MessagePage(parameters);
      }),
      PageBuilder("/conversation", (parameters) {
        return ConversationPage(parameters);
      }),
      PageBuilder("/contacts", (parameters) {
        return ContactsPage(parameters);
      })
    ];
  }
}
