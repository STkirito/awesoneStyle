import 'package:awesonestyle/src/Badget.dart';
import 'package:flutter/material.dart';

/// Class [BottonTabBarItem]:
/// [badget]: BadgetWidgets without Animation
/// [badgetAnimation]: BadgetWidgets to animate, The parent has to be an animation if not its behavior is like Badget.

class BottonTabBarItem {
  final String text;
  final IconData icon;
  final BadgetWidgets? badge;
  final Widget? badgeAnimation;
  BottonTabBarItem({
    required this.text,
    required this.icon,
    this.badge,
    this.badgeAnimation,
  });
  String get labels => text;
  IconData get icons => icon;
  Widget? get badges {
    if (badge != null && badgeAnimation == null) {
      return badge;
    } else if (badgeAnimation != null && badge == null) {
      return badgeAnimation;
    } else {
      return null;
    }
  }
}
