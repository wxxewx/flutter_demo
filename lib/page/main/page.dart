import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:fsuper/fsuper.dart';
import 'package:cike/bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'back.dart';
import 'bloc.dart';
import 'tab_controller.dart';

class MainPage extends BlocPage<MainPageBloc, _Main> {
  MainPage(Parameters parameters) : super(parameters);

  @override
  MainPageBloc generateBloc() {
    return MainPageBloc();
  }

  @override
  _Main generateThemeState() {
    return _Main();
  }
}

class _Main extends BlocState<MainPageBloc>
    with SingleTickerProviderStateMixin {
  MainTabController tabController;

  PageController _controller;

  int index = 0;

  @override
  void initState() {
    super.initState();
    tabController = bloc.find<MainTabController>();
    index = tabController.initIndex;
  }

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return WillPopScope(
        child: StreamBuilder<List<BottomTab>>(
            initialData: tabController.initTabs,
            stream: tabController.tabs.stream,
            builder: (BuildContext context,
                AsyncSnapshot<List<BottomTab>> snapshot) {
              var tabList = snapshot.data;
              _controller = PageController(
                  keepPage: true, initialPage: tabController.initIndex);
              return Material(
                child: Scaffold(
                  body: PageView.builder(
                    itemCount: tabList.length,
                    reverse: false,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Routers.generatePage(
                          context, tabList[index].router);
                    },
                    controller: _controller,
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                    backgroundColor: Colors.white,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: index,
                    items: tabList
                        .map((e) => BottomNavigationBarItem(
                            icon: _buildDotIcon(e.unSelectIcon, e.dots),
                            activeIcon: _buildDotIcon(e.selectIcon, e.dots),
                            title: _buildTitle(e, tabList)))
                        .toList(),
                    onTap: (index) {
                      _controller.jumpToPage(index);
                      setState(() {
                        this.index = index;
                      });
                    },
                    fixedColor: theme.themeColor.themeColor,
                  ),
                ),
              );
            }),
        onWillPop: () async {
          AndroidBackTop.backDesktop();
        });
  }

  /// 构建导航选中的状态
  _buildTitle(BottomTab e, List<BottomTab> tabList) {
    if (tabList.indexOf(e) == index) {
      return Text(e.title,
          style: TextStyle(
              color: e.selectTitleColor, fontSize: e.selectTitleSize));
    }
    return Text(e.title,
        style: TextStyle(
            color: e.unSelectTitleColor, fontSize: e.unSelectTitleSize));
  }

  /// 带红点的icon
  _buildDotIcon(String icon, int dots) {
    return FSuper(
      width: 25,
      height: 25,
      redPoint: dots != 0,
      redPointColor: Colors.red,
      redPointTextColor: Colors.white,
      redPointText: dots.toString(),
      redPointSize: 15,
      backgroundImage: AssetImage(icon),
    );
  }
}
