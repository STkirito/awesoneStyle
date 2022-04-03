import 'package:animate_do/animate_do.dart';
import 'package:awesonestyle/constant.dart';

import 'package:flutter/material.dart';

class AniWidget extends StatefulWidget {
  final AnimationDo animation;
  final Key? key;
  final Widget child;
  final Duration? duration;
  final Duration? delay;
  final dynamic Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool? animate;
  final double? from;
  final bool infinite;
  final double? spins;
  final double to;
  AniWidget(
      {this.key,
      required this.child,
      this.duration,
      this.delay,
      this.controller,
      this.manualTrigger = false,
      this.animate,
      this.from,
      this.infinite = false,
      this.spins,
      this.to = 100,
      required this.animation})
      : super(key: key);

  @override
  _AniWidgetState createState() => _AniWidgetState();
}

class _AniWidgetState extends State<AniWidget> {
  Widget _animationChild() {
    if (widget.animation == AnimationDo.fadeIn) {
      return FadeIn(
        duration: widget.duration ?? const Duration(milliseconds: 300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeInDown) {
      return FadeInDown(
        duration: widget.duration ?? const Duration(milliseconds: 200),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeInDownBig) {
      return FadeInDownBig(
        duration: widget.duration ?? const Duration(milliseconds: 1300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 600,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeInUp) {
      return FadeInUp(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeInUpBig) {
      return FadeInUpBig(
        duration: widget.duration ?? const Duration(milliseconds: 1300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 600,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeInLeft) {
      return FadeInLeft(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeInLeftBig) {
      return FadeInLeftBig(
        duration: widget.duration ?? const Duration(milliseconds: 1300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 600,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeInRight) {
      return FadeInRight(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeInRightBig) {
      return FadeInRightBig(
        duration: widget.duration ?? const Duration(milliseconds: 1200),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 600,
        child: widget.child,
      );
    }
    //
    if (widget.animation == AnimationDo.fadeOut) {
      return FadeOut(
        duration: widget.duration ?? const Duration(milliseconds: 300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? false,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeOutDown) {
      return FadeOutDown(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? false,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeOutDownBig) {
      return FadeOutDownBig(
        duration: widget.duration ?? const Duration(milliseconds: 1300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 600,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeOutUp) {
      return FadeOutUp(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? false,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeOutUpBig) {
      return FadeOutUpBig(
        duration: widget.duration ?? const Duration(milliseconds: 1300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? false,
        from: widget.from ?? 600,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeOutLeft) {
      return FadeOutLeft(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? false,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeOutLeftBig) {
      return FadeOutLeftBig(
        duration: widget.duration ?? const Duration(milliseconds: 1300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? false,
        from: widget.from ?? 600,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeOutRight) {
      return FadeOutRight(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? false,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.fadeOutRightBig) {
      return FadeOutRightBig(
        duration: widget.duration ?? const Duration(milliseconds: 1200),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? false,
        from: widget.from ?? 600,
        child: widget.child,
      );
    }
    //
    if (widget.animation == AnimationDo.bounceInDown) {
      return BounceInDown(
        duration: widget.duration ?? const Duration(milliseconds: 700),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 75,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.bounceInUp) {
      return BounceInUp(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 75,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.bounceInLeft) {
      return BounceInLeft(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 75,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.bounceInRight) {
      return BounceInRight(
        duration: widget.duration ?? const Duration(milliseconds: 600),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 75,
        child: widget.child,
      );
    }
    //
    if (widget.animation == AnimationDo.elasticIn) {
      return ElasticIn(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.elasticInDown) {
      return ElasticInDown(
        duration: widget.duration ?? const Duration(milliseconds: 600),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 200,
        to: widget.to,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.elasticInUp) {
      return ElasticInUp(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 200,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.elasticInLeft) {
      return ElasticInLeft(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 200,
        to: widget.to,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.elasticInRight) {
      return ElasticInRight(
        duration: widget.duration ?? const Duration(milliseconds: 600),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 200,
        child: widget.child,
      );
    }
    //
    if (widget.animation == AnimationDo.slideInDown) {
      return SlideInDown(
        duration: widget.duration ?? const Duration(milliseconds: 600),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.slideInUp) {
      return SlideInUp(
        duration: widget.duration ?? const Duration(milliseconds: 600),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.slideInLeft) {
      return SlideInLeft(
        duration: widget.duration ?? const Duration(milliseconds: 600),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.slideInRight) {
      return SlideInRight(
        duration: widget.duration ?? const Duration(milliseconds: 600),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 100,
        child: widget.child,
      );
    }
    //
    if (widget.animation == AnimationDo.flipInX) {
      return FlipInX(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.flipInY) {
      return FlipInY(
        duration: widget.duration ?? const Duration(milliseconds: 400),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    //
    if (widget.animation == AnimationDo.zoomIn) {
      return ZoomIn(
        duration: widget.duration ?? const Duration(milliseconds: 500),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 1.0,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.zoomOut) {
      return ZoomOut(
        duration: widget.duration ?? const Duration(milliseconds: 500),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 0.0,
        child: widget.child,
      );
    }
    //
    if (widget.animation == AnimationDo.jelloIn) {
      return JelloIn(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    //
    if (widget.animation == AnimationDo.bounce) {
      return Bounce(
        duration: widget.duration ?? const Duration(milliseconds: 900),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        infinite: widget.infinite,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        from: widget.from ?? 50,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.flash) {
      return Flash(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        infinite: widget.infinite,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.pulse) {
      return Pulse(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        infinite: widget.infinite,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.swing) {
      return Swing(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        infinite: widget.infinite,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.spin) {
      return Spin(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        infinite: widget.infinite,
        spins: widget.spins ?? 1,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.spinPerfect) {
      return SpinPerfect(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        infinite: widget.infinite,
        spins: widget.spins ?? 1,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.dance) {
      return Dance(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        infinite: widget.infinite,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.roulette) {
      return Roulette(
        duration: widget.duration ?? const Duration(milliseconds: 3500),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        infinite: widget.infinite,
        spins: widget.spins ?? 2,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return _animationChild();
  }
}
