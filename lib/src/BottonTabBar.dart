import 'package:awesonestyle/src/BottonTabBarItem.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

class BottonTabBar extends StatefulWidget {
  final List<BottonTabBarItem> items;
  final int initialSelectedTab;
  final List<Widget?>? badges;
  final double? tabSize;
  final double? tabBarHeight;
  final TextStyle? textStyle;
  final Color? tabIconColor,
      tabSelectedColor,
      tabIconSelectedColor,
      tabBarColor;
  final double? tabIconSize;
  final double? tabIconSelectedSize;
  final Function(int) onTabItemSelected;
  BottonTabBar({
    required this.initialSelectedTab,
    required this.items,
    this.badges,
    this.tabSize,
    this.tabBarHeight,
    this.textStyle,
    this.tabIconColor,
    this.tabSelectedColor,
    this.tabIconSelectedColor,
    this.tabBarColor,
    this.tabIconSize,
    this.tabIconSelectedSize,
    required this.onTabItemSelected,
  }); //required this.tabController,
  @override
  _BottonTabBarState createState() => _BottonTabBarState();
}

class _BottonTabBarState extends State<BottonTabBar>
    with TickerProviderStateMixin {
  late final int max = widget.items.length;
  List<String> labels = [];
  List<IconData> icons = [];
  @override
  void initState() {
    super.initState();
    widget.items.forEach(
      (item) => {labels.add(item.labels), icons.add(item.icons)},
    );
  }

  @override
  void dispose() {
    super.dispose();
    //widget.tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: MotionTabBar(
          initialSelectedTab: labels[widget.initialSelectedTab],
          labels: labels,
          icons: icons,
          // optional badges, length must be same with labels
          badges: widget.badges,
          tabSize: widget.tabSize ?? 50,
          tabBarHeight: widget.tabBarHeight ?? 55,
          textStyle: widget.textStyle ??
              const TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
          tabIconColor: widget.tabIconColor ?? Colors.blue[600],
          tabIconSize: widget.tabIconSize ?? 28.0,
          tabIconSelectedSize: widget.tabIconSelectedSize ?? 26.0,
          tabSelectedColor: widget.tabSelectedColor ?? Colors.blue[900],
          tabIconSelectedColor: widget.tabSelectedColor ?? Colors.white,
          tabBarColor:
              widget.tabBarColor ?? Colors.white, //const Color(0xFFAFAFAF)
          onTabItemSelected: widget.onTabItemSelected,
        ),
      ),
    );
  }
}
