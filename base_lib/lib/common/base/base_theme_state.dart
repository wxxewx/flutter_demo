import 'package:baselib/theme/theme_global.dart';
import 'package:flutter/widgets.dart';

/**
 * 可以实现全局主题监听的state
 */
abstract class BaseThemeState<T extends StatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return buildWidget();
  }

  StreamBuilder<MTheme> buildWidget() {
    return StreamBuilder<MTheme>(
        initialData: ThemeGlobal.instance.themeData,
        stream: ThemeGlobal.instance.theme,
        builder: (context, snapshot) {
          var ckTheme = snapshot.data;
          return buildChild(context, ckTheme);
        });
  }

  Widget buildChild(BuildContext context, MTheme theme);
}

///
///可以为page保持状态，场景为tab滑动类似的地方
mixin KeepPageStateMixin on BaseThemeState {
  KeepAliveHandle _keepAliveHandle;

  void _ensureKeepAlive() {
    assert(_keepAliveHandle == null);
    _keepAliveHandle = KeepAliveHandle();
    KeepAliveNotification(_keepAliveHandle).dispatch(context);
  }

  void _releaseKeepAlive() {
    _keepAliveHandle.release();
    _keepAliveHandle = null;
  }

  @protected
  bool get wantKeepAlive => true;

  @protected
  void updateKeepAlive() {
    if (wantKeepAlive) {
      if (_keepAliveHandle == null) _ensureKeepAlive();
    } else {
      if (_keepAliveHandle != null) _releaseKeepAlive();
    }
  }

  @override
  void initState() {
    super.initState();
    if (wantKeepAlive) _ensureKeepAlive();
  }

  @override
  void deactivate() {
    if (_keepAliveHandle != null) _releaseKeepAlive();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    if (_keepAliveHandle == null) {
      _ensureKeepAlive();
      return null;
    } else {
      return buildWidget();
    }
  }
}
