import 'package:awesonestyle/src/bottomNaviBarItem.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNaviBar extends StatefulWidget {
  Function(int)? onTap;
  final double height;
  final int index;
  final List<BottomNaviBarItem> items;
  final Color? buttonBackgroundColor;
  final Color? backgroundColor;
  final Curve? animationCurve;
  final Duration? animationDuration;
  BottomNaviBar(
      {this.height = 55,
      required this.index,
      required this.onTap,
      required this.items,
      this.buttonBackgroundColor,
      this.backgroundColor,
      this.animationCurve,
      this.animationDuration});
  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
      ),
      onTap: () => setState(() {}),
    );
  }
}
