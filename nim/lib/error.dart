class NimError {
  final int code;
  final String message;

  NimError(this.code, this.message);

  NimError.NimException(message) : this(-2, message);

  NimError.AppKeyError() : this(-1, "appKey不正确");

  NimError.AccountError() : this(302, "account或者token不能为空");

  NimError.TimeOutError() : this(408, "登陆超时");

  NimError.NetBrokenError() : this(415, "网络连接断开或连接失败");

  NimError.OverclockError() : this(416, "请求超频");

  NimError.OtherClientError() : this(417, "在其它客户端登录");

  NimError.DataBaseError() : this(1000, "数据库未打开");
}

NimError loginErrorHandler(String code, String message) {
  switch (code) {
    case "-2":
      return NimError.NimException(message);
    case "-1":
      return NimError.AppKeyError();
    case "302":
      return NimError.AccountError();
    case "408":
      return NimError.TimeOutError();
    case "415":
      return NimError.NetBrokenError();
    case "416":
      return NimError.OverclockError();
    case "417":
      return NimError.OtherClientError();
    case "1000":
      return NimError.DataBaseError();
  }
}
