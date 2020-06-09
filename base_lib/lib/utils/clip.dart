import 'package:flutter/services.dart';


class ClipboardData {
  const ClipboardData({this.text});

  final String text;
}

class Clipboard {
  Clipboard._();

  static const String kTextPlain = 'text/plain';

  /// Stores the given clipboard data on the clipboard.
  ///将ClipboardData中的内容复制的粘贴板
  static Future<void> setData(ClipboardData data) async {
    await SystemChannels.platform.invokeMethod<void>(
      'Clipboard.setData',
      <String, dynamic>{
        'text': data.text,
      },
    );
  }
}
