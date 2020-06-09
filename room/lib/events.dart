import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/utils/dialog.dart';
import 'package:baselib/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:room/room/controller/room_global.dart';

import 'api.dart';

Map<String, String> savePassWorlds = {};

/// [parameters]
/// 需要的参数
/// roomId：房间Id
/// passWorld：密码
Future<Parameters> joinRoom(BuildContext context, Parameters parameters) async {
  //需要先去申请权限
  if (!(await requestPermission())) return null;
  var roomId = parameters.getString("roomId");
  var chatRoom = RoomGlobal.instance.chatRoom;
  //表示当前已经在该房间了
  if (RoomGlobal.instance.isInTheRoom(roomId)) {
    Routers.navigateTo(context, '/room');
  }
  //没有在该房间需要重新加入房间
  else {
    var account = AccountGlobal.instance.getAccount();
    //用户登录账号异常或者未登录，正常情况不会出现该情况
    if (account == null) {
      Routers.navigateTo(context, '/login');
      return null;
    }
    //取出之前加入这个房间保存起来的房间密码
    var passWorld = savePassWorlds[account.userId + '/' + roomId] ?? "";
    //弹出dialog提示
    showTipLoading(context);
    //去服务器校验密码并且获取聊天室的详情
    var roomDetail = await getRoomDetail(account, roomId, passWorld: passWorld);
    if (!roomDetail.isSuccess && roomDetail.error.code == 401) {
      Navigator.pop(context);
      ToastUtil.show(roomDetail.error.msg);
    } else if (!roomDetail.isSuccess && roomDetail.error.code != 401) {
      Navigator.pop(context);
      ToastUtil.show(roomDetail.error.msg);
    }
    //请求成功
    //跳转到聊天室
    else {
      savePassWorlds[roomId] = passWorld;
      //聊天室是否开放
      if (roomDetail.data.enable) {
        hideWindowWidget();
        var resultBody = await RoomGlobal.instance.joinRoom(roomDetail.data);
        Navigator.pop(context);
        if (resultBody.isSuccess) {
          Routers.navigateTo(context, '/room');
        } else {
          ToastUtil.show(resultBody.error.msg);
        }
      } else {
        Navigator.pop(context);
        ToastUtil.show("房间已关闭");
      }
    }
  }
}

///申请权限
Future<bool> requestPermission() async {
  Permission permission = Permission.microphone;
  var status = await permission.request();
  return status == PermissionStatus.granted;
}
