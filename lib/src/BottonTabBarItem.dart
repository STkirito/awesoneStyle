import 'package:flutter/material.dart';

class BottonTabBarItem {
  final String text;
  final IconData icon;
  final Widget? badge;
  BottonTabBarItem({required this.text, required this.icon, this.badge});
  String get labels => text;
  IconData get icons => icon;
  Widget? get badges => badge;
}
