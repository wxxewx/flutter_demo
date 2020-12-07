import 'dart:async';

import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/widget/loading.dart';
import 'package:rxdart/rxdart.dart';
import 'package:square/square/squareItem.dart';

class SquareListBloc extends BaseBloc {
  BehaviorSubject<LoadingState> loadState = BehaviorSubject();

  BehaviorSubject<List<SquareItem>> squareItems = BehaviorSubject();

  @override
  void initState() {
    loadState.add(LoadingState.loading);
    refreshTweets();
  }

  @override
  void dispose() {}

  refreshTweets() {


  }


  loadMoreTweets() {


  }
}
