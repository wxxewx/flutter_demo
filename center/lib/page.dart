import 'dart:ui';

import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/utils/clip.dart';
import 'package:baselib/utils/color_util.dart';
import 'package:baselib/utils/toast.dart';
import 'package:baselib/widget/avatar.dart';
import 'package:baselib/widget/menu.dart';
import 'package:baselib/widget/user_tags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bloc.dart';

class MePage extends BlocPage<MeBloc, _Me> {
  MePage(Parameters parameters) : super(parameters);

  @override
  MeBloc generateBloc() {
    return MeBloc();
  }

  @override
  _Me generateThemeState() {
    return _Me();
  }
}

class _Me extends BlocState<MeBloc> with KeepPageStateMixin {
  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return Container(
      child: ListView(
        children: <Widget>[
          _buildUserInfo(AccountGlobal.instance, theme),
          _buildMenu(theme)
        ],
      ),
    );
  }

  @override
  ignoreWindowWidget() => true;

  /**
   * build 用户信息栏
   */
  Widget _buildUserInfo(AccountGlobal accountGlobalBloc, MTheme theme) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/me_top_bg.png", package: 'center'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              StreamBuilder<Account>(
                  initialData: accountGlobalBloc.getAccount(),
                  stream: accountGlobalBloc.account.stream,
                  builder: (context, snapshot) {
                    var avatar = snapshot.data.user.avatar;
                    return AvatarWidget(
                      avatar,
                      80,
                      fill: true,
                    );
                  }),
              Spacer(),
              //守护，待定
              Image.asset(
                'images/user_guard_none.png',
                width: 60,
                height: 60,
                package: 'center',
              )
            ],
          ),
          StreamBuilder<Account>(
              stream: accountGlobalBloc.account.stream,
              initialData: accountGlobalBloc.getAccount(),
              builder: (context, snapshot) {
                var user = snapshot.data.user;
                return Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        UserTagsWidget(
                          name: user.name,
                          lv: user.lv,
                          nameTextStyle: TextStyle(
                              fontSize: theme.themeFontSize.fontSizeBig,
                              color: theme.themeColor.themeTextColor,
                              fontWeight: FontWeight.w800),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "ID:${user.greatNum}",
                                  style: TextStyle(
                                      color:
                                          theme.themeColor.themeTextLightColor,
                                      fontSize:
                                          theme.themeFontSize.fontSizeLittle),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4),
                                  child: GestureDetector(
                                    onTap: () {
                                      Clipboard.setData(
                                          ClipboardData(text: user.greatNum));
                                      ToastUtil.show("已复制");
                                    },
                                    child: Icon(
                                      Icons.content_copy,
                                      color:
                                          theme.themeColor.themeTextLightColor,
                                      size: 12,
                                    ),
                                  ),
                                ),
                                UserTagsWidget(
                                  noble: user.noble,
                                ),
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Row(
                            children: <Widget>[
                              Text("被喜欢",
                                  style: TextStyle(
                                      color:
                                          theme.themeColor.themeTextLightColor,
                                      fontSize:
                                          theme.themeFontSize.fontSizeLittle)),
                              Container(
                                margin: EdgeInsets.only(left: 3),
                                child: Text(user.fans.toString(),
                                    style: TextStyle(
                                        color: theme.themeColor.themeTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            theme.themeFontSize.fontSizeBig)),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                child: Text("礼物数",
                                    style: TextStyle(
                                        color: theme
                                            .themeColor.themeTextLightColor,
                                        fontSize: theme
                                            .themeFontSize.fontSizeLittle)),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 3),
                                child: Text(user.fans.toString(),
                                    style: TextStyle(
                                        color: theme.themeColor.themeTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            theme.themeFontSize.fontSizeBig)),
                              )
                            ],
                          ),
                        )
                      ],
                    ));
              }),
        ],
      ),
    );
  }

  Widget _buildMenu(MTheme theme) {
    return Column(
      children: <Widget>[
        _buildMenuGroup(<Widget>[
          MenuItem(
              Image.asset(
                "images/icon_store.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "会员商城"),
          MenuItem(
              Image.asset(
                "images/icon_member_center.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "会员中心"),
          MenuItem(
              Image.asset(
                "images/icon_my_purse.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "我的钱包"),
        ]),
        _buildMenuGroup(<Widget>[
          MenuItem(
              Image.asset(
                "images/icon_share.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "推广领红包"),
          MenuItem(
            Image.asset(
              "images/icon_my_chat_room.png",
              width: 28,
              height: 28,
              package: 'center',
            ),
            "我的房间",
            onTab: () {
              Routers.navigateTo(context, "/dsdsds");
            },
          ),
          MenuItem(
              Image.asset(
                "images/icon_customer.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "在线客服"),
          MenuItem(
              Image.asset(
                "images/icon_about_us.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "关于我们"),
          MenuItem(
              Image.asset(
                "images/icon_help.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "系统帮助"),
        ]),
        _buildMenuGroup(<Widget>[
          MenuItem(
              Image.asset(
                "images/icon_update.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "检查更新"),
          MenuItem(
              Image.asset(
                "images/icon_delete_cookies.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "清除缓存"),
          MenuItem(
              Image.asset(
                "images/icon_setting.png",
                width: 28,
                height: 28,
                package: 'center',
              ),
              "账号设置"),
        ])
      ],
    );
  }

  Widget _buildMenuGroup(List<Widget> children) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14, top: 14),
      decoration: BoxDecoration(
          color: color("#F5F5F5"),
          borderRadius: BorderRadius.all(Radius.circular(18))),
      child: Column(
        children: children,
      ),
    );
  }
}
