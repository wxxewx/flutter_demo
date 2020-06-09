import 'dart:async';

import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/style/input_style.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/utils/toast.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fsuper/fsuper.dart';

import 'bloc.dart';
import 'country.dart';
import 'model.dart';

class LoginPage extends BlocPage<LoginBloc,_Login> {
  LoginPage(Parameters parameters) : super(parameters);

  @override
  LoginBloc generateBloc() {
    return LoginBloc();
  }

  @override
  _Login generateThemeState() {
    return _Login();
  }
}

class _Login extends BlocState<LoginBloc> {
  TapGestureRecognizer userAgreementRecognizer = TapGestureRecognizer();
  TapGestureRecognizer privacyAgreementRecognizer = TapGestureRecognizer();


  void initState() {
    super.initState();
    userAgreementRecognizer.onTap = () {
      ToastUtil.show("userAgreementRecognizer");
    };
    privacyAgreementRecognizer.onTap = () {
      ToastUtil.show("privacyAgreementRecognizer");
    };

  }

  @override
  ignoreWindowWidget()=>true;

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return Material(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "登录咚咚",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 24),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 60),
                child: _buildPhone(theme)),
            Container(
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                child: _buildSmsCode(theme)),
            StreamBuilder<RegisterStatus>(
                stream: bloc.registerStatus.stream,
                initialData: RegisterStatus.normal(),
                builder: (context, snapshot) {
                  return GestureDetector(
                    onTap: () {
                      snapshot.data.registered ? bloc.login() : bloc.register();
                    },
                    child: FSuper(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 30),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      text: snapshot.data.registered ? '登录' : "注册",
                      textAlignment: Alignment.center,
                      textSize: theme.themeFontSize.fontSizeNormal,
                      textColor: theme.themeColor.themeTextWhiteColor,
                      corner: Corner.all(25),
                      backgroundColor: theme.themeColor.themeColor,
                    ),
                  );
                }),
            Spacer(),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "其他登录方式",
                    style: TextStyle(
                        fontSize: theme.themeFontSize.fontSizeSmall,
                        color: theme.themeColor.themeTextShallowColor),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            child: _threeLoginItem(
                                theme, 'images/wechat_icon.png', '微信'),
                            onTap: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: GestureDetector(
                            child: _threeLoginItem(
                                theme, 'images/quickly_icon.png', '快速登录'),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: _agreement(theme),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  ///三方登录选项
  Widget _threeLoginItem(MTheme theme, String asset, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(asset, width: 45, height: 45, package: 'login'),
        Text(
          title,
          style: TextStyle(
              color: theme.themeColor.themeTextShallowColor,
              fontSize: theme.themeFontSize.fontSizeLittle),
        )
      ],
    );
  }

  ///手机号输入框
  Widget _buildPhone(MTheme theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10),
          child: StreamBuilder<Country>(
              stream: bloc.selectCountry.stream,
              initialData: Country.normal(),
              builder: (context, snapshot) {
                var country = snapshot.data;
                return StreamBuilder<List<Country>>(
                    stream: bloc.countrys.stream,
                    initialData: List<Country>(),
                    builder: (context, snapshot) {
                      var list = snapshot.data;
                      return DropdownButton<Country>(
                        value: country,
                        onChanged: (Country newValue) {
                          bloc.changedCountryCode(newValue);
                        },
                        items: list.map((country) {
                          return DropdownMenuItem<Country>(
                            value: country,
                            child: Text("+ ${country.code} ${country.name}",
                                style: TextStyle(
                                    fontSize: theme.themeFontSize.fontSizeSmall,
                                    color: Colors.black)),
                          );
                        }).toList(),
                      );
                    });
              }),
        ),
        Expanded(
          child: StreamBuilder<String>(
              stream: bloc.historyPhone.stream,
              initialData: "",
              builder: (context, snapshot) {
                return TextField(
                  maxLength: 20,
                  onChanged: (value) {
                    bloc.editPhoneChanged(value);
                  },
                  controller: TextEditingController(text: snapshot.data),
                  cursorColor: Colors.grey,
                  strutStyle: StrutStyle(
                      fontSize: theme.themeFontSize.fontSizeBig, height: 1),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: theme.themeFontSize.fontSizeBig),
                  decoration: InputDecorationStyle.roundLightGreyBox("请输入手机号"),
                );
              }),
        ),
      ],
    );
  }

  //验证码输入框
  Widget _buildSmsCode(MTheme theme) {
    return Stack(children: <Widget>[
      TextField(
        onChanged: (value) {
          bloc.smsCodeChanged(value);
        },
        maxLength: 20,
        cursorColor: Colors.grey,
        strutStyle:
            StrutStyle(fontSize: theme.themeFontSize.fontSizeBig, height: 1),
        style: TextStyle(
            color: Colors.black, fontSize: theme.themeFontSize.fontSizeBig),
        decoration: InputDecorationStyle.roundLightGreyBox("请输入验证码"),
      ),
      Positioned(
          right: 16,
          top: 12,
          child: StreamBuilder<int>(
              initialData: 0,
              stream: bloc.sentSmsCount.stream,
              builder: (context, snapshot) {
                return GestureDetector(
                    onTap: () async {
                      bloc.sentSms();
                    },
                    child: Text(
                      snapshot.data == 0 ? "获取验证码" : "${snapshot.data}s",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: theme.themeFontSize.fontSizeNormal),
                    ));
              }))
    ]);
  }

  ///隐私协议部分
  Text _agreement(MTheme theme) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: "注册登录代表同意",
          style: TextStyle(
              color: theme.themeColor.themeTextShallowColor,
              fontSize: theme.themeFontSize.fontSizeLittle)),
      TextSpan(
          text: "用户协议",
          recognizer: userAgreementRecognizer,
          style: TextStyle(
              color: theme.themeColor.themeTextBlueColor,
              fontSize: theme.themeFontSize.fontSizeLittle,
              decoration: TextDecoration.underline,
              decorationColor: theme.themeColor.themeTextBlueColor)),
      TextSpan(
          text: "和",
          style: TextStyle(
              color: theme.themeColor.themeTextShallowColor,
              fontSize: theme.themeFontSize.fontSizeLittle)),
      TextSpan(
          text: "隐私政策",
          recognizer: privacyAgreementRecognizer,
          style: TextStyle(
              color: theme.themeColor.themeTextBlueColor,
              fontSize: theme.themeFontSize.fontSizeLittle,
              decoration: TextDecoration.underline,
              decorationColor: theme.themeColor.themeTextBlueColor)),
    ]));
  }
}
