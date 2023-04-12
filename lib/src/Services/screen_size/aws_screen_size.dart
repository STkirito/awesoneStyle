import 'package:flutter/widgets.dart';

class AwsScreenSize {
  static late double _width;
  static late double _heigth;
  AwsScreenSize(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _heigth = MediaQuery.of(context).size.height;
  }
  static double width(double? percentage) {
    return _width * (percentage! / 100);
  }

  static double height(double? percentage) {
    return _heigth * (percentage! / 100);
  }

  static double ctxwidth(BuildContext context, {double? percentage}) {
    return MediaQuery.of(context).size.width * (percentage! / 100);
  }

  static double ctxheight(BuildContext context, {double? percentage}) {
    return MediaQuery.of(context).size.height * (percentage! / 100);
  }
}
