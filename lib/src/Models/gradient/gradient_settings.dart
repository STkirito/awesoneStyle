import 'package:flutter/material.dart';

class GradientSettings {
  final List<Color> colors;
  final List<double>? stops;
  final BlendMode backgroundBlendMode;

  GradientSettings(
      {required this.colors,
      this.stops,
      this.backgroundBlendMode = BlendMode.srcOver});
}
