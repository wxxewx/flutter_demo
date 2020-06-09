import 'dart:async';

import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/widget/loading.dart';
import 'package:baselib/im/im_global.dart';
import 'package:baselib/im/contacts.dart';
import 'package:rxdart/rxdart.dart';

class ContactsBloc extends BaseBloc {
  PublishSubject<List<Contacts>> contacts = PublishSubject();
  List<Contacts> _contacts = [];

  PublishSubject<LoadingState> loadState = PublishSubject();
  StreamSubscription subscription;

  @override
  void initState() {
    loadState.add(LoadingState.loading);
    subscription = FriendsGlobal.instance.contacts.listen((list) {
      _contacts = list;
      contacts.add(_contacts);
      loadState.add(LoadingState.success);

    });
  }

  reLoad() async {
    FriendsGlobal.instance.refreshContacts();
  }

  @override
  void dispose() {
    contacts?.close();
    loadState?.close();
    subscription?.cancel();
  }
}
