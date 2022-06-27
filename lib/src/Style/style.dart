import 'dart:math';
import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/material.dart';

class AwsStyle {
  static BoxDecoration backgroundGradientFatherDrawer = const BoxDecoration(
    gradient: LinearGradient(
      tileMode: TileMode.mirror,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xffc7bce9),
        Color(0xff66aee7),
      ],
      stops: [
        0,
        1,
      ],
    ),
    backgroundBlendMode: BlendMode.srcOver,
  );
  static const Transition routerTransition = Transition.leftToRightWithFade;
  static Color smalt = const Color(0xff121856);
  static Color oldRose = const Color(0xffD23756);
  static final Random _random = Random();
  static const int _maxColor = 256;

  static const int hoursADay = 24;

  static final List<String> weekTitles = ["M", "T", "W", "T", "F", "S", "S"];

  static const Color defaultLiveTimeIndicatorColor = Color(0xff444444);
  static const Color defaultBorderColor = Color(0xffdddddd);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);
  static const Color offWhite = Color(0xfff0f0f0);
  static const Color headerBackground = Color(0xFFDCF0FF);
  static Color get randomColor {
    return Color.fromRGBO(_random.nextInt(_maxColor),
        _random.nextInt(_maxColor), _random.nextInt(_maxColor), 1);
  }

  static InputDecoration authInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.3))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.3))),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.grey),
      labelStyle: const TextStyle(color: Colors.grey),
      hintStyle: const TextStyle(color: Colors.grey),
    );
  }

  static InputDecoration timeInputDecoration(
      {required String hint,
      required String label,
      required IconData icon,
      Color? colorIcon,
      TextStyle? labelStyle,
      TextStyle? hintStyle,
      InputBorder? border,
      InputBorder? enabledBorder}) {
    return InputDecoration(
      border: border ??
          OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
      enabledBorder: enabledBorder ??
          OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: colorIcon ?? Colors.grey),
      labelStyle: labelStyle ?? const TextStyle(color: Colors.grey),
      hintStyle: hintStyle ?? const TextStyle(color: Colors.grey),
    );
  }

  static InputDecoration textInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.grey),
      labelStyle: const TextStyle(color: Colors.grey),
      hintStyle: const TextStyle(color: Colors.grey),
    );
  }
}
