import 'package:flutter/services.dart';

abstract class IService{
  final MethodChannel channel;

  IService(this.channel);

   void init();
}