import 'dart:convert';

import 'package:baselib/api/url/hive.dart';
import 'package:baselib/api/url/promotion.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/http/request_json.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/proto/room_message.pb.dart';
import 'package:room/model/room.dart';
import 'package:room/room_category.dart';
import 'package:room/url.dart';

import 'model/banner.dart';

DioJsonRequest _dioJsonRequest = DioJsonRequest(PROMOTION_URL);

///
/// [category]房间的类型
/// [page]页数
/// [pageNumber]每页加载的数据
///
Future<ResultBody<List<ChatRoom>>> getRooms(String category, int page,
    {int pageNumber = 20}) async {
  var req = RoomListReq.create()
    ..category = category
    ..pageNumber = page
    ..numPerPage = pageNumber;
  return App.mainRequest.post<List<ChatRoom>, RoomListReq>(
      HiveService.CHATROOMS, req, (byte) async {
    var rcs = await RoomCategoryMeta.instance.get();
    var resp = RoomListResp.fromBuffer(byte);
    var list = resp.rooms.map((room) {
      var where = rcs.firstWhere((element) => element.title == room.category);
      return ChatRoom(
          room.id,
          room.externRoomId,
          room.title,
          room.roomImg,
          room.memberNum,
          where,
          room.ownerName,
          room.ownerAvatar,
          room.ownerId,
          room.layout == Room_LAYOUT.SEATS_4
              ? RoomLayout.seats_4
              : RoomLayout.seats_8,
          room.needPassword,
          room.enable,
          room.index,
          room.greateNum);
    }).toList();
    return ResultBody(true, data: list);
  });
}

///
/// [account]账号
/// [roomId]房间Id
/// [passWorld]密码
///
Future<ResultBody<ChatRoom>> getRoomDetail(Account account, String roomId,
    {passWorld = ""}) async {
  var req = RoomDetailReq.create()
    ..chatroomId = roomId
    ..uid = account.userId
    ..password = passWorld;

  return App.mainRequest.post<ChatRoom, RoomDetailReq>(
      HiveService.CHATROOM_DETAILS, req, (byte) async {
    var rcs = await RoomCategoryMeta.instance.get();
    var resp = RoomDetailResp.fromBuffer(byte);
    if (resp.code == RoomDetailResp_STATUS.PASSWORD_INVALID) {
      return ResultBody(false, error: ResultError("密码不正确", code: 401));
    } else if (resp.code == RoomDetailResp_STATUS.ROOM_IS_FULL) {
      return ResultBody(false, error: ResultError("聊天室已满"));
    } else if (resp.code == RoomDetailResp_STATUS.USER_IS_BLOCKED) {
      return ResultBody(false, error: ResultError("您被阻止进入房间"));
    } else {
      var category =
          rcs.firstWhere((element) => element.title == resp.room.category);
      return ResultBody(true,
          data: ChatRoom(
              resp.room.id,
              resp.room.externRoomId,
              resp.room.title,
              resp.room.roomImg,
              resp.room.memberNum,
              category,
              resp.room.ownerName,
              resp.room.ownerAvatar,
              resp.room.ownerId,
              resp.room.layout == Room_LAYOUT.SEATS_4
                  ? RoomLayout.seats_4
                  : RoomLayout.seats_8,
              resp.room.needPassword,
              resp.room.enable,
              resp.room.index,
              resp.room.greateNum));
    }
  });
}

///获取聊天室首页的banner
Future<ResultBody<Banner>> getHomeBanner() async {
  return _dioJsonRequest.get<Banner>(Promotion.CHAT_ROOM_BANNER, (map) async {
    var banner = Banner.fromJson(map);
    return ResultBody(true, data: banner);
  }, parameters: {'category': 1});
}
