import 'dart:async';

import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/im/conversation.dart';
import 'package:baselib/im/im_global.dart';
import 'package:baselib/widget/loading.dart';
import 'package:rxdart/rxdart.dart';

class ConversationBloc extends BaseBloc {
  BehaviorSubject<List<Conversation>> conversations = BehaviorSubject();
  List<Conversation> _conversations ;

  BehaviorSubject<LoadingState> loadState = BehaviorSubject();
  StreamSubscription subscription;

  @override
  void initState() {
    print("initState");
    loadState.add(LoadingState.loading);
    subscription = ConversationGlobal.instance.conversations.listen((list) {
      if(list==null)return;
      _conversations = list;
      conversations.add(_conversations);
      loadState.add(LoadingState.success);
      if(_conversations.isEmpty){
        loadState.add(LoadingState.empty);
      }
    });
  }

  reLoad() async {
    ConversationGlobal.instance.refreshConversations();
  }

  @override
  void dispose() {
    subscription.cancel();
    conversations.close();
    loadState.close();
  }
}
