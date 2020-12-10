import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/widget/avatar.dart';
import 'package:baselib/widget/loading.dart';
import 'package:baselib/widget/user_tags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fsuper/fsuper.dart';
import 'package:user/model.dart';

import 'bloc.dart';

class ProfilePage extends BlocPage<ProfileBloc, _Profile> {
  ProfilePage(Parameters parameters) : super(parameters);

  @override
  ProfileBloc generateBloc() => ProfileBloc();

  @override
  _Profile generateThemeState() => _Profile();
}

class _Profile extends BlocState<ProfileBloc> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: LoadingView(
            bloc.loadState,
            StreamBuilder<Profile>(
                stream: bloc.profile,
                initialData: null,
                builder: (context, snapshot) {
                  var profile = snapshot.data;
                  if (profile == null) {
                    return Container();
                  }
                  var imgUrls = profile.info.imgUrls;
                  return Container(
                    child: Stack(children: [
                      CustomScrollView(
                        controller: _scrollController,
                        slivers: [
                          SliverToBoxAdapter(
                              child: _buildUserCover(theme, imgUrls)),
                          SliverToBoxAdapter(
                              child: _buildUserInfo(theme, profile)),
                          SliverToBoxAdapter(
                              child: Container(
                            margin: EdgeInsets.only(left: 12, top: 40),
                            child: Text(
                              "礼物",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: theme.themeFontSize.fontSizeNormal,
                                  color: theme.themeColor.themeTextColor),
                            ),
                          )),
                          SliverToBoxAdapter(child: _buildGift(theme, profile)),
                          SliverToBoxAdapter(
                              child: Container(
                            margin: EdgeInsets.only(left: 12, top: 12),
                            child: Text(
                              "说说",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: theme.themeFontSize.fontSizeNormal,
                                  color: theme.themeColor.themeTextColor),
                            ),
                          )),
                          SliverPadding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            sliver: _buildUserTweets(context, theme, profile),
                          )
                        ],
                      )
                    ]),
                  );
                })),
      ),
    );
  }

  ///构建用户的封面
  _buildUserCover(MTheme theme, List<String> imgUrls) {
    return Container(
      height: 220,
      child: Swiper(
        autoplay: true,
        autoplayDelay: 3000,
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                activeColor: theme.themeColor.themeColor,
                color: Colors.white,
                size: 10,
                activeSize: 10,
                space: 3)),
        autoplayDisableOnInteraction: true,
        itemCount: imgUrls.isEmpty ? 1 : imgUrls.length,
        //item数量
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 10),
              fadeOutDuration: Duration(milliseconds: 10),
              placeholder:
                  AssetImage("images/placeholder_w.png", package: "baselib"),
              image: imgUrls.isNotEmpty
                  ? NetworkImage(
                      imgUrls[index],
                    )
                  : AssetImage("images/photo_banner_ploher.png",
                      package: 'user'));
        },
        onTap: (index) {},
      ),
    );
  }

  ///
  /// 构建用户信息
  _buildUserInfo(MTheme theme, Profile profile) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Stack(alignment: Alignment.centerLeft, children: [
              AvatarWidget(profile.info.avatar, 80),
              Container(
                margin: EdgeInsets.only(left: 90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile.info.name,
                      style: TextStyle(
                          fontSize: theme.themeFontSize.fontSizeNormal,
                          color: theme.themeColor.themeTextColor,
                          fontWeight: FontWeight.w800),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: UserTagsWidget(
                        lv: profile.info.lv,
                        noble: profile.info.noble,
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    profile.info.location.city,
                    style: TextStyle(
                        fontSize: theme.themeFontSize.fontSizeLittle,
                        color: theme.themeColor.themeTextColor),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          "ID:${profile.info.greatNum}",
                          style: TextStyle(
                              fontSize: theme.themeFontSize.fontSizeLittle,
                              color: theme.themeColor.themeTextColor),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.copy,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "用户签名：",
                      style: TextStyle(
                          color: theme.themeColor.themeTextLightColor,
                          fontSize: theme.themeFontSize.fontSizeSmall),
                    ),
                    Text(
                      profile.info.declaration,
                      style: TextStyle(
                          color: theme.themeColor.themeTextLightColor,
                          fontSize: theme.themeFontSize.fontSizeSmall),
                    )
                  ],
                ),
                if (profile.hobbys.isNotEmpty)
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "用户标签：",
                          style: TextStyle(
                              color: theme.themeColor.themeTextLightColor,
                              fontSize: theme.themeFontSize.fontSizeSmall),
                        ),
                        Expanded(
                            flex: 1,
                            child: Wrap(
                              spacing: 10, //主轴上子控件的间距
                              runSpacing: 5, //交叉轴上子控件之间的间距
                              alignment: WrapAlignment.start,
                              children: profile.hobbys
                                  .map((e) => FSuper(
                                        text: e.title,
                                        textColor: theme
                                            .themeColor.themeTextLightColor,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 9),
                                        corner: Corner.all(25),
                                        backgroundColor: theme
                                            .themeColor.themeAccentGreyColor,
                                      ))
                                  .toList(), //要显示的子控件集合
                            ))
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///构建礼物面板
  _buildGift(MTheme theme, Profile profile) {
    var giftLength = profile.gifts.length;

    if (giftLength == 0) {
      return Container();
    }

    var pages = giftLength ~/ 8;
    if (giftLength % 8 > 0) {
      pages = pages + 1;
    }

    return Container(
      margin: EdgeInsets.only(top: 15),
      height: 270,
      child: Swiper(
        autoplay: false,
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                activeColor: theme.themeColor.themeDartColor,
                color: theme.themeColor.themeAccentColor,
                size: 10,
                activeSize: 10,
                space: 3)),
        autoplayDisableOnInteraction: true,
        itemCount: pages,
        //item数量
        itemBuilder: (BuildContext context, int page) {
          var list = profile.gifts.sublist(page * 8,
              page == pages - 1 ? profile.gifts.length - 1 : page * 8 + 8);
          var width = (MediaQuery.of(context).size.width - 54) / 4;
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: list
                  .map((e) => Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: width,
                        decoration: BoxDecoration(
                            color: theme.themeColor.themeAccentGreyColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: FadeInImage(
                                  fit: BoxFit.fill,
                                  fadeInDuration: Duration(milliseconds: 10),
                                  fadeOutDuration: Duration(milliseconds: 10),
                                  placeholder: AssetImage(
                                      "images/placeholder_w.png",
                                      package: 'baselib'),
                                  image: NetworkImage(e.icon),
                                  width: 60,
                                  height: 60),
                            ),
                            Container(
                              child: Text(
                                e.amount.toString(),
                                style: TextStyle(
                                  color: theme.themeColor.themeTextColor,
                                  fontSize: theme.themeFontSize.fontSizeLittle,
                                ),
                              ),
                              margin: EdgeInsets.only(top: 16),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          );
        },
        onTap: (index) {},
      ),
    );
  }

  //

  ///构建用户说说列表
  _buildUserTweets(BuildContext context, MTheme theme, Profile profile) {
    var parameters = Parameters();
    parameters.putInt("type", 2);
    parameters.putInt("pageType", 2);
    parameters.putString("targetId", profile.info.uid);
    parameters.putObj("scrollController", _scrollController);
    return Routers.generatePage(context, "/squareList", parameters: parameters);
  }
}
