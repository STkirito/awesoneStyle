import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

enum AwsAnimationDo {
  fadeIn,
  fadeInDown,
  fadeInDownBig,
  fadeInUp,
  fadeInUpBig,
  fadeInLeft,
  fadeInLeftBig,
  fadeInRight,
  fadeInRightBig,
  fadeOut,
  fadeOutDown,
  fadeOutDownBig,
  fadeOutUp,
  fadeOutUpBig,
  fadeOutLeft,
  fadeOutLeftBig,
  fadeOutRight,
  fadeOutRightBig,
  bounceInDown,
  bounceInUp,
  bounceInLeft,
  bounceInRight,
  elasticIn,
  elasticInDown,
  elasticInUp,
  elasticInLeft,
  elasticInRight,
  slideInDown,
  slideInUp,
  slideInLeft,
  slideInRight,
  flipInX,
  flipInY,
  zoomIn,
  zoomOut,
  jelloIn,
  bounce,
  flash,
  pulse,
  swing,
  spin,
  spinPerfect,
  dance,
  roulette
}

class AwsAniWidget extends StatefulWidget {
  final AwsAnimationDo _animation;
  final Widget _child;
  final Duration? _duration;
  final Duration? _delay;
  final dynamic Function(AnimationController)? _controller;
  final bool _manualTrigger;
  final bool? _animate;
  final double? _from;
  final bool _infinite;
  final double? _spins;
  final double _to;
  AwsAniWidget({
    Key? key,
    required AwsAnimationDo animation,
    required Widget child,
    Duration? duration,
    Duration? delay,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool? animate,
    double? from,
    bool infinite = false,
    double? spins,
    double to = 100,
  })  : _animation = animation,
        _child = child,
        _duration = duration,
        _delay = delay,
        _controller = controller,
        _manualTrigger = manualTrigger,
        _animate = animate,
        _from = from,
        _infinite = infinite,
        _spins = spins,
        _to = to,
        super(key: key);

  @override
  _AwsAniWidgetState createState() => _AwsAniWidgetState();
}

class _AwsAniWidgetState extends State<AwsAniWidget> {
  Widget _animationChild() {
    if (widget._animation == AwsAnimationDo.fadeIn) {
      return FadeIn(
        duration: widget._duration ?? const Duration(milliseconds: 300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeInDown) {
      return FadeInDown(
        duration: widget._duration ?? const Duration(milliseconds: 200),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeInDownBig) {
      return FadeInDownBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeInUp) {
      return FadeInUp(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeInUpBig) {
      return FadeInUpBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeInLeft) {
      return FadeInLeft(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeInLeftBig) {
      return FadeInLeftBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeInRight) {
      return FadeInRight(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeInRightBig) {
      return FadeInRightBig(
        duration: widget._duration ?? const Duration(milliseconds: 1200),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimationDo.fadeOut) {
      return FadeOut(
        duration: widget._duration ?? const Duration(milliseconds: 300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeOutDown) {
      return FadeOutDown(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeOutDownBig) {
      return FadeOutDownBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeOutUp) {
      return FadeOutUp(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeOutUpBig) {
      return FadeOutUpBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeOutLeft) {
      return FadeOutLeft(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeOutLeftBig) {
      return FadeOutLeftBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeOutRight) {
      return FadeOutRight(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.fadeOutRightBig) {
      return FadeOutRightBig(
        duration: widget._duration ?? const Duration(milliseconds: 1200),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimationDo.bounceInDown) {
      return BounceInDown(
        duration: widget._duration ?? const Duration(milliseconds: 700),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 75,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.bounceInUp) {
      return BounceInUp(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 75,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.bounceInLeft) {
      return BounceInLeft(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 75,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.bounceInRight) {
      return BounceInRight(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 75,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimationDo.elasticIn) {
      return ElasticIn(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.elasticInDown) {
      return ElasticInDown(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 200,
        to: widget._to,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.elasticInUp) {
      return ElasticInUp(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 200,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.elasticInLeft) {
      return ElasticInLeft(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 200,
        to: widget._to,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.elasticInRight) {
      return ElasticInRight(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 200,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimationDo.slideInDown) {
      return SlideInDown(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.slideInUp) {
      return SlideInUp(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.slideInLeft) {
      return SlideInLeft(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.slideInRight) {
      return SlideInRight(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimationDo.flipInX) {
      return FlipInX(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.flipInY) {
      return FlipInY(
        duration: widget._duration ?? const Duration(milliseconds: 400),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimationDo.zoomIn) {
      return ZoomIn(
        duration: widget._duration ?? const Duration(milliseconds: 500),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 1.0,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.zoomOut) {
      return ZoomOut(
        duration: widget._duration ?? const Duration(milliseconds: 500),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 0.0,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimationDo.jelloIn) {
      return JelloIn(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimationDo.bounce) {
      return Bounce(
        duration: widget._duration ?? const Duration(milliseconds: 900),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 50,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.flash) {
      return Flash(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.pulse) {
      return Pulse(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.swing) {
      return Swing(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.spin) {
      return Spin(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        spins: widget._spins ?? 1,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.spinPerfect) {
      return SpinPerfect(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        spins: widget._spins ?? 1,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.dance) {
      return Dance(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimationDo.roulette) {
      return Roulette(
        duration: widget._duration ?? const Duration(milliseconds: 3500),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        spins: widget._spins ?? 2,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return _animationChild();
  }
}
