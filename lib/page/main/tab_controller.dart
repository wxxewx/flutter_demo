import 'dart:async';

import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:cike/bar.dart';
import 'package:cike/policy.dart';
import 'package:rxdart/rxdart.dart';

class MainTabController extends BaseBloc {
  BehaviorSubject<List<BottomTab>> tabs = BehaviorSubject();

  StreamSubscription _policySubscription;

  static final BottomTab home = BottomTab.home();
  static final BottomTab square = BottomTab.square();
  static final BottomTab message = BottomTab.message();
  static final BottomTab me = BottomTab.me();

  final List<BottomTab> initTabs = [
    message,
    me,
  ];

  final String initRouter = message.router;
  final int initIndex = 0;

  List<BottomTab> _tabs = [];

  MainTabController() {
    _tabs.addAll(initTabs);
  }

  @override
  void initState() {
    _policySubscription = PolicyMeta.instance.listen(onData: _onPolicy);
  }

  void _onPolicy(Policy policy) {
    _tabs.clear();
    if (policy.tweetPolicy && policy.chatRoomPolicy) {
      _tabs.add(home);
      _tabs.add(square);
      _tabs.add(message);
      _tabs.add(me);
    } else if (policy.tweetPolicy && !policy.chatRoomPolicy) {
      _tabs.add(square);
      _tabs.add(message);
      _tabs.add(me);
    } else {
      _tabs.add(message);
      _tabs.add(me);
    }
    this.tabs.add(_tabs);
  }

  @override
  void dispose() {
    tabs.close();
    _policySubscription.cancel();
  }

  void hasNewMessage(int value) {
    message..dots = value;
    this.tabs.add(_tabs);
  }
}
