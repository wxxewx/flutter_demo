enum MsgType {
  /**
   * 未知消息类型
   */
  undef,

  /**
   * 文本消息类型
   */
  text,

  /**
   * 图片消息
   */
  image,

  /**
   * 音频消息
   */
  audio,

  /**
   * 视频消息
   */
  video,

  /**
   * 位置消息
   */
  location,

  /**
   * 文件消息
   */
  file,

  /**
   * 音视频通话
   */
  avchat,

  /**
   * 通知消息
   */
  notification,

  /**
   * 提醒类型消息
   */
  tip,

  /**
   * 机器人消息
   */
  robot,

  /**
   * 第三方APP自定义消息
   */
  custom,
}

MsgType createMsgType(int msgType) {
  MsgType type;
  switch (msgType) {
    case -1:
      type = MsgType.undef;
      break;
    case 0:
      type = MsgType.text;
      break;
    case 1:
      type = MsgType.image;
      break;
    case 2:
      type = MsgType.audio;
      break;
    case 3:
      type = MsgType.video;
      break;
    case 4:
      type = MsgType.location;
      break;
    case 6:
      type = MsgType.file;
      break;
    case 7:
      type = MsgType.avchat;
      break;
    case 5:
      type = MsgType.notification;
      break;
    case 10:
      type = MsgType.tip;
      break;
    case 11:
      type = MsgType.robot;
      break;
    case 100:
      type = MsgType.custom;
      break;
  }
  return type;
}
