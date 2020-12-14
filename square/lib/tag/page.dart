import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/utils/color_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'bloc.dart';
import 'model.dart';

class TagSelectPage extends BlocPage<TagSelectBloc, _TagSelect> {
  TagSelectPage(Parameters parameters) : super(parameters);

  @override
  TagSelectBloc generateBloc() {
    return TagSelectBloc();
  }

  @override
  _TagSelect generateThemeState() {
    return _TagSelect();
  }
}

class _TagSelect extends BlocState<TagSelectBloc> {
  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "选择主题",
          style: TextStyle(color: theme.themeColor.themeTextColor),
        ),
        backgroundColor: theme.themeColor.themeBackGroundColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: theme.themeColor.themeBlackColor,
          ),
          onPressed: () {
            Routers.pop(context);
          },
        ),
      ),
      body: _buildBody(context, theme),
    );
  }

  ///
  _buildBody(BuildContext context, MTheme theme) {
    return StreamBuilder<List<TweetTheme>>(
        stream: bloc.tweets,
        initialData: [],
        builder: (context, snapshot) {
          var list = snapshot.data;
          return Container(
            color: theme.themeColor.themeBackGroundColor,
            child: ListView(
                children: list
                    .map((e) => Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            color: color("#${e.color}"),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.category,
                                      style: TextStyle(
                                          color:
                                              theme.themeColor.themeTextColor,
                                          fontSize: theme
                                              .themeFontSize.fontSizeNormal),
                                    ),
                                    Text(
                                      e.desc,
                                      style: TextStyle(
                                          color:
                                              theme.themeColor.themeTextColor,
                                          fontSize: theme
                                              .themeFontSize.fontSizeSmall),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Image.network(e.icon, width: 40, height: 40)
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                            Visibility(
                              child: Column(
                                children: [
                                  Divider(
                                    color: theme.themeColor.themeGreyColor,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 12),
                                    child: Wrap(
                                      spacing: 8,
                                      runSpacing: 8,
                                      children: e.tags
                                          .map((tag) => Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 8),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(25)),
                                                  color: color("#66FFFFFF")),
                                              child: Text(
                                                tag,
                                                style: TextStyle(
                                                    color: theme.themeColor
                                                        .themeTextColor,
                                                    fontSize: theme
                                                        .themeFontSize
                                                        .fontSizeSmall),
                                              )))
                                          .toList(),
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    margin: EdgeInsets.only(top: 30),
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    decoration: BoxDecoration(
                                        color: theme
                                            .themeColor.themeBackGroundColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.baseline,
                                      children: [
                                        Text(
                                          "完成",
                                          style: TextStyle(
                                              color: theme
                                                  .themeColor.themeTextColor,
                                              fontSize: theme.themeFontSize
                                                  .fontSizeNormal),
                                        ),
                                        Text(
                                          "(0/3)",
                                          style: TextStyle(
                                              color: theme.themeColor
                                                  .themeTextLightColor,
                                              fontSize: theme.themeFontSize
                                                  .fontSizeLittle),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              visible: true,
                            )
                          ],
                        )))
                    .toList()),
          );
        });
  }
}
