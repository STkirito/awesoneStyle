import 'package:flutter/material.dart';

class Medidas {
  static late double _width;
  static late double _heigth;

  Medidas(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _heigth = MediaQuery.of(context).size.height;
  }

  static double width(double? porsentaje) {
    return _width * (porsentaje! / 100);
  }

  static double heigth(double? porsentaje) {
    return _heigth * (porsentaje! / 100);
  }
}

enum ChildrenOrientation { Row, Column }
enum ButtonDialog { OK, CHANGE, CANCEL, CHANGEANDCANCEL, ACTIONS, NULL }
enum ButtonType { Text, IconText }
enum AnimationDo {
  FadeIn,
  FadeInDown,
  FadeInDownBig,
  FadeInUp,
  FadeInUpBig,
  FadeInLeft,
  FadeInLeftBig,
  FadeInRight,
  FadeInRightBig,
  FadeOut,
  FadeOutDown,
  FadeOutDownBig,
  FadeOutUp,
  FadeOutUpBig,
  FadeOutLeft,
  FadeOutLeftBig,
  FadeOutRight,
  FadeOutRightBig,
  BounceInDown,
  BounceInUp,
  BounceInLeft,
  BounceInRight,
  ElasticIn,
  ElasticInDown,
  ElasticInUp,
  ElasticInLeft,
  ElasticInRight,
  SlideInDown,
  SlideInUp,
  SlideInLeft,
  SlideInRight,
  FlipInX,
  FlipInY,
  ZoomIn,
  ZoomOut,
  JelloIn,
  Bounce,
  Flash,
  Pulse,
  Swing,
  Spin,
  SpinPerfect,
  Dance,
  Roulette
}
