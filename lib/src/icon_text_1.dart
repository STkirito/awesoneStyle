import 'package:awesonestyle/src/Constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconText1 extends StatefulWidget {
  final Text text;
  final Icon preffixIcon;

  final EdgeInsetsGeometry? padding;
  final double? space;
  IconText1(
      {required this.text,
      required this.preffixIcon,
      this.padding,
      this.space});

  @override
  _IconText1State createState() => _IconText1State();
}

class _IconText1State extends State<IconText1> {
  Widget textdat() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: widget.padding ??
                const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.preffixIcon,
                SizedBox(
                  width: widget.space ?? Medidas.width(2),
                ),
                widget.text,
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textdat();
  }
}
