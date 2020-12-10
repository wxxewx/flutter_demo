import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/im/conversation.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/widget/avatar.dart';
import 'package:baselib/widget/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fsuper/fsuper.dart';

import 'bloc.dart';

class ConversationPage extends BlocPage<ConversationBloc, _ConversationState> {
  ConversationPage(Parameters parameters) : super(parameters);

  @override
  ConversationBloc generateBloc() {
    return ConversationBloc();
  }

  @override
  _ConversationState generateThemeState() {
    return _ConversationState();
  }
}

class _ConversationState extends BlocState<ConversationBloc>
    with KeepPageStateMixin {

  @override
  ignoreWindowWidget()=>true;

  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return StreamBuilder<List<Conversation>>(
        initialData: List(),
        stream: bloc.conversations.stream,
        builder:
            (BuildContext context, AsyncSnapshot<List<Conversation>> snapshot) {
          var conversations = snapshot.data;
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
                        return _buildConversationItem(
                            context, theme, conversations[index]);
                      },
                      itemCount: conversations.length,
                    ),
                  )),
            ),
          );
        });
  }
}

///
/// 会话列表item
///
Widget _buildConversationItem(
    BuildContext context, MTheme theme, Conversation conversation) {
  return Container(
    margin: EdgeInsets.only(top: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AvatarWidget(conversation.contacts.avatar, 50, fill: true),
        Expanded(
            child: Container(
          margin: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    conversation.contacts.name,
                    style: TextStyle(
                        color: theme.themeColor.themeTextColor,
                        fontSize: theme.themeFontSize.fontSizeBig,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    conversation.content.formatTime,
                    style: TextStyle(
                        color: theme.themeColor.themeTextLightColor,
                        fontSize: theme.themeFontSize.fontSizeNormal),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      conversation.content.content,
                      style: TextStyle(
                          color: theme.themeColor.themeTextLightColor,
                          fontSize: theme.themeFontSize.fontSizeNormal),
                    ),
                    Spacer(),
                    FSuper(
                      redPointOffset: Offset(0, 0),
                      redPoint: conversation.content.unreadCount != 0,
                      redPointColor: Colors.red,
                      redPointTextColor: Colors.white,
                      redPointText: conversation.content.unreadCount.toString(),
                      redPointSize: theme.themeFontSize.fontSizeNormal,
                    )
                  ],
                ),
              ),
            ],
          ),
        ))
      ],
    ),
  );
}
