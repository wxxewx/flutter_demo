import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bloc.dart';

class SquarePage extends BlocPage<SquareBloc, _Square> {
  SquarePage(Parameters parameters) : super(parameters);

  @override
  SquareBloc generateBloc() {
    return SquareBloc();
  }

  @override
  _Square generateThemeState() {
    return _Square();
  }
}

class _Square extends BlocState<SquareBloc>
    with
        SingleTickerProviderStateMixin,
        KeepPageStateMixin,
        TickerProviderStateMixin {
  TabController _tabController;
  AnimationController _animationController;

  var _tabs = [
    Tab(text: "推荐"),
    Tab(text: "最新"),
  ];

  @override
  ignoreWindowWidget() => true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabs.length,
      vsync: this, //动画效果的异步处理，默认格式
    );
    _animationController = AnimationController(
        duration: const Duration(seconds: 1), vsync: this, lowerBound: 0.8);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      }
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
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
                controller: _tabController,
                tabs: _tabs,
              ),
            ),
          ),
          body: Stack(
            children: [
              TabBarView(
                  controller: _tabController, //配置控制器
                  children: _tabs.map((Tab tab) {
                    var parameters = Parameters();
                    tab.text == "推荐"
                        ? parameters.putInt("type", 1)
                        : parameters.putInt("type", 2);
                    return Routers.generatePage(context, "/squareList",
                        parameters: parameters);
                  }).toList()),
              Positioned(
                  bottom: 40,
                  right: 40,
                  child: GestureDetector(
                    onTap: () {
                      Routers.navigateTo(context, "/tagSelect");
                    },
                    child: ScaleTransition(
                      scale: _animationController,
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                            color: theme.themeColor.themeColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.add,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
