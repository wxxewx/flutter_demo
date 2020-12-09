import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/domain/user/avatar.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/widget/avatar.dart';
import 'package:baselib/widget/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:square/squareItem.dart';
import 'package:square/widget/NineGridImage.dart';
import 'package:date_format/date_format.dart';

import 'bloc.dart';

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
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    bloc.setType(parameters.getInt("type"));
    super.initState();
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
    return StreamBuilder<List<SquareItem>>(
        initialData: List(),
        stream: bloc.squareItems,
        builder:
            (BuildContext context, AsyncSnapshot<List<SquareItem>> snapshot) {
          var contacts = snapshot.data;
          return RefreshIndicator(
            onRefresh: () async {
              await bloc.refreshTweets();
              return;
            },
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
                      return _buildItem(context, item, theme);
                    },
                    itemCount: contacts.length,
                  ),
                )),
          );
        });
  }
}

///
/// 构建说说列表item
_buildItem(BuildContext context, SquareItem item, MTheme theme) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Row(
          children: [
            AvatarWidget(Avatar(item.pubUserAvatar), 60),
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
                            borderRadius: BorderRadius.all(Radius.circular(30)),
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
                formatDate(DateTime.fromMillisecondsSinceEpoch(item.systemTime * 1000), [yyyy, '/', mm, '/', dd]),
                style: TextStyle(
                    color: theme.themeColor.themeTextLightColor,
                    fontSize: theme.themeFontSize.fontSizeSmall),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          child: Divider(height: 1, color: theme.themeColor.themeDividerColor),
        ),
      ],
    ),
  );
}
