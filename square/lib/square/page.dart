import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/widget/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:square/square/squareItem.dart';

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
    super.initState();
    _scrollController.addListener(() {
      var position = _scrollController.position;
      // 小于50px时，触发上拉加载；
      if (position.maxScrollExtent - position.pixels < 50) {
        bloc.loadMoreTweets();
      }
    });
  }

  @override
  ignoreWindowWidget() => true;

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return Container(
        child: RefreshIndicator(
            child: LoadingView(
                bloc.loadState,
                StreamBuilder<List<SquareItem>>(
                    stream: bloc.squareItems,
                    initialData: [],
                    builder: (context, snapshot) {
                      return ListView.builder(
                        shrinkWrap: true,
                        controller: _scrollController,
                        itemBuilder: (context, index) {
                          var item = snapshot.data[index];
                        },
                        itemCount: snapshot.data.length,
                      );
                    })),
            onRefresh: () async {
              await bloc.refreshTweets();
              return true;
            }));
  }
}
