
enum SessionType {
  None,

  /**
   * 单聊
   */
  P2P,

  /**
   * 群聊
   */
  Team,

  /**
   * 超大群
   */
  SUPER_TEAM,

  /**
   * 系统消息
   */
  System,

  /**
   * 聊天室
   */
  ChatRoom,
}

SessionType createSessionType(int sessionType) {
  SessionType type;
  switch (sessionType) {
    case -1:
      type = SessionType.None;
      break;
    case 0:
      type = SessionType.P2P;
      break;
    case 1:
      type = SessionType.None;
      break;
    case 5:
      type = SessionType.SUPER_TEAM;
      break;
    case 10001:
      type = SessionType.System;
      break;
    case 10002:
      type = SessionType.ChatRoom;
      break;
  }
  return type;
}