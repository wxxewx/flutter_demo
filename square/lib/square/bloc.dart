import 'dart:async';

import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/widget/loading.dart';
import 'package:rxdart/rxdart.dart';
import 'package:square/api.dart';
import 'package:square/squareItem.dart';

class SquareListBloc extends BaseBloc {
  int type = 2;

  BehaviorSubject<LoadingState> loadState = BehaviorSubject();
  BehaviorSubject<List<SquareItem>> squareItems = BehaviorSubject();

  int page = 0;
  bool isLoadMore = false;
  bool isLoading = false;

  @override
  void initState() {
    loadState.add(LoadingState.loading);
    refreshTweets();
  }

  @override
  void dispose() {}

  refreshTweets() async {
    var account = AccountGlobal.instance.getAccount();
    var body = await getSquareList(account, page, category: type);
    if (body.isSuccess) {
      loadState.add(LoadingState.success);
      squareItems.add(body.data);
    } else {
      loadState.add(LoadingState.error);
      squareItems.add([]);
    }
  }

  loadMoreTweets() {}

  void setType(int type) {
    this.type = type;
  }
}
