import 'package:flutter/rendering.dart';

class AwsDateSettings {
  final String label;
  final String? initialLabel;
  final TextStyle? styleLabel;
  final TextStyle? styleInitial;
  final int? length;
  final bool year;
  AwsDateSettings({
    required this.label,
    this.initialLabel,
    this.styleLabel,
    this.styleInitial,
    this.length,
    this.year = false,
  });
}
