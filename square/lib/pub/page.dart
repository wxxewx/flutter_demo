import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'bloc.dart';

class PubTweetPage extends BlocPage<PubTweetBloc, _PubTweet> {
  PubTweetPage(Parameters parameters) : super(parameters);

  @override
  PubTweetBloc generateBloc() {
    return PubTweetBloc();
  }

  @override
  _PubTweet generateThemeState() {
    return _PubTweet();
  }
}

class _PubTweet extends BlocState<PubTweetBloc> {


  @override
  Widget buildChild(BuildContext context, MTheme theme) {


  }
}
