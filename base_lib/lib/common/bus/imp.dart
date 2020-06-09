import 'package:baselib/common/parameters.dart';
import 'package:flutter/cupertino.dart';

import 'ibus.dart';

class EventBus implements IEventBus {
  static EventBus get instance => _getInstance();
  static EventBus _instance;

  EventBus._internal() {}

  static EventBus _getInstance() {
    if (_instance == null) {
      _instance = new EventBus._internal();
    }
    return _instance;
  }

  Map<String, Map<String, List<ISubscriber>>> _postMap = new Map();

  Map<String, Map<String, ISubscriber>> _getMap = new Map();

  /**
   * 如果 package 为 null 会注册所有package下符合条件的事件
   * 否则 只注册该包下的事件
   * get事件必须指定package
   */
  @override
  void register(String event, EventType type, ISubscriber subscriber,
      {String package}) {
    if (type == EventType.get) {
      ///get事件必须指定package
      assert(package != null);
      if (!_getMap.containsKey(package)) {
        _getMap[package] = {};
      }
      var eventMap = _getMap[package];
      if (eventMap.containsKey(event)) {
        throw Exception("在package：$package 已经有event：$event，无法重复注册");
      }
      eventMap[event] = subscriber;
    } else {
      if (package == null) {
        _postMap.forEach((key, value) {
          if (!value.containsKey(event)) {
            value[event] = new List();
          }
          value[event].add(subscriber);
        });
      } else {
        var eventMap = _postMap[package];
        if (!eventMap.containsKey(event)) {
          eventMap[event] = new List();
        }
        eventMap[event].add(subscriber);
      }
    }
  }

  /**
   * 如果 package 为 null 会注销所有package下符合条件的事件
   * 否则 只注销该包下的事件
   */
  @override
  void unregister(String event, ISubscriber subscriber, {String package}) {
    if (package == null) {
      _postMap.forEach((key, value) {
        if (value.containsKey(event)) {
          value[event].remove(subscriber);
        }
      });
    } else {
      var eventMap = _postMap[package];
      if (eventMap.containsKey(event)) {
        eventMap[event].remove(subscriber);
      }
    }
  }

  /***
   * package ==null 时 会向所有包下满足条件的事件发送
   * 否则只会调用指定包下的观察者
   */
  @override
  void post(BuildContext context,String event, Parameters parameters, {String package}) {
    if (package == null) {
      _postMap.forEach((key, value) {
        if (value.containsKey(event)) {
          value[event]?.forEach((subscriber) => subscriber(context,parameters));
        }
      });
    } else {
      var events = _postMap[package];
      if (events.containsKey(event)) {
        events[event]?.forEach((subscriber) => subscriber(context,parameters));
      }
    }
  }

  //调用某个事件
  //必须指定package
  @override
  Future<Parameters> get(BuildContext context,
      String event, Parameters parameters, String package) async {
    if (_getMap.containsKey(package)) {
      var events = _getMap[event];
      if (events.containsKey(event)) {
        var subscriber = events[event];
        return await subscriber(context,parameters);
      }
    }
    throw Exception("无法在package：$package 下找到事件：$event");
  }
}
