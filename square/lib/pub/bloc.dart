import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:rxdart/rxdart.dart';

class PubTweetBloc extends BaseBloc {
  BehaviorSubject<List<String>> selectPhotos = BehaviorSubject();


  @override
  void dispose() {
    selectPhotos.close();
  }

  @override
  void initState() {

  }

}