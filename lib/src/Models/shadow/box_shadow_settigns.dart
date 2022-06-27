import 'package:flutter/material.dart';

class BoxShadowSettings {
  final Color color;
  final double blurRadius;
  final BlurStyle blurStyle;

  BoxShadowSettings(
      {required this.color,
      this.blurRadius = 10.0,
      this.blurStyle = BlurStyle.outer});
}
