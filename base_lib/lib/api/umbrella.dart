import 'package:baselib/api/url/umbrella.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/proto/sys_message.pb.dart';

Future<ResultBody<bool>> checkLoginToken(String token, String uid) {
  var tokenReq = CheckTokenReq.create()
    ..token = token
    ..uid = uid;
  return App.mainRequest.post<bool, CheckTokenReq>(
      UmbrellaUrl.CHECK_TOKEN, tokenReq, (byte) async {
    var tokenResp = CheckTokenResp.fromBuffer(byte);
    return ResultBody(true, data: tokenResp.valid);
  });
}
