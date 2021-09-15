import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

class BTN1 extends StatelessWidget {
  final Key? key;
  final Function()? onPressed;

  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  final Text child;
  BTN1({
    this.width,
    this.key,
    this.alignment,
    this.padding,
    this.decoration,
    this.foregroundDecoration,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
    required this.child,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      alignment: alignment,
      foregroundDecoration: foregroundDecoration,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      padding: padding ?? EdgeInsets.all(5),
      height: height ?? Medidas.heigth(6),
      width: width ?? Medidas.width(30),
      decoration: decoration ??
          BoxDecoration(
              color: Color(0xFFFF422C),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
      child: TextButton(
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}
