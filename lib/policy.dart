import 'dart:async';
import 'package:baselib/api/url/url.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/base/base_meta.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/account/account_global.dart';
import 'package:baselib/proto/sys_message.pb.dart';

class PolicyMeta extends BaseMeta<Policy, PolicyResp> {

  static PolicyMeta get instance => _getInstance();
  static PolicyMeta _instance;
  PolicyMeta._internal() : super(Policy.normal());
  static PolicyMeta _getInstance() {
    if (_instance == null) {
      _instance = new PolicyMeta._internal();
    }
    return _instance;
  }

  @override
  Future<PolicyResp> request() async {
    var account = AccountGlobal.instance.getAccount();
    var create = PolicyReq.create();
    create
      ..uid = account.userId
      ..location = account.user.location.city;
    var data = await App.mainRequest.post<PolicyResp, PolicyReq>(
        UmbrellaUrl.API_POLICY, create, (byte) async {
      return ResultBody(true, data: PolicyResp.fromBuffer(byte));
    });
    if (data.isSuccess) {
      return data.data;
    } else {
      return null;
    }
  }

  @override
  Policy transform(PolicyResp proto) {
    var policyList = proto.policyList;
    bool chatRoomPolicy = policyList[1] ?? false;
    bool tweetPolicy = policyList[2] ?? false;
    bool pubTweetPolicy = policyList[3] ?? false;
    return Policy(true, tweetPolicy, pubTweetPolicy);
  }
}

class Policy {
  final bool chatRoomPolicy;
  final bool tweetPolicy;
  final bool pubTweetPolicy;

  Policy(this.chatRoomPolicy, this.tweetPolicy, this.pubTweetPolicy);

  Policy.normal()
      : chatRoomPolicy = false,
        tweetPolicy = false,
        pubTweetPolicy = false;
}
