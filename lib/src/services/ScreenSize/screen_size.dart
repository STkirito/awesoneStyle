import 'package:flutter/widgets.dart';

class AwsScreenSize {
  static late double _width;
  static late double _heigth;

  AwsScreenSize(BuildContext context) {
    _width = context.size!.width;
    _heigth = context.size!.height;
  }

  static double width(double? porsentaje) {
    return _width * (porsentaje! / 100);
  }

  static double height(double? porsentaje) {
    return _heigth * (porsentaje! / 100);
  }
}
