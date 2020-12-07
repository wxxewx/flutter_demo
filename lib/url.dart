import 'package:baselib/app.dart';

String URL_BASE_API = App.inProduction
    ? URL_BASE_API_RELEASE_DEFAULT
    : URL_BASE_API_DEBUG_DEFAULT;

String URL_BASE_API_DEBUG_DEFAULT = "https://test.huayuim.com/";
String URL_BASE_API_RELEASE_DEFAULT = "https://api.huayuim.com/";
