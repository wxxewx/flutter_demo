
enum MsgStatus {
  /**
   * 草稿
   */
  draft,

  /**
   * 正在发送中
   */
  sending,

  /**
   * 发送成功
   */
  success,

  /**
   * 发送失败
   */
  fail,

  /**
   * 消息已读
   * 发送消息时表示对方已看过该消息
   * 接收消息时表示自己已读过，一般仅用于音频消息
   */
  read,

  /**
   * 未读状态
   */
  unread,
}

MsgStatus createMsgStatus(int msgStatus) {
  MsgStatus type;
  switch (msgStatus) {
    case -1:
      type = MsgStatus.draft;
      break;
    case 0:
      type = MsgStatus.sending;
      break;
    case 1:
      type = MsgStatus.success;
      break;
    case 2:
      type = MsgStatus.fail;
      break;
    case 3:
      type = MsgStatus.read;
      break;
    case 4:
      type = MsgStatus.unread;
      break;
  }
  return type;
}