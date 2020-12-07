///
//  Generated code. Do not modify.
//  source: social_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ReadingsResp$json = const {
  '1': 'ReadingsResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.ReadingsResp.Item', '10': 'items'},
  ],
  '3': const [ReadingsResp_Item$json],
};

const ReadingsResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'tag', '3': 2, '4': 1, '5': 9, '10': 'tag'},
  ],
};

const UserOAuthReq$json = const {
  '1': 'UserOAuthReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.proto_def.OAuthUpdateReq.Category', '10': 'category'},
  ],
};

const UserOAuthResp$json = const {
  '1': 'UserOAuthResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.UserOAuthResp.Status', '10': 'status'},
    const {'1': 'uid_3rd', '3': 2, '4': 1, '5': 9, '10': 'uid3rd'},
  ],
  '4': const [UserOAuthResp_Status$json],
};

const UserOAuthResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'PARAMETER_ERROR', '2': 2},
  ],
};

const OAuthUpdateReq$json = const {
  '1': 'OAuthUpdateReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.proto_def.OAuthUpdateReq.Category', '10': 'category'},
    const {'1': 'uid_3rd', '3': 4, '4': 1, '5': 9, '10': 'uid3rd'},
    const {'1': 'name_3rd', '3': 5, '4': 1, '5': 9, '10': 'name3rd'},
  ],
  '4': const [OAuthUpdateReq_Category$json],
};

const OAuthUpdateReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'WX', '2': 0},
    const {'1': 'QQ', '2': 1},
    const {'1': 'SINA', '2': 2},
    const {'1': 'ALI', '2': 3},
  ],
};

const OAuthUpdateResp$json = const {
  '1': 'OAuthUpdateResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.OAuthUpdateResp.Status', '10': 'status'},
  ],
  '4': const [OAuthUpdateResp_Status$json],
};

const OAuthUpdateResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'PARAMETER_ERROR', '2': 2},
    const {'1': 'OPENID_OCCUPIED', '2': 3},
  ],
};

const TagListResp$json = const {
  '1': 'TagListResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.proto_def.TagListResp.Item', '10': 'items'},
  ],
  '3': const [TagListResp_Item$json],
};

const TagListResp_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'tid', '3': 1, '4': 1, '5': 5, '10': 'tid'},
    const {'1': 'tag', '3': 2, '4': 1, '5': 9, '10': 'tag'},
    const {'1': 'category', '3': 3, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'priority', '3': 4, '4': 1, '5': 5, '10': 'priority'},
  ],
};

const TagListV2Resp$json = const {
  '1': 'TagListV2Resp',
  '2': const [
    const {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.proto_def.TagListV2Resp.Tag', '10': 'items'},
  ],
  '3': const [TagListV2Resp_Tag$json],
};

const TagListV2Resp_Tag$json = const {
  '1': 'Tag',
  '2': const [
    const {'1': 'category', '3': 1, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'tags', '3': 2, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'color', '3': 3, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'desc', '3': 5, '4': 1, '5': 9, '10': 'desc'},
  ],
};

const Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'lng', '3': 1, '4': 1, '5': 2, '10': 'lng'},
    const {'1': 'lat', '3': 2, '4': 1, '5': 2, '10': 'lat'},
  ],
};

const Tweet$json = const {
  '1': 'Tweet',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.proto_def.Tweet.User', '10': 'user'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'audio', '3': 3, '4': 1, '5': 9, '10': 'audio'},
    const {'1': 'location', '3': 4, '4': 1, '5': 11, '6': '.proto_def.Location', '10': 'location'},
    const {'1': 'tags', '3': 5, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'photos', '3': 6, '4': 3, '5': 9, '10': 'photos'},
    const {'1': 'pub_time', '3': 7, '4': 1, '5': 5, '10': 'pubTime'},
    const {'1': 'is_liked', '3': 8, '4': 1, '5': 8, '10': 'isLiked'},
    const {'1': 'like_num', '3': 9, '4': 1, '5': 5, '10': 'likeNum'},
    const {'1': 'tweet_id', '3': 10, '4': 1, '5': 9, '10': 'tweetId'},
    const {'1': 'chat', '3': 11, '4': 1, '5': 8, '10': 'chat'},
    const {'1': 'set_top', '3': 12, '4': 1, '5': 8, '10': 'setTop'},
  ],
  '3': const [Tweet_User$json],
};

const Tweet_User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'grade', '3': 4, '4': 1, '5': 5, '10': 'grade'},
    const {'1': 'show_id', '3': 5, '4': 1, '5': 5, '10': 'showId'},
  ],
};

const GeneralResp$json = const {
  '1': 'GeneralResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.GeneralResp.Status', '10': 'status'},
  ],
  '4': const [GeneralResp_Status$json],
};

const GeneralResp_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'TOKEN_INVALID', '2': 1},
    const {'1': 'PARAMETER_ERROR', '2': 2},
  ],
};

const TweetListReq$json = const {
  '1': 'TweetListReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'category', '3': 10, '4': 1, '5': 14, '6': '.proto_def.TweetListReq.Category', '10': 'category'},
    const {'1': 'current_page', '3': 3, '4': 1, '5': 5, '10': 'currentPage'},
    const {'1': 'num_per_page', '3': 4, '4': 1, '5': 5, '10': 'numPerPage'},
    const {'1': 'current_loc', '3': 5, '4': 1, '5': 11, '6': '.proto_def.Location', '10': 'currentLoc'},
    const {'1': 'expect_uid', '3': 6, '4': 1, '5': 9, '10': 'expectUid'},
    const {'1': 'expect_age', '3': 7, '4': 1, '5': 5, '10': 'expectAge'},
    const {'1': 'expect_gender', '3': 8, '4': 1, '5': 5, '10': 'expectGender'},
    const {'1': 'expect_distance', '3': 9, '4': 1, '5': 5, '10': 'expectDistance'},
    const {'1': 'self_grade', '3': 11, '4': 1, '5': 5, '10': 'selfGrade'},
  ],
  '4': const [TweetListReq_Category$json],
};

const TweetListReq_Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'RECENT', '2': 0},
    const {'1': 'RECOMENDED', '2': 1},
  ],
};

const TweetListResp$json = const {
  '1': 'TweetListResp',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto_def.GeneralResp.Status', '10': 'status'},
    const {'1': 'tweets', '3': 2, '4': 3, '5': 11, '6': '.proto_def.Tweet', '10': 'tweets'},
  ],
};

const PubTweetReq$json = const {
  '1': 'PubTweetReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'tweet', '3': 3, '4': 1, '5': 11, '6': '.proto_def.Tweet', '10': 'tweet'},
  ],
};

const LikeTweetReq$json = const {
  '1': 'LikeTweetReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'tweet_id', '3': 3, '4': 1, '5': 9, '10': 'tweetId'},
  ],
};

const UnPubTweetReq$json = const {
  '1': 'UnPubTweetReq',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'tweet_id', '3': 3, '4': 1, '5': 9, '10': 'tweetId'},
  ],
};

