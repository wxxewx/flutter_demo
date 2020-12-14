import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:square/api.dart';
import 'package:square/tag/model.dart';

class TagSelectBloc extends BaseBloc {
  BehaviorSubject<List<TweetTheme>> tweets = BehaviorSubject();

  @override
  void initState() {
    initThemes();
  }

  @override
  void dispose() {
    tweets.close();
  }

  void initThemes() async {
    var resultBody = await tags();
    if(resultBody.isSuccess){
      tweets.add(resultBody.data);
    }
    else{
      tweets.add([]);
    }

  }
}
