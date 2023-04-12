import 'package:awesonestyle/src/Widgets/animation/ani_widget/animations/aws_fades.dart';
import 'package:awesonestyle/src/Widgets/animation/ani_widget/animations/aws_fadeouts.dart';
import 'package:awesonestyle/src/Widgets/animation/ani_widget/animations/aws_bounces.dart';
import 'package:awesonestyle/src/Widgets/animation/ani_widget/animations/aws_attention_seekers.dart';
import 'package:awesonestyle/src/Widgets/animation/ani_widget/animations/aws_elastics.dart';
import 'package:awesonestyle/src/Widgets/animation/ani_widget/animations/aws_flips.dart';
import 'package:awesonestyle/src/Widgets/animation/ani_widget/animations/aws_slides.dart';
import 'package:awesonestyle/src/Widgets/animation/ani_widget/animations/aws_specials.dart';
import 'package:awesonestyle/src/Widgets/animation/ani_widget/animations/aws_zooms.dart';
import 'package:flutter/material.dart';

/// [AwsAnimation] contiene todas las animaciones para [AwsAniWidget].
enum AwsAnimation {
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

/// [AwsAniWidget] es un widget que unifica distintas animaciones desde un solo widget,
///  vez de usar distintos widget dando la necesidad de cambiar de widget y sus configuraciónes y haciendo perder tiempo.
class AwsAniWidget extends StatefulWidget {
  final AwsAnimation _animation;
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
    required AwsAnimation animation,
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
    if (widget._animation == AwsAnimation.fadeIn) {
      return AwsFadeIn(
        duration: widget._duration ?? const Duration(milliseconds: 300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeInDown) {
      return AwsFadeInDown(
        duration: widget._duration ?? const Duration(milliseconds: 200),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeInDownBig) {
      return AwsFadeInDownBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeInUp) {
      return AwsFadeInUp(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeInUpBig) {
      return AwsFadeInUpBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeInLeft) {
      return AwsFadeInLeft(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeInLeftBig) {
      return AwsFadeInLeftBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeInRight) {
      return AwsFadeInRight(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeInRightBig) {
      return AwsFadeInRightBig(
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
    if (widget._animation == AwsAnimation.fadeOut) {
      return AwsFadeOut(
        duration: widget._duration ?? const Duration(milliseconds: 300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeOutDown) {
      return AwsFadeOutDown(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeOutDownBig) {
      return AwsFadeOutDownBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeOutUp) {
      return AwsFadeOutUp(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeOutUpBig) {
      return AwsFadeOutUpBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeOutLeft) {
      return AwsFadeOutLeft(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeOutLeftBig) {
      return AwsFadeOutLeftBig(
        duration: widget._duration ?? const Duration(milliseconds: 1300),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 600,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeOutRight) {
      return AwsFadeOutRight(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? false,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.fadeOutRightBig) {
      return AwsFadeOutRightBig(
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
    if (widget._animation == AwsAnimation.bounceInDown) {
      return AwsBounceInDown(
        duration: widget._duration ?? const Duration(milliseconds: 700),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 75,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.bounceInUp) {
      return AwsBounceInUp(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 75,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.bounceInLeft) {
      return AwsBounceInLeft(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 75,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.bounceInRight) {
      return AwsBounceInRight(
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
    if (widget._animation == AwsAnimation.elasticIn) {
      return AwsElasticIn(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.elasticInDown) {
      return AwsElasticInDown(
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
    if (widget._animation == AwsAnimation.elasticInUp) {
      return AwsElasticInUp(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 200,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.elasticInLeft) {
      return AwsElasticInLeft(
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
    if (widget._animation == AwsAnimation.elasticInRight) {
      return AwsElasticInRight(
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
    if (widget._animation == AwsAnimation.slideInDown) {
      return AwsSlideInDown(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.slideInUp) {
      return AwsSlideInUp(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.slideInLeft) {
      return AwsSlideInLeft(
        duration: widget._duration ?? const Duration(milliseconds: 600),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 100,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.slideInRight) {
      return AwsSlideInRight(
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
    if (widget._animation == AwsAnimation.flipInX) {
      return AwsFlipInX(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.flipInY) {
      return AwsFlipInY(
        duration: widget._duration ?? const Duration(milliseconds: 400),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimation.zoomIn) {
      return AwsZoomIn(
        duration: widget._duration ?? const Duration(milliseconds: 500),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        from: widget._from ?? 1.0,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.zoomOut) {
      return AwsZoomOut(
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
    if (widget._animation == AwsAnimation.jelloIn) {
      return AwsJelloIn(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    //
    if (widget._animation == AwsAnimation.bounce) {
      return AwsBounce(
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
    if (widget._animation == AwsAnimation.flash) {
      return AwsFlash(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.pulse) {
      return AwsPulse(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.swing) {
      return AwsSwing(
        duration: widget._duration ?? const Duration(milliseconds: 800),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.spin) {
      return AwsSpin(
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
    if (widget._animation == AwsAnimation.spinPerfect) {
      return AwsSpinPerfect(
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
    if (widget._animation == AwsAnimation.dance) {
      return AwsDance(
        duration: widget._duration ?? const Duration(milliseconds: 1000),
        delay: widget._delay ?? const Duration(milliseconds: 0),
        controller: widget._controller,
        infinite: widget._infinite,
        manualTrigger: widget._manualTrigger,
        animate: widget._animate ?? true,
        child: widget._child,
      );
    }
    if (widget._animation == AwsAnimation.roulette) {
      return AwsRoulette(
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
