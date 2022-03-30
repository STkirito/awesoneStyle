import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ScreenSize {
  static late double _width;
  static late double _heigth;

  ScreenSize(BuildContext context) {
    _width = Get.width;
    _heigth = Get.height;
  }

  static double width(double? porsentaje) {
    return _width * (porsentaje! / 100);
  }

  static double height(double? porsentaje) {
    return _heigth * (porsentaje! / 100);
  }
}
