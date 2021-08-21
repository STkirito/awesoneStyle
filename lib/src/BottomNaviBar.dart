import 'package:awesonestyle/src/bottomNaviBarItem.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNaviBar extends StatefulWidget {
  Function(int)? onTap;
  final double height;
  final int index;
  final List<BottomNaviBarItem> items;
  BottomNaviBar(
      {this.height = 55,
      required this.index,
      required this.onTap,
      required this.items});
  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CurvedNavigationBar(
        height: widget.height,
        index: widget.index,
        items: widget.items,
      ),
    );
  }
}
