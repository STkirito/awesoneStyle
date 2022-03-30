import 'package:animate_do/animate_do.dart';
import 'package:awesonestyle/src/Constantes.dart';
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
    if (widget.animation == AnimationDo.FadeIn) {
      return FadeIn(
        duration: widget.duration ?? const Duration(milliseconds: 300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.FadeInDown) {
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
    if (widget.animation == AnimationDo.FadeInDownBig) {
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
    if (widget.animation == AnimationDo.FadeInUp) {
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
    if (widget.animation == AnimationDo.FadeInUpBig) {
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
    if (widget.animation == AnimationDo.FadeInLeft) {
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
    if (widget.animation == AnimationDo.FadeInLeftBig) {
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
    if (widget.animation == AnimationDo.FadeInRight) {
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
    if (widget.animation == AnimationDo.FadeInRightBig) {
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
    if (widget.animation == AnimationDo.FadeOut) {
      return FadeOut(
        duration: widget.duration ?? const Duration(milliseconds: 300),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? false,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.FadeOutDown) {
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
    if (widget.animation == AnimationDo.FadeOutDownBig) {
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
    if (widget.animation == AnimationDo.FadeOutUp) {
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
    if (widget.animation == AnimationDo.FadeOutUpBig) {
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
    if (widget.animation == AnimationDo.FadeOutLeft) {
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
    if (widget.animation == AnimationDo.FadeOutLeftBig) {
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
    if (widget.animation == AnimationDo.FadeOutRight) {
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
    if (widget.animation == AnimationDo.FadeOutRightBig) {
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
    if (widget.animation == AnimationDo.BounceInDown) {
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
    if (widget.animation == AnimationDo.BounceInUp) {
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
    if (widget.animation == AnimationDo.BounceInLeft) {
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
    if (widget.animation == AnimationDo.BounceInRight) {
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
    if (widget.animation == AnimationDo.ElasticIn) {
      return ElasticIn(
        duration: widget.duration ?? const Duration(milliseconds: 1000),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.ElasticInDown) {
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
    if (widget.animation == AnimationDo.ElasticInUp) {
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
    if (widget.animation == AnimationDo.ElasticInLeft) {
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
    if (widget.animation == AnimationDo.ElasticInRight) {
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
    if (widget.animation == AnimationDo.SlideInDown) {
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
    if (widget.animation == AnimationDo.SlideInUp) {
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
    if (widget.animation == AnimationDo.SlideInLeft) {
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
    if (widget.animation == AnimationDo.SlideInRight) {
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
    if (widget.animation == AnimationDo.FlipInX) {
      return FlipInX(
        duration: widget.duration ?? const Duration(milliseconds: 800),
        delay: widget.delay ?? const Duration(milliseconds: 0),
        controller: widget.controller,
        manualTrigger: widget.manualTrigger,
        animate: widget.animate ?? true,
        child: widget.child,
      );
    }
    if (widget.animation == AnimationDo.FlipInY) {
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
    if (widget.animation == AnimationDo.ZoomIn) {
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
    if (widget.animation == AnimationDo.ZoomOut) {
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
    if (widget.animation == AnimationDo.JelloIn) {
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
    if (widget.animation == AnimationDo.Bounce) {
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
    if (widget.animation == AnimationDo.Flash) {
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
    if (widget.animation == AnimationDo.Pulse) {
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
    if (widget.animation == AnimationDo.Swing) {
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
    if (widget.animation == AnimationDo.Spin) {
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
    if (widget.animation == AnimationDo.SpinPerfect) {
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
    if (widget.animation == AnimationDo.Dance) {
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
    if (widget.animation == AnimationDo.Roulette) {
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
