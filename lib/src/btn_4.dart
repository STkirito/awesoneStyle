import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

class BTN4 extends StatefulWidget {
  final Key? key;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final List<Widget> children;
  final ChildrenOrientation childrenOrientation;
  final AlignmentGeometry? alignment;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;
  final Function() onPressed;

  BTN4(
      {this.key,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      required this.children,
      required this.childrenOrientation,
      this.alignment,
      this.foregroundDecoration,
      this.constraints,
      this.margin,
      this.transform,
      this.transformAlignment,
      this.clipBehavior = Clip.none,
      this.textDirection,
      this.textBaseline,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.mainAxisSize = MainAxisSize.max,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.verticalDirection = VerticalDirection.down,
      required this.onPressed});
  @override
  _BTN4State createState() => _BTN4State();
}

class _BTN4State extends State<BTN4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.key,
      child: GestureDetector(
        child: Center(
          child: Container(
            alignment: widget.alignment,
            foregroundDecoration: widget.foregroundDecoration,
            constraints: widget.constraints,
            margin: widget.margin,
            transform: widget.transform,
            transformAlignment: widget.transformAlignment,
            clipBehavior: widget.clipBehavior,
            padding: EdgeInsets.all(5),
            height: widget.height ?? Medidas.heigth(6),
            width: widget.width ?? Medidas.width(35),
            decoration: widget.decoration ??
                BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
            child: widget.childrenOrientation == ChildrenOrientation.Row
                ? Row(
                    mainAxisAlignment: widget.mainAxisAlignment,
                    mainAxisSize: widget.mainAxisSize,
                    crossAxisAlignment: widget.crossAxisAlignment,
                    textDirection: widget.textDirection,
                    verticalDirection: widget.verticalDirection,
                    textBaseline: widget.textBaseline,
                    children: widget.children,
                  )
                : widget.childrenOrientation == ChildrenOrientation.Column
                    ? Column(
                        mainAxisAlignment: widget.mainAxisAlignment,
                        mainAxisSize: widget.mainAxisSize,
                        crossAxisAlignment: widget.crossAxisAlignment,
                        textDirection: widget.textDirection,
                        verticalDirection: widget.verticalDirection,
                        textBaseline: widget.textBaseline,
                        children: widget.children,
                      )
                    : null,
          ),
        ),
        onTap: widget.onPressed,
      ),
    );
  }
}
