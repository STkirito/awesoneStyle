import 'package:awesonestyle/src/Constant/constant.dart';
import 'package:flutter/material.dart';

class BuildPressMenu {
  final double width;
  final double height;
  final Color? color;
  final List<BoxShadow>? boxShadow;
  final ScrollPhysics? physics;
  final WidgetDirections direction;
  final List<Widget> children;
  BuildPressMenu(
      {this.width = 190,
      this.height = 220,
      this.color,
      this.boxShadow,
      this.physics,
      this.direction = WidgetDirections.vertical,
      required this.children});
  Widget build() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? Colors.black.withOpacity(0.2),
          boxShadow: boxShadow ??
              [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  blurRadius: 50,
                  blurStyle: BlurStyle.inner,
                ),
              ],
        ),
        child: SingleChildScrollView(
          physics: physics ?? const BouncingScrollPhysics(),
          child: direction == WidgetDirections.vertical
              ? Column(
                  children: children,
                )
              : Row(
                  children: children,
                ),
        ),
      ),
    );
  }
}
