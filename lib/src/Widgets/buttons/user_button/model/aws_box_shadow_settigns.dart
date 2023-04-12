import 'package:flutter/material.dart';

class AwsBoxShadowSettingsUser {
  final Color color;
  final double blurRadius;
  final BlurStyle blurStyle;

  AwsBoxShadowSettingsUser(
      {required this.color,
      this.blurRadius = 10.0,
      this.blurStyle = BlurStyle.outer});
}
