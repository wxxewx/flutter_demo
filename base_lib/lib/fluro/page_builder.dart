import 'package:baselib/common/parameters.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef Widget PageBuilderFuc(Parameters parameters);

class PageBuilder {
  final String path;
  final PageBuilderFuc _builderFuc;
  Handler _handler;

  PageBuilder(this.path, this._builderFuc) {
    _handler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
      return _builderFuc(parameters);
    });
  }

  Parameters parameters;

  Handler handler() => _handler;
}

typedef Widget ViewBuilderFuc(
    BuildContext context, MTheme theme, Parameters parameters);

class ViewBuilder {
  final String name;
  final ViewBuilderFuc _builderFuc;
  Handler _handler;

  ViewBuilder(this.name, this._builderFuc) {
    _handler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
      return _builderFuc(context, theme, parameters);
    });
  }

  Parameters parameters;
  MTheme theme;

  Handler handler() => _handler;
}
