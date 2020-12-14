import 'package:baselib/account/account_global.dart';
import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/widget/loading.dart';
import 'package:rxdart/rxdart.dart';
import 'package:user/api.dart';
import 'package:user/model.dart';



class ProfileBloc extends BaseBloc {
  String userId = "";

  BehaviorSubject<LoadingState> loadState = BehaviorSubject();
  BehaviorSubject<Profile> profile = BehaviorSubject();

  @override
  void initState() {
    userId = parameters.getString("userId");
    loadUserProfile();
  }

  void loadUserProfile() async {
    loadState.add(LoadingState.loading);
    var account = AccountGlobal.instance.getAccount();
    var resultBody = await getUserProfile(account, userId);
    if (resultBody.isSuccess) {
      loadState.add(LoadingState.success);
      profile.add(resultBody.data);
    } else {
      loadState.add(LoadingState.error);
    }
  }

  @override
  void dispose() {
    loadState.close();
    profile.close();
  }
}
