import 'dart:async';

import 'package:flutter/services.dart';
import 'package:nim/call_back.dart';
import 'package:nim/error.dart';
import 'package:nim/service/chatroom_service.dart';
import 'package:nim/service/conversation_service.dart';
import 'package:nim/service/friend_service.dart';
import 'package:nim/service/msg_service.dart';
import 'login_info.dart';
import 'service/auth_service.dart';

export 'package:nim/types.dart';
export 'package:nim/service/friend_service.dart';
export 'package:nim/service/auth_service.dart';
export 'package:nim/service/chatroom_service.dart';
export 'package:nim/service/conversation_service.dart';
export 'package:nim/call_back.dart';
export 'package:nim/contacts.dart';
export 'package:nim/error.dart';
export 'package:nim/login_info.dart';

class Nim {
  static const MethodChannel _channel = const MethodChannel('com.qint.pt1.nim');

  static AuthService authService = AuthService(_channel);
  static FriendService friendService = FriendService(_channel);
  static ChatRoomService chatRoomService = ChatRoomService(_channel);
  static MsgService msgService = MsgService(_channel);
  static ConversationService conversationService =
      ConversationService(_channel);

  ///初始化网易sdk操作
  static Future<void> init() async {
    _channel.invokeMethod("init");
  }

  ///此方法为手动登录
  ///因为网易initConfig初始化方法只能在applaction的onCreate方法中调用，所以暂时无法实现自动登录，故登录使用手动登录模式
  ///
  static login(NimLoginInfo nimLoginInfo,
      {LoginSuccessCall loginSuccess, LoginErrorCall loginError}) async {
    var args = {
      "account": nimLoginInfo?.account,
      "token": nimLoginInfo?.token,
    };
    try {
      var result = await _channel.invokeMethod<Map>("login", args);
      var account = result["account"];
      var token = result["token"];
      var loginInfo = NimLoginInfo(account, token);
      //登录成功之后开始监听native消息
      _dispatcherMethodCall();
      _initService();
      loginSuccess?.call(loginInfo);
    } on Exception catch (e, s) {
      if (e is PlatformException) {
        var errorHandler = loginErrorHandler(e.code, e.message);
        loginError?.call(errorHandler);
      }
    }
  }

  ///分发接收到的方法
  static void _dispatcherMethodCall() {
    _channel.setMethodCallHandler((call) async {
      var method = call.method;
      var arguments = call.arguments;
      if (method == "loginStatusChanged") {
        authService.loginStatusChanged(arguments);
      } else if (method == "loginSyncDataStatusChanged") {
        authService.loginSyncDataStatusChanged(arguments);
      } else if (method == "friendsChanged") {
        friendService.friendsChanged(arguments);
      } else if (method == "recentsChanged") {
        conversationService.recentsChanged(arguments);
      } else if (method == "receiveMessage") {
        chatRoomService.receiveMessage(arguments);
      }
    });
  }

  ///初始化各种服务
  static void _initService() {
    authService.init();
    friendService.init();
    conversationService.init();
    chatRoomService.init();
    msgService.init();
  }
}
