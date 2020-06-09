import 'package:baselib/app.dart';
import 'package:baselib/common/http/request_proto.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:center/module.dart';
import 'package:cike/url.dart';
import 'package:contact/module.dart';
import 'package:flutter/material.dart';
import 'package:login/module.dart';
import 'package:room/module.dart';
import 'module.dart';
import 'package:nim/nim.dart';

///需要注入的module
var modules = [
  MainModule(),
  LoginModule(),
  CenterModule(),
  ContactsModule(),
  RoomModule()
];

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(createApp());
}

init() {
  App.initializer(
      DioProtoRequest(URL_BASE_API),
      modules,
      "/login",
      logTag: "此刻",
      agoraAppKey: '2581602d61a243dc9de8c6e6dcec4239');
}

Widget createApp() {
  return MaterialApp(
    title: '此刻',
    debugShowCheckedModeBanner: true,
    initialRoute: "/",
    onGenerateRoute: Routers.router.generator,
  );
}
