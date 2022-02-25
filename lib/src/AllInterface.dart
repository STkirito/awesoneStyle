import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Dome extends StatelessWidget {
  final WidgetCallback builder;
  final Color? primaryColor;
  final List<Color>? secondaryColors;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final List<Widget>? persistentFooterButtons;
  final Widget? drawer;
  final void Function(bool)? onDrawerChanged;
  final Widget? endDrawer;
  final void Function(bool)? onEndDrawerChanged;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final bool? resizeToAvoidBottomInset;
  final bool primary;
  final DragStartBehavior drawerDragStartBehavior;
  final bool extendBuilder;
  final bool extendBuilderBehindAppBar;
  final Color? drawerScrimColor;
  final double? drawerEdgeDragWidth;
  final bool drawerEnableOpenDragGesture;
  final bool endDrawerEnableOpenDragGesture;
  final String? restorationId;
  final bool? activeDecoration;
  final DecorationImage? image;
  final BoxDecoration? decoration;
  final Key? key;
  const Dome({
    this.key,
    required this.builder,
    this.primaryColor,
    this.secondaryColors,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.resizeToAvoidBottomInset,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.restorationId,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.extendBuilder = false,
    this.extendBuilderBehindAppBar = false,
    this.activeDecoration = true,
    this.image,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) => Material(
        color: primaryColor ?? Colors.lightGreenAccent,
        child: Container(
          decoration: activeDecoration == true
              ? decoration ??
                  BoxDecoration(
                    image: image,
                    gradient: LinearGradient(
                      tileMode: TileMode.mirror,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: secondaryColors ??
                          [
                            Color(0xfffbc8c8),
                            Color(0xff259fff),
                          ],
                      stops: [
                        0,
                        1,
                      ],
                    ),
                    backgroundBlendMode: BlendMode.difference,
                  )
              : null,
          child: Scaffold(
            appBar: appBar,
            body: builder(),
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            floatingActionButtonAnimator: floatingActionButtonAnimator,
            persistentFooterButtons: persistentFooterButtons,
            drawer: drawer,
            onDrawerChanged: onDrawerChanged,
            endDrawer: endDrawer,
            onEndDrawerChanged: onEndDrawerChanged,
            bottomNavigationBar: bottomNavigationBar,
            bottomSheet: bottomSheet,
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            primary: primary,
            drawerDragStartBehavior: drawerDragStartBehavior,
            extendBody: extendBuilder,
            extendBodyBehindAppBar: extendBuilderBehindAppBar,
            drawerScrimColor: drawerScrimColor,
            drawerEdgeDragWidth: drawerEdgeDragWidth,
            drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
            endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
            restorationId: restorationId,
          ),
        ),
      );
}
