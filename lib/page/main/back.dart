import 'package:flutter/services.dart';

class AndroidBackTop {
  ///通讯名称,回到手机桌面
  static const String chanel = "android/back/desktop";

  //返回手机桌面事件
  static const String eventBackDesktop = "backDesktop";

  ///设置回退到手机桌面
  static Future<bool> backDesktop() async {
    final platform = MethodChannel(chanel);
    try {
      await platform.invokeMethod(eventBackDesktop);
    } on PlatformException catch (e) {

    }
    return Future.value(false);
  }
}
