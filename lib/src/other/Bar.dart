import 'package:awesonestyle/src/other/Badget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

/* class BarPageView extends StatefulWidget {
  final TabController? controller;
  final int index;
  final List<Widget> pages;

  const BarPageView({required this.controller, required this.pages, this.index=0});
  @override
  _BarPageViewState createState() => _BarPageViewState();
} */

class BarPageView extends StatelessWidget {
  final int index;
  final List<Widget> pages;

  const BarPageView({required this.pages, this.index = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.pages[this.index],
    );
  }
}

class BottonNaviBar extends StatefulWidget {
  final double height;
  final int index;
  final List<BottonNaviBarItem> items;
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

class BottonNaviBarItem extends StatefulWidget {
  final double? height;
  final double? weight;
  final IconData icon;
  final String text;
  final Color? textcolor;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? fontSize;

  BottonNaviBarItem(
      {this.height,
      this.weight,
      required this.icon,
      required this.text,
      this.fontSize,
      this.textcolor,
      this.backgroundColor,
      this.iconColor});
  /* */
  get gettext => text;
  get geticon => icon;
  @override
  _BottonNaviBarItemState createState() => _BottonNaviBarItemState();
}

class _BottonNaviBarItemState extends State<BottonNaviBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 40,
      width: widget.weight ?? 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: widget.iconColor,
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: widget.fontSize ?? 10,
                    color: widget.textcolor,
                    backgroundColor: widget.backgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottonTabBar extends StatefulWidget {
  final List<BottonTabBarItem> items;
  final int initialSelectedTab;
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
  List<Widget?> badges = [];
  @override
  void initState() {
    super.initState();
    widget.items.forEach(
      (item) => {
        labels.add(item.labels),
        icons.add(item.icons),
        badges.add(item.badges)
      },
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
      child: MotionTabBar(
        initialSelectedTab: labels[widget.initialSelectedTab],
        labels: labels,
        icons: icons,
        // optional badges, length must be same with labels
        badges: badges,
        tabSize: widget.tabSize ?? 50, //tiene Medidas
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
    );
  }
}

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
