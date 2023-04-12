import 'package:flutter/animation.dart';

class AwsAnimationProperty {
  final double? value;
  final Duration? duration;
  final Duration? reverseDuration;
  final String? debugLabel;
  final double lowerBound;
  final double upperBound;
  final AnimationBehavior animationBehavior;
  AwsAnimationProperty({
    this.value,
    this.duration,
    this.reverseDuration,
    this.debugLabel,
    this.lowerBound = 0.0,
    this.upperBound = 1.0,
    this.animationBehavior = AnimationBehavior.normal,
  });
}
