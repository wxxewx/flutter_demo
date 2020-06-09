///
//  Generated code. Do not modify.
//  source: social_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class UserOAuthResp_Status extends $pb.ProtobufEnum {
  static const UserOAuthResp_Status OK = UserOAuthResp_Status._(0, 'OK');
  static const UserOAuthResp_Status TOKEN_INVALID = UserOAuthResp_Status._(1, 'TOKEN_INVALID');
  static const UserOAuthResp_Status PARAMETER_ERROR = UserOAuthResp_Status._(2, 'PARAMETER_ERROR');

  static const $core.List<UserOAuthResp_Status> values = <UserOAuthResp_Status> [
    OK,
    TOKEN_INVALID,
    PARAMETER_ERROR,
  ];

  static final $core.Map<$core.int, UserOAuthResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserOAuthResp_Status valueOf($core.int value) => _byValue[value];

  const UserOAuthResp_Status._($core.int v, $core.String n) : super(v, n);
}

class OAuthUpdateReq_Category extends $pb.ProtobufEnum {
  static const OAuthUpdateReq_Category WX = OAuthUpdateReq_Category._(0, 'WX');
  static const OAuthUpdateReq_Category QQ = OAuthUpdateReq_Category._(1, 'QQ');
  static const OAuthUpdateReq_Category SINA = OAuthUpdateReq_Category._(2, 'SINA');
  static const OAuthUpdateReq_Category ALI = OAuthUpdateReq_Category._(3, 'ALI');

  static const $core.List<OAuthUpdateReq_Category> values = <OAuthUpdateReq_Category> [
    WX,
    QQ,
    SINA,
    ALI,
  ];

  static final $core.Map<$core.int, OAuthUpdateReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OAuthUpdateReq_Category valueOf($core.int value) => _byValue[value];

  const OAuthUpdateReq_Category._($core.int v, $core.String n) : super(v, n);
}

class OAuthUpdateResp_Status extends $pb.ProtobufEnum {
  static const OAuthUpdateResp_Status OK = OAuthUpdateResp_Status._(0, 'OK');
  static const OAuthUpdateResp_Status TOKEN_INVALID = OAuthUpdateResp_Status._(1, 'TOKEN_INVALID');
  static const OAuthUpdateResp_Status PARAMETER_ERROR = OAuthUpdateResp_Status._(2, 'PARAMETER_ERROR');
  static const OAuthUpdateResp_Status OPENID_OCCUPIED = OAuthUpdateResp_Status._(3, 'OPENID_OCCUPIED');

  static const $core.List<OAuthUpdateResp_Status> values = <OAuthUpdateResp_Status> [
    OK,
    TOKEN_INVALID,
    PARAMETER_ERROR,
    OPENID_OCCUPIED,
  ];

  static final $core.Map<$core.int, OAuthUpdateResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OAuthUpdateResp_Status valueOf($core.int value) => _byValue[value];

  const OAuthUpdateResp_Status._($core.int v, $core.String n) : super(v, n);
}

class GeneralResp_Status extends $pb.ProtobufEnum {
  static const GeneralResp_Status OK = GeneralResp_Status._(0, 'OK');
  static const GeneralResp_Status TOKEN_INVALID = GeneralResp_Status._(1, 'TOKEN_INVALID');
  static const GeneralResp_Status PARAMETER_ERROR = GeneralResp_Status._(2, 'PARAMETER_ERROR');

  static const $core.List<GeneralResp_Status> values = <GeneralResp_Status> [
    OK,
    TOKEN_INVALID,
    PARAMETER_ERROR,
  ];

  static final $core.Map<$core.int, GeneralResp_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GeneralResp_Status valueOf($core.int value) => _byValue[value];

  const GeneralResp_Status._($core.int v, $core.String n) : super(v, n);
}

class TweetListReq_Category extends $pb.ProtobufEnum {
  static const TweetListReq_Category RECENT = TweetListReq_Category._(0, 'RECENT');
  static const TweetListReq_Category RECOMENDED = TweetListReq_Category._(1, 'RECOMENDED');

  static const $core.List<TweetListReq_Category> values = <TweetListReq_Category> [
    RECENT,
    RECOMENDED,
  ];

  static final $core.Map<$core.int, TweetListReq_Category> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TweetListReq_Category valueOf($core.int value) => _byValue[value];

  const TweetListReq_Category._($core.int v, $core.String n) : super(v, n);
}

