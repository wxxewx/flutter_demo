import 'dart:async';

import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/utils/toast.dart';
import 'package:baselib/widget/loading.dart';
import 'package:rxdart/rxdart.dart';
import 'package:square/api.dart';
import 'package:square/squareItem.dart';

class SquareListBloc extends BaseBloc {
  int type = 2;
  String targetId;
  BehaviorSubject<LoadingState> loadState = BehaviorSubject();
  BehaviorSubject<List<SquareItem>> squareItems = BehaviorSubject();

  int page = 0;
  bool isLoadMore = true;
  bool isLoading = false;

  @override
  void initState() {
    type=parameters.getInt("type");
    targetId=parameters.getString("targetId");
    loadState.add(LoadingState.loading);
    refreshTweets();
  }

  @override
  void dispose() {
    loadState.close();
    squareItems.close();
  }

  refreshTweets() async {
    page = 0;
    isLoading = true;
    var account = AccountGlobal.instance.getAccount();
    var body = await getSquareList(account, page, category: type,targetId: targetId);
    if (body.isSuccess) {
      loadState.add(LoadingState.success);
      squareItems.add(body.data);
      page = page + 1;
      isLoading = false;
    } else {
      loadState.add(LoadingState.error);
      squareItems.add([]);
      isLoading = false;
    }
  }

  loadMoreTweets() async {
    if (isLoading || !isLoadMore) return;
    isLoading = true;
    var account = AccountGlobal.instance.getAccount();
    var body = await getSquareList(account, page, category: type,targetId: targetId);
    if (body.isSuccess) {
      squareItems.value.addAll(body.data);
      squareItems.add(squareItems.value);
      page = page + 1;
      if (body.data.isEmpty) {
        isLoadMore = false;
      }
      isLoading = false;
    }
  }



  void like(SquareItem item) async {
    if (item.isLiked) return;
    var account = AccountGlobal.instance.getAccount();
    var body = await likeTweet(account, item);
    if (body.isSuccess) {
      item.isLiked = true;
      item.likeNumber = item.likeNumber + 1;
      squareItems.add(squareItems.value);
    } else {
      ToastUtil.show(body.error.msg);
    }
  }
}
