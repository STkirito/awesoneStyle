import 'package:flutter/material.dart';

class BottonTabBarItem {
  final String text;
  final IconData icon;

  /*final List<IconData> iconData; */
  BottonTabBarItem({required this.text, required this.icon});
  //late List<String?> textLis = textLis..add(this.text);
  //late List<IconData> iconLis = iconLis..add(this.icon);
  /* List<String?> get labels => textLis;
  List<IconData>? get icons => iconLis; */
  String get labels => text;
  IconData get icons => icon;
}
