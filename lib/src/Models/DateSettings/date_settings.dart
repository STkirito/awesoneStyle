import 'package:flutter/rendering.dart';

class DateSettings {
  final String label;
  final String? initialLabel;
  final TextStyle? styleLabel;
  final TextStyle? styleInitial;
  final int? length;
  final bool year;
  DateSettings({
    required this.label,
    this.initialLabel,
    this.styleLabel,
    this.styleInitial,
    this.length,
    this.year = false,
  });
}
