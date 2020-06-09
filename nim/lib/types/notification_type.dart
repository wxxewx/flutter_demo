/**
 * 通知消息类型
 */
enum NotificationType {
  /**
   * 未定义类型
   */
  undefined,

  /**
   * TEAM：邀请群成员，用于讨论组中，讨论组可直接拉人入群
   */
  InviteMember,

  /**
   * TEAM：移除群成员
   */
  KickMember,

  /**
   * TEAM：有成员离开群
   */
  LeaveTeam,

  /**
   * TEAM：群资料更新
   */
  UpdateTeam,

  /**
   * TEAM：群被解散
   */
  DismissTeam,

  /**
   * TEAM：管理员通过用户入群申请
   */
  PassTeamApply,

  /**
   * TEAM：群组拥有者权限转移通知
   */
  TransferOwner,

  /**
   * TEAM：新增管理员通知
   */
  AddTeamManager,

  /**
   * TEAM：撤销管理员通知
   */
  RemoveTeamManager,

  /**
   * TEAM：用户接受入群邀请
   */
  AcceptInvite,

  /**
   * TEAM：群成员禁言/解禁
   */
  MuteTeamMember,

  /**
   * ChatRoom：成员进入聊天室
   */
  ChatRoomMemberIn,

  /**
   * ChatRoom：成员离开聊天室
   */
  ChatRoomMemberExit,

  /**
   * ChatRoom：成员被加黑
   */
  ChatRoomMemberBlackAdd,

  /**
   * ChatRoom：成员被取消黑名单
   */
  ChatRoomMemberBlackRemove,

  /**
   * ChatRoom：成员被设置禁言
   */
  ChatRoomMemberMuteAdd,

  /**
   * ChatRoom：成员被取消禁言
   */
  ChatRoomMemberMuteRemove,

  /**
   * ChatRoom：设置为管理员
   */
  ChatRoomManagerAdd,

  /**
   * ChatRoom：取消管理员
   */
  ChatRoomManagerRemove,

  /**
   * ChatRoom：成员设定为固定成员
   */
  ChatRoomCommonAdd,

  /**
   * ChatRoom：成员取消固定成员
   */
  ChatRoomCommonRemove,

  /**
   * ChatRoom：聊天室被关闭了
   */
  ChatRoomClose,

  /**
   * ChatRoom：聊天室信息被更新了
   */
  ChatRoomInfoUpdated,

  /**
   * ChatRoom：成员被踢了
   */
  ChatRoomMemberKicked,

  /**
   * ChatRoom: 新增临时禁言
   */
  ChatRoomMemberTempMuteAdd,

  /**
   * ChatRoom: 主动解除临时禁言
   */
  ChatRoomMemberTempMuteRemove,

  /**
   * ChatRoom: 成员主动更新了聊天室内的角色信息(仅指nick/avator/ext)
   */
  ChatRoomMyRoomRoleUpdated,

  /**
   * ChatRoom: 队列中有变更
   */
  ChatRoomQueueChange,

  /**
   * ChatRoom: 聊天室被禁言了,只有管理员可以发言,其他人都处于禁言状态
   */
  ChatRoomRoomMuted,

  /**
   * ChatRoom: 聊天室解除全体禁言状态
   */
  ChatRoomRoomDeMuted,

  /**
   * ChatRoom: 队列批量变更
   */
  ChatRoomQueueBatchChange,
}

NotificationType createNotificationType(int value) {
  NotificationType type;
  switch (value) {
    case -1:
      type = NotificationType.undefined;
      break;
    case 0:
      type = NotificationType.InviteMember;
      break;
    case 1:
      type = NotificationType.KickMember;
      break;
    case 2:
      type = NotificationType.LeaveTeam;
      break;
    case 3:
      type = NotificationType.UpdateTeam;
      break;
    case 4:
      type = NotificationType.DismissTeam;
      break;
    case 5:
      type = NotificationType.PassTeamApply;
      break;
    case 6:
      type = NotificationType.TransferOwner;
      break;
    case 7:
      type = NotificationType.AddTeamManager;
      break;
    case 8:
      type = NotificationType.RemoveTeamManager;
      break;
    case 9:
      type = NotificationType.AcceptInvite;
      break;
    case 10:
      type = NotificationType.MuteTeamMember;
      break;
    case 301:
      type = NotificationType.ChatRoomMemberIn;
      break;
    case 302:
      type = NotificationType.ChatRoomMemberExit;
      break;
    case 303:
      type = NotificationType.ChatRoomMemberBlackAdd;
      break;
    case 304:
      type = NotificationType.ChatRoomMemberBlackRemove;
      break;
    case 305:
      type = NotificationType.ChatRoomMemberMuteAdd;
      break;
    case 306:
      type = NotificationType.ChatRoomMemberMuteRemove;
      break;
    case 307:
      type = NotificationType.ChatRoomManagerAdd;
      break;
    case 308:
      type = NotificationType.ChatRoomManagerRemove;
      break;
    case 309:
      type = NotificationType.ChatRoomCommonAdd;
      break;
    case 310:
      type = NotificationType.ChatRoomCommonRemove;
      break;
    case 311:
      type = NotificationType.ChatRoomClose;
      break;
    case 312:
      type = NotificationType.ChatRoomInfoUpdated;
      break;
    case 313:
      type = NotificationType.ChatRoomMemberKicked;
      break;
    case 314:
      type = NotificationType.ChatRoomMemberTempMuteAdd;
      break;
    case 315:
      type = NotificationType.ChatRoomMemberTempMuteRemove;
      break;
    case 316:
      type = NotificationType.ChatRoomMyRoomRoleUpdated;
      break;
    case 317:
      type = NotificationType.ChatRoomQueueChange;
      break;
    case 318:
      type = NotificationType.ChatRoomRoomMuted;
      break;
    case 319:
      type = NotificationType.ChatRoomRoomDeMuted;
      break;
    case 320:
      type = NotificationType.ChatRoomQueueBatchChange;
      break;
    case 315:
      type = NotificationType.ChatRoomMemberTempMuteRemove;
      break;
    case 315:
      type = NotificationType.ChatRoomMemberTempMuteRemove;
      break;
    case 315:
      type = NotificationType.ChatRoomMemberTempMuteRemove;
      break;
    case 315:
      type = NotificationType.ChatRoomMemberTempMuteRemove;
      break;
    case 315:
      type = NotificationType.ChatRoomMemberTempMuteRemove;
      break;
  }
  return type;
}
