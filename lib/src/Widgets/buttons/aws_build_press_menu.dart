import 'package:flutter/material.dart';

enum AwsWidgetDirections { horizontal, vertical }

class AwsBuildPressMenu {
  final double _width;
  final double _height;
  final Color? _color;
  final List<BoxShadow>? _boxShadow;
  final ScrollPhysics? _physics;
  final AwsWidgetDirections _direction;
  final List<Widget> _children;
  AwsBuildPressMenu({
    double width = 190,
    double height = 220,
    Color? color,
    List<BoxShadow>? boxShadow,
    ScrollPhysics? physics,
    AwsWidgetDirections direction = AwsWidgetDirections.vertical,
    required List<Widget> children,
  })  : _width = width,
        _height = height,
        _color = color,
        _boxShadow = boxShadow,
        _physics = physics,
        _direction = direction,
        _children = children;
  Widget build() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          color: _color ?? Colors.black.withOpacity(0.2),
          boxShadow: _boxShadow ??
              [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  blurRadius: 50,
                  blurStyle: BlurStyle.inner,
                ),
              ],
        ),
        child: SingleChildScrollView(
          physics: _physics ?? const BouncingScrollPhysics(),
          child: _direction == AwsWidgetDirections.vertical
              ? Column(
                  children: _children,
                )
              : Row(
                  children: _children,
                ),
        ),
      ),
    );
  }
}
