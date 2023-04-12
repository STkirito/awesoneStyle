import 'package:flutter/material.dart';

class AwsBoxShadowSettings {
  final Color color;
  final double blurRadius;
  final BlurStyle blurStyle;

  AwsBoxShadowSettings(
      {required this.color,
      this.blurRadius = 10.0,
      this.blurStyle = BlurStyle.outer});
}
