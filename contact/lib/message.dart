import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'bloc.dart';

class MessagePage extends BlocPage<MessageBloc,_Message> {
  MessagePage(Parameters parameters) : super(parameters);

  @override
  MessageBloc generateBloc() {
    return MessageBloc();
  }

  @override
  _Message generateThemeState() {
    return _Message();
  }
}

class _Message extends BlocState<MessageBloc>
    with SingleTickerProviderStateMixin,KeepPageStateMixin{
  TabController _controller;

  var _tabs = [
    Tab(text: "消息"),
    Tab(text: "好友"),
  ];


  @override
  ignoreWindowWidget()=>true;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: _tabs.length,
      vsync: this, //动画效果的异步处理，默认格式，背下来即可
    );
  }

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return Container(
      color: Colors.white,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Container(
              margin: EdgeInsets.symmetric(horizontal: 80),
              child: TabBar(
                indicatorColor: theme.themeColor.themeColor,
                indicatorWeight: 4,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: theme.themeColor.themeBlackColor,
                labelStyle:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                unselectedLabelColor: theme.themeColor.themeLightGreyColor,
                unselectedLabelStyle: TextStyle(
                  fontSize: 18,
                ),
                controller: _controller,
                tabs: _tabs,
              ),
            ),
          ),
          body: TabBarView(
              controller: _controller, //配置控制器
              children: _tabs.map((Tab tab) {
                var path = tab.text == "消息" ? "/conversation" : "/contacts";
                return Routers.generatePage(context, path);
              }).toList())),
    );
  }
}
