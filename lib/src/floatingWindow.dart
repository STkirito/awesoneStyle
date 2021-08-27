import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

class FloatingWindow extends StatefulWidget {
  final Widget child;
  final double? width;
  final Color? color;
  final double? borderRadius;
  final double? widthBorder;
  final Color? colorBorder;
  final bool? singleChildScrollView;
  final double? singleChildScrollViewHeight;
  final double? singleChildScrollViewWidth;
  FloatingWindow({
    required this.child,
    this.width,
    this.color,
    this.borderRadius,
    this.widthBorder,
    this.colorBorder,
    this.singleChildScrollView = false,
    this.singleChildScrollViewHeight,
    this.singleChildScrollViewWidth,
  });
  @override
  _FloatingWindowState createState() => _FloatingWindowState();
}

class _FloatingWindowState extends State<FloatingWindow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Medidas.width(widget.width ?? 90),
      decoration: BoxDecoration(
        color: widget.color ?? Colors.lightBlue[50],
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 20),
        border: Border.all(
          color: widget.colorBorder ?? Colors.black,
          width: widget.widthBorder ?? 1,
        ),
      ),
      child: widget.singleChildScrollView == false
          ? widget.child
          : SingleChildScrollView(
              child: SizedBox(
                child: widget.child,
                height:
                    Medidas.heigth(widget.singleChildScrollViewHeight ?? 75),
              ),
            ),
    );
  }
}
