import 'dart:typed_data';

import 'package:baselib/account/account_global.dart';
import 'package:baselib/api/url/hive.dart';
import 'package:baselib/app.dart';
import 'package:baselib/api/url/url.dart';
import 'package:baselib/common/base/base_cache_meta.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/proto/room_message.pb.dart';
import 'package:baselib/proto/sys_message.pb.dart';

class RoomThemeMeta extends BaseCacheMeta<List<ChatRoomTheme>, RoomThemeResp> {
  static RoomThemeMeta get instance => _getInstance();
  static RoomThemeMeta _instance;

  RoomThemeMeta._internal() : super(<ChatRoomTheme>[]);

  static RoomThemeMeta _getInstance() {
    if (_instance == null) {
      _instance = new RoomThemeMeta._internal();
    }
    return _instance;
  }

  @override
  RoomThemeResp base64ToProto(Uint8List base64decode) {
    return RoomThemeResp.fromBuffer(base64decode);
  }

  @override
  Future<RoomThemeResp> request() async {
    var account = AccountGlobal.instance.getAccount();
    if (!account.isValid) return null;
    var body = await App.mainRequest.get<RoomThemeResp>(HiveService.ROOM_THEMES,
        (byte) async {
      var roomThemeResp = RoomThemeResp.fromBuffer(byte);
      return ResultBody(true, data: roomThemeResp);
    });
    return body.isSuccess ? body.data : null;
  }

  @override
  List<ChatRoomTheme> transform(RoomThemeResp proto) {
    return proto.themes.map((theme) {
      return ChatRoomTheme(theme.tid, theme.url);
    }).toList();
  }

  ///查询theme
  Future<ChatRoomTheme> findTheme(int themeId) async {
    try {
      var themes = await get();
      var theme = themes.firstWhere((element) => element.id == themeId);
      return theme;
    } catch (e) {
      return ChatRoomTheme.normal();
    }
  }

}

class ChatRoomTheme {
  final int id;
  final String url;

  ChatRoomTheme(this.id, this.url);

  ChatRoomTheme.normal()
      : this(3,
            "https://voice-images.oss-cn-beijing.aliyuncs.com/sys/themes/bg3.png");
}
