import 'package:awesonestyle/awesonestyle.dart';
import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  final double? height;
  final double? width;
  final Text text;
  final Icon icon;
  final Gradient? gradient;
  final BlendMode? backgroundBlendMode;
  Notify(
      {this.height,
      this.width,
      required this.text,
      required this.icon,
      this.gradient,
      this.backgroundBlendMode});

  Widget _child() {
    return Container(
      height: height ?? Medidas.heigth(8),
      width: width ?? Medidas.width(80),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: gradient ??
            LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffff3d2f),
                Color(0xff2196f3),
              ],
              stops: [
                0,
                1,
              ],
            ),
        backgroundBlendMode: backgroundBlendMode ?? BlendMode.srcOver,
      ),
      child: Center(
        child: IconText1(
          padding: EdgeInsets.only(left: 20),
          text: text,
          icon: icon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _child();
  }
}
