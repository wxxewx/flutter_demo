import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/fluro/routers.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:square/widget/ImageResultShow.dart';

import 'bloc.dart';

class PubTweetPage extends BlocPage<PubTweetBloc, _PubTweet> {
  PubTweetPage(Parameters parameters) : super(parameters);

  @override
  PubTweetBloc generateBloc() {
    return PubTweetBloc();
  }

  @override
  _PubTweet generateThemeState() {
    return _PubTweet();
  }
}

class _PubTweet extends BlocState<PubTweetBloc> {
  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "发布说说",
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
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 12),
                constraints: BoxConstraints(maxHeight: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: theme.themeColor.themeDartColor,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Text(
                  "发布",
                  style:
                      TextStyle(fontSize: theme.themeFontSize.fontSizeNormal),
                )),
          )
        ],
      ),
      body: _buildBody(context, theme),
    );
  }

  _buildBody(BuildContext context, MTheme theme) {
    return Container(
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.all(16),
              child: TextField(
                  maxLength: 200,
                  maxLines: 10,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ))),
          Positioned(
              bottom: 0,
              child: Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StreamBuilder<List<String>>(
                        stream: bloc.selectPhotos,
                        initialData: [],
                        builder: (context, snapshot) {
                          return ImageResultShow(snapshot.data,
                              MediaQuery.of(context).size.width - 32);
                        }),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: IconButton(
                          icon: Icon(
                            Icons.photo,
                            color: theme.themeColor.themeDartColor,
                            size: 30,
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ))
        ],
      ),
      color: theme.themeColor.themeBackGroundColor,
      height: double.infinity,
    );
  }
}
