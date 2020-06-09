import 'dart:async';

import 'package:flutter/material.dart';

class MicRippleWidget extends StatefulWidget {
  final double circleMinSize;
  final double circleMaxSize;
  final int circleNumber;
  final int milliseconds;
  final Color color;

  MicRippleWidget(this.circleMinSize,
      {circleNumber, milliseconds, circleMaxSize, color})
      : this.circleNumber = circleNumber ?? 2,
        this.milliseconds = milliseconds ?? 3000,
        this.circleMaxSize = circleMaxSize ?? circleMinSize * 1.8,
        this.color = color ?? Colors.white;

  @override
  _MicRippleWidgetState createState() => _MicRippleWidgetState();
}

class _MicRippleWidgetState extends State<MicRippleWidget>
    with TickerProviderStateMixin {
  List<AnimationController> animationControllers = [];
  List<Animation<double>> animations = [];
  StreamSubscription _startRippleSubscription;

  @override
  void dispose() {
    _startRippleSubscription.cancel();
    animationControllers.forEach((element) {
      element.dispose();
    });
    animationControllers.clear();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= widget.circleNumber; i++) {
      AnimationController animationController = AnimationController(
          vsync: this, duration: Duration(milliseconds: widget.milliseconds));
      Animation<double> _animation =
          CurvedAnimation(parent: animationController, curve: Curves.linear);

      animationController.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reset();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward();
        }
      });
      animationControllers.add(animationController);
      animations.add(_animation);
    }
    startRipple();
  }

  var count = 0;

  void startRipple() {
    _startRippleSubscription =
        Stream.periodic(Duration(milliseconds: widget.milliseconds ~/ 3))
            .map((value) => count)
            .listen((value) {
      animationControllers[value].forward();
      count = value + 1;
      if (count >= animationControllers.length) {
        _startRippleSubscription.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    for (int i = 1; i <= widget.circleNumber; i++) {
      children.add(_MicRipple(
        widget.circleMinSize,
        widget.circleMaxSize,
        animation: animations[i - 1],
        color: widget.color,
      ));
    }

    return Stack(
      children: children,
      alignment: Alignment.center,
    );
  }
}

class _MicRipple extends AnimatedWidget {
  final double minSize;
  final double maxSize;
  final Color color;

  _MicRipple(this.minSize, this.maxSize,
      {Key key, Animation<double> animation, Color color, circleNumber})
      : this.color = color ?? Colors.white,
        super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    var sizeTween = Tween(begin: minSize, end: maxSize);
    var opacityTween = Tween<double>(begin: 1, end: 0);

    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: color.withOpacity(opacityTween.evaluate(animation)),
              width: 2)),
      width: sizeTween.evaluate(animation),
      height: sizeTween.evaluate(animation),
    );
  }
}
