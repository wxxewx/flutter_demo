import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/domain/user/avatar.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/widget/avatar.dart';
import 'package:baselib/widget/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:square/squareItem.dart';
import 'package:square/widget/NineGridImage.dart';
import 'package:date_format/date_format.dart';

import 'bloc.dart';

///
///[type] 1推荐，2最新
///[pageType] 加载类型，1为独立界面，2为模块加载
///[scrollController] 用于外界嵌套来控制列表滑动到底部自动加载
class SquareListPage extends BlocPage<SquareListBloc, _SquareListState> {
  SquareListPage(Parameters parameters) : super(parameters);

  @override
  SquareListBloc generateBloc() {
    return SquareListBloc();
  }

  @override
  _SquareListState generateThemeState() {
    return _SquareListState();
  }
}

class _SquareListState extends BlocState<SquareListBloc>
    with KeepPageStateMixin {
  ScrollController _scrollController;

  var pageType;

  @override
  void initState() {
    bloc.setType(parameters.getInt("type"));
    super.initState();
    pageType = parameters.getInt("pageType") ?? 1;
    pageType == 1
        ? _scrollController = ScrollController()
        : _scrollController = parameters.getObj("scrollController");
    _scrollController.addListener(() {
      var position = _scrollController.position;
      // 小于50px时，触发上拉加载；
      if (position.maxScrollExtent - position.pixels < 200) {
        bloc.loadMoreTweets();
      }
    });
  }

  @override
  ignoreWindowWidget() => true;

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return pageType == 1 ? _buildPageType_1(theme) : _buildPageType_2(theme);
  }

  _buildPageType_1(MTheme theme) {
    return StreamBuilder<List<SquareItem>>(
        initialData: List(),
        stream: bloc.squareItems,
        builder:
            (BuildContext context, AsyncSnapshot<List<SquareItem>> snapshot) {
          var squares = snapshot.data;
          return RefreshIndicator(
            onRefresh: () async {
              await bloc.refreshTweets();
              return;
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: LoadingView(
                  bloc.loadState,
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.builder(
                      shrinkWrap: true,
                      controller: _scrollController,
                      itemBuilder: (BuildContext context, int index) {
                        var item = snapshot.data[index];
                        return buildItem(context, item, theme);
                      },
                      itemCount: squares.length,
                    ),
                  )),
            ),
          );
        });
  }

  _buildPageType_2(MTheme theme) {
    return StreamBuilder<List<SquareItem>>(
        initialData: List(),
        stream: bloc.squareItems,
        builder:
            (BuildContext context, AsyncSnapshot<List<SquareItem>> snapshot) {
          return SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {

              var item = snapshot.data[index];
              return buildItem(context, item, theme);
            },childCount: snapshot.data.length),
          );
        });
  }

  ///
  /// 构建说说列表item
  buildItem(BuildContext context, SquareItem item, MTheme theme) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                child: AvatarWidget(Avatar(item.pubUserAvatar), 60),
                onTap: () {
                  var parameters = Parameters();
                  parameters.putString("userId", item.pubUserId);
                  Routers.navigateTo(context, "/profile",
                      parameters: parameters);
                },
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Text(
                  item.pubUserName,
                  style: TextStyle(
                      color: theme.themeColor.themeTextColor,
                      fontSize: theme.themeFontSize.fontSizeBig,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(),
              IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 8),
            child: Text(
              item.content,
              style: TextStyle(
                color: theme.themeColor.themeTextColor,
                fontSize: theme.themeFontSize.fontSizeNormal,
              ),
            ),
          ),
          if (item.photos.isNotEmpty)
            Container(
              child: NineGridImage(
                  item.photos, MediaQuery.of(context).size.width - 32),
              width: double.infinity,
            ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: item.tags
                  .asMap()
                  .map((key, value) {
                    return MapEntry(
                        key,
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: theme.themeColor.themeDividerColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: theme.themeColor.themeAccentGreyColor),
                          child: Row(
                            children: [
                              if (key == 0)
                                Container(
                                  child: Image.asset(
                                    "images/tweet_tag_icon.png",
                                    package: "square",
                                    width: 18,
                                    height: 18,
                                  ),
                                  margin: EdgeInsets.only(right: 3),
                                ),
                              Text(
                                value,
                                style: TextStyle(
                                  fontSize: theme.themeFontSize.fontSizeLittle,
                                  color: theme.themeColor.themeTextLightColor,
                                ),
                              )
                            ],
                          ),
                        ));
                  })
                  .values
                  .toList(),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text(
                    formatDate(
                        DateTime.fromMillisecondsSinceEpoch(
                            item.systemTime * 1000),
                        [yyyy, '/', mm, '/', dd]),
                    style: TextStyle(
                        color: theme.themeColor.themeTextLightColor,
                        fontSize: theme.themeFontSize.fontSizeSmall),
                  ),
                  Spacer(),
                  IconButton(
                      icon: Image.asset(
                        item.isLiked
                            ? "images/tweet_liked_icon.png"
                            : "images/tweet_un_like_icon.png",
                        package: "square",
                        width: 24,
                        height: 24,
                      ),
                      onPressed: () {
                        bloc.like(item);
                      }),
                  Text(
                    item.likeNumber.toString(),
                    style: TextStyle(
                        fontSize: theme.themeFontSize.fontSizeLittle,
                        color: theme.themeColor.themeTextLightColor),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: IconButton(
                        icon: Image.asset(
                          "images/tweet_to_chat_icon.png",
                          package: "square",
                          width: 24,
                          height: 24,
                        ),
                        onPressed: () {}),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 12),
            child:
                Divider(height: 1, color: theme.themeColor.themeDividerColor),
          ),
        ],
      ),
    );
  }
}
