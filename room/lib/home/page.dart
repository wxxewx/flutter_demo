import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/utils/color_util.dart';
import 'package:baselib/utils/toast.dart';
import 'package:baselib/widget/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:fsuper/fsuper.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:room/events.dart';
import 'package:room/home/item.dart';
import 'package:room/model/room.dart';
import 'bloc.dart';

class RoomHomePage extends BlocPage<RoomHomeBloc, _RoomHomePage> {
  RoomHomePage(Parameters parameters) : super(parameters);

  @override
  RoomHomeBloc generateBloc() => RoomHomeBloc();

  @override
  _RoomHomePage generateThemeState() => _RoomHomePage();
}

class _RoomHomePage extends BlocState<RoomHomeBloc> with KeepPageStateMixin {
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      var position = _scrollController.position;
      // 小于50px时，触发上拉加载；
      if (position.maxScrollExtent - position.pixels < 50) {
        bloc.loadMoreRadio();
      }
    });
  }

  @override
  ignoreWindowWidget() => true;

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return Container(
      child: Scaffold(
          appBar: _buildAppBarSection(theme),
          body: RefreshIndicator(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: LoadingView(
                    bloc.loadState,
                    StreamBuilder<List<Item>>(
                        stream: bloc.homeItems,
                        initialData: [],
                        builder: (context, snapshot) {
                          return ListView.builder(
                            shrinkWrap: true,
                            controller: _scrollController,
                            itemBuilder: (context, index) {
                              var item = snapshot.data[index];
                              if (item is BannerItem) {
                                return _buildBannerSection(theme, item);
                              } else if (item is BasicRoomItem) {
                                return _buildBasicRoomSection(theme, item);
                              } else if (item is QuickMenuItem) {
                                return _buildQuickMenuSection(theme, item);
                              } else {
                                return _buildRadioRoomSection(theme, item);
                              }
                            },
                            itemCount: snapshot.data.length,
                          );
                        })),
              ),
              onRefresh: () async {
                await bloc.loadData();
                return true;
              })),
    );
  }

  ///
  /// 电台类型面板
  ///
  Widget _buildRadioRoomSection(MTheme theme, RadioRoomItem item) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(14),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "热门电台",
                  style: TextStyle(
                      fontSize: theme.themeFontSize.fontSizeBig,
                      color: theme.themeColor.themeTextColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          GridView.builder(
            itemBuilder: (context, index) {
              return _buildRadioRoomItem(theme, item.rooms[index], index);
            },
            itemCount: item.rooms.length,
            shrinkWrap: true,
            physics: new NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.7),
          )
        ],
      ),
    );
  }

  ///
  /// 电台的条目item
  ///
  _buildRadioRoomItem(MTheme theme, ChatRoom room, int index) {
    var width = MediaQuery.of(context).size.width - 44;
    return InkWell(
      onTap: () {
        joinRoom(context, Parameters()..putString("roomId", room.id));
      },
      child: Container(
        margin: index % 2 != 0
            ? EdgeInsets.only(top: 15, left: 10)
            : EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  child: FadeInImage(
                      width: width / 2,
                      height: width / 2,
                      fit: BoxFit.fill,
                      fadeInDuration: Duration(milliseconds: 10),
                      fadeOutDuration: Duration(milliseconds: 10),
                      placeholder: AssetImage("images/placeholder_wh.png",
                          package: "baselib"),
                      image: NetworkImage(
                        room.roomImg,
                      )),
                  borderRadius: BorderRadius.circular(8),
                ),
                Positioned(
                    bottom: 14,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Text.rich(TextSpan(children: [
                            WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Image.asset(
                                  'images/home_fire.png',
                                  package: 'room',
                                  width: 12,
                                  height: 12,
                                )),
                            WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Text(room.index.toString(),
                                    style: TextStyle(
                                        fontSize:
                                            theme.themeFontSize.fontSizeSmall,
                                        color: theme
                                            .themeColor.themeTextWhiteColor)))
                          ])),
                        )
                      ],
                    ))
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 6),
                child: Text(
                  room.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: theme.themeFontSize.fontSizeSmall,
                      color: theme.themeColor.themeTextColor,
                      fontWeight: FontWeight.w900),
                )),
            Container(
                margin: EdgeInsets.only(top: 6),
                child: Text(
                  room.greateNum.isNotEmpty ? "ID:${room.greateNum}" : "",
                  style: TextStyle(
                      fontSize: theme.themeFontSize.fontSizeSmall,
                      color: theme.themeColor.themeColor,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }

  /// 创建普通的聊天室面板
  Widget _buildBasicRoomSection(MTheme theme, BasicRoomItem item) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(14),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  item.title,
                  style: TextStyle(
                      fontSize: theme.themeFontSize.fontSizeBig,
                      color: theme.themeColor.themeTextColor,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text("查看全部",
                    style: TextStyle(
                        fontSize: theme.themeFontSize.fontSizeLittle,
                        color: theme.themeColor.themeTextLightColor)),
                Icon(Icons.navigate_next,
                    color: theme.themeColor.themeTextLightColor)
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: new NeverScrollableScrollPhysics(),
            children: <Widget>[
              for (var room in item.rooms) _buildBasicRoomItem(theme, room)
            ],
          )
        ],
      ),
    );
  }

  ///
  ///
  Widget _buildBasicRoomItem(MTheme theme, ChatRoom room) {
    return InkWell(
      onTap: () {
        joinRoom(context, Parameters()..putString("roomId", room.id));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 14),
        child: Row(
          children: <Widget>[
            ClipRRect(
              child: FadeInImage(
                  width: 52,
                  height: 52,
                  fit: BoxFit.fill,
                  fadeInDuration: Duration(milliseconds: 10),
                  fadeOutDuration: Duration(milliseconds: 10),
                  placeholder: AssetImage("images/placeholder_w.png",
                      package: "baselib"),
                  image: NetworkImage(
                    room.roomImg,
                  )),
              borderRadius: BorderRadius.circular(12),
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: room.title,
                      style: TextStyle(
                          fontSize: theme.themeFontSize.fontSizeSmall,
                          color: theme.themeColor.themeTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    WidgetSpan(
                        child: FSuper(
                      margin: EdgeInsets.only(left: 5),
                      text: room.category.title,
                      textSize: theme.themeFontSize.fontSizeMin,
                      textColor: theme.themeColor.themeTextWhiteColor,
                      corner: Corner.all(8),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      gradient: LinearGradient(colors: [
                        color("#5ED4C1"),
                        color("#B4E6D2"),
                      ]),
                    ))
                  ])),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        children: <Widget>[
                          Visibility(
                              visible: !room.greateNum.isEmpty,
                              child: Text("ID:${room.greateNum}",
                                  style: TextStyle(
                                      fontSize:
                                          theme.themeFontSize.fontSizeLittle,
                                      color: theme
                                          .themeColor.themeTextLightColor))),
                          Container(
                            margin: room.greateNum.isEmpty
                                ? EdgeInsets.only(left: 0)
                                : EdgeInsets.only(left: 10),
                            child: Text.rich(TextSpan(children: [
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Image.asset(
                                    'images/home_fire.png',
                                    package: 'room',
                                    width: 12,
                                    height: 12,
                                  )),
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Text(room.index.toString(),
                                      style: TextStyle(
                                          fontSize:
                                              theme.themeFontSize.fontSizeSmall,
                                          color: theme
                                              .themeColor.themeLightGreyColor)))
                            ])),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 创建banner条目
  Widget _buildBannerSection(MTheme theme, BannerItem item) {
    return Container(
      color: Colors.white,
      height: 90,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Swiper(
        autoplay: true,
        autoplayDelay: 3000,
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                activeColor: theme.themeColor.themeColor,
                color: Colors.white,
                size: 4,
                activeSize: 4,
                space: 3)),
        autoplayDisableOnInteraction: true,
        itemCount: item.urls.length,
        //item数量
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            child: FadeInImage(
                fit: BoxFit.fill,
                fadeInDuration: Duration(milliseconds: 10),
                fadeOutDuration: Duration(milliseconds: 10),
                placeholder:
                    AssetImage("images/placeholder_w.png", package: "baselib"),
                image: NetworkImage(
                  item.urls[index].imgUrl,
                )),
            borderRadius: BorderRadius.circular(12),
          );
        },
        onTap: (index) {
          ToastUtil.show(item.urls[index].bannerUrl);
        },
      ),
    );
  }

  ///appbar
  AppBar _buildAppBarSection(MTheme theme) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: FSuper(
        height: 34,
        width: double.infinity,
        child1: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/to_search.png',
              package: 'room',
              width: 14,
              height: 14,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                "聊天室名称/用户昵称/ID",
                style: TextStyle(
                    fontSize: theme.themeFontSize.fontSizeSmall,
                    color: theme.themeColor.themeGreyColor),
              ),
            )
          ],
        ),
        backgroundColor: Colors.black12,
        child1Alignment: Alignment.centerLeft,
        child1Margin: EdgeInsets.only(left: 12),
        child2Alignment: Alignment.centerLeft,
        corner: Corner.all(18),
      ),
      actions: <Widget>[
        Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              'images/ranking.png',
              package: 'room',
              width: 34,
              height: 34,
            )),
        Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              'images/create_room.png',
              package: 'room',
              width: 34,
              height: 34,
            ))
      ],
    );
  }

  ///快捷入口
  Widget _buildQuickMenuSection(MTheme theme, QuickMenuItem item) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        children: <Widget>[
          for (var menu in item.quickMenus)
            Expanded(
                child: GestureDetector(
              onTap: () {
                switch (menu.title) {
                  case "星光榜":
                    break;
                  case "预约开奖":
                    break;
                  case "游戏派单":
                    break;
                }
                ToastUtil.show("敬请期待!");
              },
              child: Column(
                children: <Widget>[
                  Image.asset(
                    menu.image,
                    package: 'room',
                    width: 44,
                    height: 44,
                  ),
                  Text(
                    menu.title,
                    style: TextStyle(
                        fontSize: theme.themeFontSize.fontSizeLittle,
                        color: theme.themeColor.themeTextLightColor),
                  ),
                ],
              ),
            ))
        ],
      ),
    );
  }
}
