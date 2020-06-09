import 'package:baselib/common/parameters.dart';
import 'package:flutter/cupertino.dart';

abstract class IPublisher {
  void post(BuildContext context,String event, Parameters parameters, {String package});

  Future get(BuildContext context,String event, Parameters parameters, String package);
}

//订阅者:函数对象
typedef Future<Parameters> ISubscriber(BuildContext context,Parameters parameters);

class EventBuilder {
  final String package;
  final String event;
  final ISubscriber iSubscriber;

  EventBuilder(this.package,this.event, this.iSubscriber);

  Parameters parameters;
}

//集中式通信，
//1.IEventBus继承IPublisher,分发数据
//2.IEventBus注册和取消注册ISubscriber

abstract class IEventBus extends IPublisher {

  void register(String event, EventType type, ISubscriber subscriber,
      {String package});


  void unregister(String event, ISubscriber subscriber, {String package});
}

///事件类型
///get:注册一个事件，可以被主动调用
///post：发送一个事件，调用其他已经注册的观察者
enum EventType { get, post }
