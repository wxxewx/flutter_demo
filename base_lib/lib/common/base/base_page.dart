import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/common/parameters.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rxdart/rxdart.dart';

abstract class BlocPage<B extends BaseBloc, S extends BlocState>
    extends StatefulWidget {
  final Parameters parameters;

  BlocPage(this.parameters);

  B generateBloc();

  S generateThemeState();

  @override
  State<StatefulWidget> createState() {
    var bloc = generateBloc();
    BlocState state = generateThemeState();
    state.init(parameters, bloc);
    return state;
  }
}

//悬浮窗
final BehaviorSubject<Widget> _windowWidget = BehaviorSubject();
final BehaviorSubject<Offset> _windowWidgetOffset = BehaviorSubject();
final BehaviorSubject<bool> _windowWidgetDra = BehaviorSubject();

//显示悬浮窗
showWindowWidget(Widget widget) {
  _windowWidget.add(widget);
}

//隐藏悬浮窗
hideWindowWidget() {
  _windowWidgetOffset.add(Offset(0, 520));
  _windowWidgetDra.add(false);
  _windowWidget.add(null);
}

abstract class BlocState<B extends BaseBloc> extends BaseThemeState {
  B bloc;

  /**
   * 页面需要的参数
   */
  Parameters parameters;

  double get statusHeight => MediaQuery.of(context).padding.top;

  //忽略掉悬浮窗的显示
  ignoreWindowWidget() => false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        super.build(context),
        StreamBuilder<Widget>(
            stream: _windowWidget,
            builder: (context, snapshot) {
              var windowW = snapshot.data;
              if (windowW == null || ignoreWindowWidget()) {
                return Container(
                  width: 0,
                  height: 0,
                );
              } else {
                return StreamBuilder<Offset>(
                    stream: _windowWidgetOffset,
                    builder: (context, snapshot) {
                      var offset = snapshot.data;
                      return Positioned(
                        child: Draggable(
                          child: StreamBuilder<bool>(
                              stream: _windowWidgetDra,
                              builder: (context, snapshot) {
                                return Opacity(
                                    child: windowW,
                                    opacity: snapshot.data != true ? 1 : 0);
                              }),
                          feedback: windowW,
                          onDragStarted: () {
                            _windowWidgetDra.add(true);
                          },
                          onDragEnd: (DraggableDetails details) {},
                          onDraggableCanceled:
                              (Velocity velocity, Offset offset) {
                            _windowWidgetDra.add(false);
                            _windowWidgetOffset.add(offset);
                            LogUtil.v(
                                'onDraggableCanceled velocity:$velocity,offset:$offset',
                                tag: "_windowWidgetOnDraggableCanceled");
                          },
                          onDragCompleted: () {
                            print('onDragCompleted');
                          },
                        ),
                        top: offset?.dy ?? 520,
                        left: offset?.dx ?? 0,
                      );
                    });
              }
            })
      ],
    );
  }

  void init(Parameters parameters, bloc) {
    this.parameters = parameters ?? Parameters();
    this.bloc = bloc;
  }

  @override
  void dispose() {
    bloc?.dispose();
    super.dispose();
    bloc = null;
  }

  @override
  void initState() {
    bloc?.context = context;
    bloc?.parameters = parameters;
    bloc?.initState();
    super.initState();
  }
}
