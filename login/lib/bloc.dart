import 'dart:async';

import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/utils/toast.dart';
import 'package:login/country.dart';
import 'package:login/model.dart';
import 'package:rxdart/rxdart.dart';

import 'api.dart';

class LoginBloc extends BaseBloc {
  PublishSubject<List<Country>> countrys = PublishSubject();

  PublishSubject<Country> selectCountry = PublishSubject();
  Country _selectCountry;

  PublishSubject<int> sentSmsCount = PublishSubject();
  int _sentSmsCount = 0;
  String _smsCode = '';
  StreamSubscription _sentSmsCountSubscription;

  PublishSubject historyPhone = PublishSubject<String>();
  String _phone = "";

  PublishSubject<RegisterStatus> registerStatus = PublishSubject();

  StreamSubscription<List<Country>> _countrysSubscription;

  StreamSubscription _accountStatusSubscription;

  @override
  void initState() {
    sentSmsCount.add(_sentSmsCount);
    historyPhone.add(_phone);
    registerStatus.add(RegisterStatus.normal());
    _countrysSubscription = CountryMeta.instance.listen(onData: _countrys);
    _accountStatusSubscription =
        AccountGlobal.instance.accountStatus.listen(_accountStatus);
  }

  //账户登录状态变更的
  void _accountStatus(LoginInfo value) {
    if (value.status == LoginStatus.ONLINE) {
      ToastUtil.show(value.tip);
      Routers.navigateTo(context, "/main",
          forceLogin: true, replace: true, clearStack: true);
    } else if (value == LoginStatus.FAILED) {
      ToastUtil.show(value.tip);
    }
  }

  void _countrys(List<Country> values) {
    countrys.add(values);
    if (values.length > 0) {
      _selectCountry = values[0];
      selectCountry.add(_selectCountry);
    } else {
      _selectCountry = Country.normal();
      selectCountry.add(_selectCountry);
    }
  }

  void editPhoneChanged(String value) {
    _phone = value;
  }

  void smsCodeChanged(String value) {
    _smsCode = value;
  }

  //发送验证码
  void sentSms() async {
    if (_phone.isEmpty) {
      ToastUtil.show("请输入手机号码!");
      return;
    }
    if (_sentSmsCount != 0) return;
    var body = await getSms(_phone, _selectCountry);
    if (body.isSuccess) {
      registerStatus.add(body.data);
    } else {
      ToastUtil.show(body.error.msg);
      return;
    }
    _sentSmsCount = 60;
    _sentSmsCountSubscription = Stream.periodic(Duration(seconds: 1))
        .map((value) => _sentSmsCount - 1)
        .listen((value) {
      _sentSmsCount = value;
      sentSmsCount.add(_sentSmsCount);
      if (_sentSmsCount == 0) _sentSmsCountSubscription.cancel();
    });
  }

  //国家代码
  void changedCountryCode(Country newValue) {
    _selectCountry = newValue;
    selectCountry.add(newValue);
  }

  /**
   * 登录
   */
  login() async {
    if (_phone.isEmpty) {
      ToastUtil.show("请输入手机号码!");
      return;
    }
    if (_smsCode.isEmpty) {
      ToastUtil.show("请输验证码!");
      return;
    }

    //
    var body = await loginService(_phone, _smsCode, _selectCountry);

    if (body.isSuccess) {
      AccountGlobal.instance.loginSuccess(body.data);
    } else {
      ToastUtil.show(body.error.msg);
    }
  }

  /**
   * 注册
   */
  register() {}

  @override
  void dispose() {
    _countrysSubscription.cancel();
    _sentSmsCountSubscription.cancel();
    selectCountry.close();
    countrys.close();
    sentSmsCount.close();
  }
}
