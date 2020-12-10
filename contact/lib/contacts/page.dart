import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/widget/avatar.dart';
import 'package:baselib/widget/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'bloc.dart';
import 'package:baselib/im/contacts.dart';

class ContactsPage extends BlocPage<ContactsBloc, _ContactsState> {
  ContactsPage(Parameters parameters) : super(parameters);

  @override
  ContactsBloc generateBloc() {
    return ContactsBloc();
  }

  @override
  _ContactsState generateThemeState() {
    return _ContactsState();
  }
}

class _ContactsState extends BlocState<ContactsBloc> with KeepPageStateMixin {


  @override
  ignoreWindowWidget()=>true;

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return StreamBuilder<List<Contacts>>(
        initialData: List(),
        stream: bloc.contacts,
        builder:
            (BuildContext context, AsyncSnapshot<List<Contacts>> snapshot) {
          var contacts = snapshot.data;
          return RefreshIndicator(
            onRefresh: () async {
              await bloc.reLoad();
              return;
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: LoadingView(
                  bloc.loadState,
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return _buildContactItem(context, theme, contacts[index]);
                      },
                      itemCount: contacts.length,
                    ),
                  )),
            ),
          );
        });
  }
}

///
/// 联系人列表item
///
Widget _buildContactItem(
    BuildContext context, MTheme theme, Contacts contacts) {
  return Container(
    margin: EdgeInsets.only(top: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AvatarWidget(contacts.avatar, 50, fill: true),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                contacts.name,
                style: TextStyle(
                    color: theme.themeColor.themeTextColor,
                    fontSize: theme.themeFontSize.fontSizeBig,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                margin: EdgeInsets.only(top: 6),
                child: Text(
                  "好友",
                  style: TextStyle(
                      color: theme.themeColor.themeTextLightColor,
                      fontSize: theme.themeFontSize.fontSizeNormal),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
