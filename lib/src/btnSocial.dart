import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

class BtnSocial extends StatelessWidget {
  final Key? key;
  final Function()? onPressed;

  final AlignmentGeometry? alignment;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  final Widget? child;

  final double childSize;
  final VisualDensity? childvisualDensity;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry childalignment;
  final double? childsplashRadius;
  final Color? childcolor;
  final Color? childfocusColor;
  final Color? childhoverColor;
  final Color? childhighlightColor;
  final Color? childsplashColor;
  final Color? childdisabledColor;
  final MouseCursor childmouseCursor;
  final FocusNode? childfocusNode;
  final bool childautofocus;
  final String? childtooltip;
  final bool childenableFeedback;
  final BoxConstraints? childconstraints;

  BtnSocial({
    this.width,
    this.key,
    this.alignment,
    this.decoration,
    this.foregroundDecoration,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
    this.child,
    required this.onPressed,
    this.childSize = 24.0,
    this.childvisualDensity,
    this.padding,
    this.childalignment = Alignment.center,
    this.childsplashRadius,
    this.childcolor,
    this.childfocusColor,
    this.childhoverColor,
    this.childhighlightColor,
    this.childsplashColor,
    this.childdisabledColor,
    this.childmouseCursor = SystemMouseCursors.click,
    this.childfocusNode,
    this.childautofocus = false,
    this.childtooltip,
    this.childconstraints,
    this.childenableFeedback = true,
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
      height: height ?? Medidas.width(10),
      width: width ?? Medidas.width(11),
      decoration: decoration ??
          BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
      child: IconButton(
        iconSize: childSize,
        visualDensity: childvisualDensity,
        padding: padding ?? EdgeInsets.all(5),
        alignment: childalignment,
        splashRadius: childsplashRadius,
        color: childcolor,
        focusColor: childfocusColor,
        hoverColor: childhoverColor,
        highlightColor: childhighlightColor,
        splashColor: childsplashColor,
        disabledColor: childdisabledColor,
        mouseCursor: childmouseCursor,
        focusNode: childfocusNode,
        autofocus: childautofocus,
        tooltip: childtooltip,
        enableFeedback: childenableFeedback,
        constraints: childconstraints,
        icon: child ??
            Image(
              image: AssetImage('assets/g-144.png'),
            ),
        onPressed: onPressed,
      ),
    );
  }
}
