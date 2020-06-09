import 'package:nim/service/chatroom_service.dart';
import 'package:rxdart/rxdart.dart';

import 'controller_mixin.dart';

class UserController with RoomController {
  ///我再房间的权限
  BehaviorSubject<UserRole> roleStreams = BehaviorSubject();

  UserRole get _role => roleStreams.value;

  UserController() {
    roleStreams.add(UserRole.unwelcome);
  }


  void initController() {
    _initRole(roomGlobal.nimEnterChatRoomResultData);
  }

  @override
  void reSet() {
    roleStreams.add(UserRole.unwelcome);
  }

  ///初始化用户权限
  void _initRole(NimEnterChatRoomResultData nimEnterChatRoomResultData) {
    var memberType = nimEnterChatRoomResultData.member.type;
    if (memberType == MemberType.CREATOR) {
      roleStreams.add(UserRole.god);
    } else if (memberType == MemberType.ADMIN) {
      roleStreams.add(UserRole.admin);
    } else if (memberType == MemberType.LIMITED) {
      roleStreams.add(UserRole.unwelcome);
    } else {
      roleStreams.add(UserRole.civilian);
    }
  }

  //获取用户有权限使用的动作
  List<UserAction> getUserOperations() {
    if (_role == UserRole.admin) {
      return _adminActions;
    } else if (_role == UserRole.god) {
      return _godActions;
    } else if (_role == UserRole.civilian) {
      return _civilianActions;
    } else if (_role == UserRole.unwelcome) {
      return _unwelcomeActions;
    }
  }

  //用户是否可以执行该操作
  bool canDoAction(UserAction userAction) =>
      getUserOperations().contains(userAction);
}

enum UserRole {
  god, //上帝
  admin, //管理员
  civilian, //平头老百姓
  unwelcome //不受房间欢迎的，权限受限
}
enum UserAction {
  getMic, //获取麦克风
  applyGetMic, //申请上麦
}

var _godActions = [UserAction.getMic];

var _adminActions = [UserAction.getMic];

var _civilianActions = [UserAction.applyGetMic];

var _unwelcomeActions = [];
