import 'package:awesonestyle/src/bottonBarItem.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottonNaviBar extends StatefulWidget {
  final double height;
  final int index;
  final List<BottonBarItem> items;
  final Color? buttonBackgroundColor;
  final Color? backgroundColor;
  final Curve? animationCurve;
  final Duration? animationDuration;
  BottonNaviBar(
      {this.height = 55,
      required this.index,
      required this.items,
      this.buttonBackgroundColor,
      this.backgroundColor,
      this.animationCurve,
      this.animationDuration});
  @override
  _BottonNaviBarState createState() => _BottonNaviBarState();
}

class _BottonNaviBarState extends State<BottonNaviBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CurvedNavigationBar(
          buttonBackgroundColor: widget.buttonBackgroundColor,
          backgroundColor: widget.backgroundColor ?? Colors.blueAccent,
          animationCurve: widget.animationCurve ?? Curves.easeOut,
          animationDuration:
              widget.animationDuration ?? const Duration(milliseconds: 600),
          height: widget.height,
          index: widget.index,
          items: widget.items,
        ),
      );
  }
}
