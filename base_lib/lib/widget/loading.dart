import 'package:baselib/common/base/base_theme_widget.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingView extends BaseThemeWidget {
  final Stream<LoadingState> _stream;

  final Widget _child;

  LoadingView(this._stream, this._child);

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return StreamBuilder<LoadingState>(
        initialData: LoadingState.loading,
        stream: _stream,
        builder: (BuildContext context, AsyncSnapshot<LoadingState> snapshot) {
          var state = snapshot.data;
          Widget child;
          if (state == LoadingState.loading) {
            child = _defaultLoadingView(theme);
          } else if (state == LoadingState.empty) {
            child = _defaultEmptyView(theme);
          } else if (state == LoadingState.error) {
            child = _defaultErrorView(theme);
          } else {
            child = _child;
          }
          return child;
        });
  }

  Widget _defaultLoadingView(MTheme theme) {
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 60,
      color: Colors.white,
      child: CircularProgressIndicator(
        strokeWidth: 4.0,
        backgroundColor: theme.themeColor.themeColor,
        valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }

  Widget _defaultEmptyView(MTheme theme) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFillViewport(
            viewportFraction: 1.0,
            delegate: SliverChildBuilderDelegate(
                (_, index) => Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset('images/loading_empty_icon.png',
                                package: 'baselib', width: 100, height: 100),
                          ),
                          Text(
                            "空空如也",
                            style: TextStyle(
                                fontSize: theme.themeFontSize.fontSizeNormal,
                                color: theme.themeColor.themeLightGreyColor),
                          )
                        ],
                      ),
                    ),
                childCount: 1)),
      ],
    );
  }

  static Widget _defaultErrorView(MTheme theme) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFillViewport(
            viewportFraction: 1.0,
            delegate: SliverChildBuilderDelegate(
                (_, index) => Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset('images/loading_empty_icon.png',
                                package: 'baselib', width: 100, height: 100),
                          ),
                          Text(
                            "网络异常",
                            style: TextStyle(
                                fontSize: theme.themeFontSize.fontSizeNormal,
                                color: theme.themeColor.themeLightGreyColor),
                          )
                        ],
                      ),
                    ),
                childCount: 1)),
      ],
    );
  }
}

enum LoadingState { loading, error, empty, success }
