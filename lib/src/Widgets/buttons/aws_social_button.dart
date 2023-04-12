import 'package:flutter/material.dart';

class AwsSocialButton extends StatelessWidget {
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
  final double size;
  final VisualDensity? visualDensity;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry secondAlignment;
  final double? splashRadius;
  final Color? color;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Color? disabledColor;
  final MouseCursor mouseCursor;
  final FocusNode? focusNode;
  final bool autofocus;
  final String? tooltip;
  final bool enableFeedback;
  final BoxConstraints? secondConstraints;

  const AwsSocialButton({
    Key? key,
    this.width,
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
    this.size = 24.0,
    this.visualDensity,
    this.padding,
    this.secondAlignment = Alignment.center,
    this.splashRadius,
    this.color,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    this.mouseCursor = SystemMouseCursors.click,
    this.focusNode,
    this.autofocus = false,
    this.tooltip,
    this.secondConstraints,
    this.enableFeedback = true,
  }) : super(key: key);
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
      decoration: decoration ??
          BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
      child: IconButton(
        iconSize: size,
        visualDensity: visualDensity,
        padding: padding ?? EdgeInsets.all(5),
        alignment: secondAlignment,
        splashRadius: splashRadius,
        color: color,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        mouseCursor: mouseCursor,
        focusNode: focusNode,
        autofocus: autofocus,
        tooltip: tooltip,
        enableFeedback: enableFeedback,
        constraints: secondConstraints,
        icon: child ?? Icon(Icons.devices_other),
        onPressed: onPressed,
      ),
    );
  }
}
