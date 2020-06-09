
import 'package:baselib/common/parameters.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

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
