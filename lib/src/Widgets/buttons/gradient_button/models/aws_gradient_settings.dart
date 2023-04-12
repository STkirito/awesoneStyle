import 'package:flutter/material.dart';

class AwsGradientSettings {
  final List<Color> colors;
  final List<double>? stops;
  final BlendMode backgroundBlendMode;

  AwsGradientSettings(
      {required this.colors,
      this.stops,
      this.backgroundBlendMode = BlendMode.srcOver});
}
