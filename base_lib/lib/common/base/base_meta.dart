
import 'dart:async';

import 'package:protobuf/protobuf.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseMeta<Meta, Proto extends GeneratedMessage> {
  BaseMeta(this.defaultValue) : value = defaultValue;

  BehaviorSubject<Meta> subject = new BehaviorSubject();
  Meta defaultValue;
  Meta value;

  /**
   * 当不设置回调时返回值为null
   * 当界面销毁或者不需要监听数据变化时，记得调用StreamSubscription 的 cancel方法进行释放，避免不必要的异常
   */
  StreamSubscription<Meta> listen({void onData(Meta value)}) {
    if (value == defaultValue) {
      get();
      if (onData != null) {
        return subject.listen(onData);
      }
    } else {
      if (onData != null) {
        return subject.listen(onData);
      }
    }
    return null;
  }

  Future<Meta> get() async {
    if (value == defaultValue) {
      var proto = await request();
      if (proto == null) {
        value = defaultValue;
        subject.add(value);
      } else {
        value = transform(proto);
        subject.add(value);
      }
    }
    return value;
  }

  /**
   * 实现改方法
   * 如果请求成功返回对应的proto
   * 如果请求失败返回null
   */
  Future<Proto> request();

  Meta transform(Proto proto);

  clear() async {
    value = defaultValue;
    await get();
  }
}
