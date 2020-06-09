class NimLoginInfo {
  final String account;
  final String token;

  NimLoginInfo(this.account, this.token);
}

///登录状态类
class NimLoginStatus {
  final int value;
  NimLoginStatusType nimLoginStatusType;

  NimLoginStatus(this.value) {
    NimLoginStatusType.values.forEach((element) {
      if (element.index == value) {
        nimLoginStatusType = element;
      }
    });
  }

  /**
   * 判断处于当前状态码时，SDK还会不会继续自动重连登录。
   *
   * @return 如果返回true，SDK将停止自动登录，需要上层app显示调用login才能继续登录
   */
  bool get wontAutoLogin {
    return nimLoginStatusType == NimLoginStatusType.KICKOUT ||
        nimLoginStatusType == NimLoginStatusType.KICK_BY_OTHER_CLIENT ||
        nimLoginStatusType == NimLoginStatusType.FORBIDDEN ||
        nimLoginStatusType == NimLoginStatusType.PWD_ERROR;
  }

  /**
   * 判断处于当前状态码时，SDK还会不会继续自动重连登录，即使进程杀掉重启，也不会再做自动登录。
   * FORBIDDEN可能会被服务器解禁，PWD_ERROR可能在服务器有修复机制因此这里还是允许进程重启时自动登录。
   *
   * @return 如果返回true，SDK将停止自动登录，push调度重启也不再connect，需要上层app显示调用login才能继续登录
   */
  bool get wontAutoLoginForever {
    return nimLoginStatusType == NimLoginStatusType.KICKOUT ||
        nimLoginStatusType == NimLoginStatusType.KICK_BY_OTHER_CLIENT;
  }

  bool get shouldReLogin {
    return nimLoginStatusType == NimLoginStatusType.UNLOGIN ||
        nimLoginStatusType == NimLoginStatusType.NET_BROKEN;
  }

  String get loginMessage {
    switch (nimLoginStatusType) {
      case NimLoginStatusType.INVALID:
        return "未知错误";
      case NimLoginStatusType.UNLOGIN:
        return "登录失败";
      case NimLoginStatusType.NET_BROKEN:
        return "网络连接已断开";
      case NimLoginStatusType.CONNECTING:
        return "正在连接服务器";
      case NimLoginStatusType.LOGINING:
        return "正在登录中";
      case NimLoginStatusType.SYNCING:
        return "正在同步数据";
      case NimLoginStatusType.LOGINED:
        return "已成功登录";
      case NimLoginStatusType.KICKOUT:
        return "被其他端的登录踢掉";
      case NimLoginStatusType.KICK_BY_OTHER_CLIENT:
        return "被同时在线的其他端主动踢掉";
      case NimLoginStatusType.FORBIDDEN:
        return "被服务器禁止登录";
      case NimLoginStatusType.VER_ERROR:
        return "客户端版本错误";
      case NimLoginStatusType.PWD_ERROR:
        return "用户名或密码错误";
    }
  }
}

enum NimLoginStatusType {
  /**
   * 未定义
   */
  INVALID,

  /**
   * 未登录/登录失败
   */
  UNLOGIN,

  /**
   * 网络连接已断开
   */
  NET_BROKEN,

  /**
   * 正在连接服务器
   */
  CONNECTING,

  /**
   * 正在登录中
   */
  LOGINING,

  /**
   * 正在同步数据
   */
  SYNCING,

  /**
   * 已成功登录
   */
  LOGINED,

  /**
   * 被其他端的登录踢掉
   */
  KICKOUT,

  /**
   * 被同时在线的其他端主动踢掉
   */
  KICK_BY_OTHER_CLIENT,

  /**
   * 被服务器禁止登录
   */
  FORBIDDEN,

  /**
   * 客户端版本错误
   */
  VER_ERROR,

  /**
   * 用户名或密码错误
   */
  PWD_ERROR
}

/**
 * 登录同步数据进度状态
 */
enum LoginSyncStatus {
  /**
   * 未开始
   */
  NO_BEGIN,

  /**
   * 开始同步（正在同步）
   */
  BEGIN_SYNC,

  /**
   * 同步完成
   */
  SYNC_COMPLETED
}
