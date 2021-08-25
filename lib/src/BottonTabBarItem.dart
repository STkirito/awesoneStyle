import 'package:awesonestyle/src/Badget.dart';
import 'package:flutter/material.dart';

class BottonTabBarItem {
  final String text;
  final IconData icon;
  final BadgetWidgets? badge;
  final Widget? badgeAnimation;
  BottonTabBarItem(this.badgeAnimation,
      {required this.text, required this.icon, this.badge});
  String get labels => text;
  IconData get icons => icon;
  Widget? get badges {
    if (badge != null) {
      return badge;
    } else if (badgeAnimation != null) {
      return badgeAnimation;
    } else {
      return null;
    }
  }
}
