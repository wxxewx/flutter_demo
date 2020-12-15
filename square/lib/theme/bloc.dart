import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/utils/toast.dart';
import 'package:rxdart/rxdart.dart';
import 'package:square/api.dart';
import 'package:square/theme/model.dart';

class TagSelectBloc extends BaseBloc {
  BehaviorSubject<List<TweetTheme>> tweets = BehaviorSubject();

  BehaviorSubject<TweetTheme> checkTheme = BehaviorSubject();

  BehaviorSubject<List<String>> checkTags = BehaviorSubject();

  @override
  void initState() {
    initThemes();
  }

  @override
  void dispose() {
    tweets.close();
    checkTheme.close();
    checkTags.close();
  }

  void initThemes() async {
    var resultBody = await tags();
    if (resultBody.isSuccess) {
      tweets.add(resultBody.data);
    } else {
      tweets.add([]);
    }
  }

  void changeTheme(TweetTheme e) {
    if (e.category == checkTheme.value?.category) {
      checkTheme.add(null);
    } else {
      checkTheme.add(e);
    }
    checkTags.add([]);
  }

  void changeTagState(String tag) {
    var list = checkTags.value ?? [];
    if (list.contains(tag)) {
      list.remove(tag);
      checkTags.add(list);
    } else {
      if (list.length >= 3) {
        ToastUtil.show("最多选择三个标签！");
        return;
      }
      list.add(tag);
      checkTags.add(list);
    }
  }

  List<String> getTags() {
    List<String> tags = [];
    tags.add(checkTheme.value?.category);
    tags.addAll(checkTags.value ?? []);
    return tags;
  }
}
