import 'package:nim/types/types.dart';
import 'contacts.dart';

class Conversation {
  final ConversationContent content;
  final Contacts contacts;

  Conversation(this.content, this.contacts);
}

///暂时只处理保留了最基本的信息
///复杂信息根据业务再处理
class ConversationContent {
  final String content;
  final String recentMessageId;
  final SessionType sessionType;
  final int time;
  final int unreadCount;

  ConversationContent(this.content, this.recentMessageId, this.sessionType,
      this.time, this.unreadCount);

  String get formatTime {
    var s = DateTime.fromMillisecondsSinceEpoch(time);
    return "${s.month}-${s.day} ${s.hour}:${s.minute >= 10 ? s.minute : '0${s.minute}'}:${s.second}";
  }
}
