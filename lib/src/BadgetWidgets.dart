import 'package:flutter/material.dart';

abstract class BadgetWidgets extends StatelessWidget {}

class BadgeBox extends BadgetWidgets {
  final bool isIndicator;
  final Color color;
  final double? size;
  final bool disabled;
  final bool show;
  final Widget child;
  BadgeBox({
    this.isIndicator = false,
    this.color = Colors.black,
    this.size,
    this.disabled = false,
    this.show = true,
    required this.child,
  });

  Widget _badgetBox() => show == true && isIndicator == true
      ? Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.all(7),
          decoration: new BoxDecoration(
            color: disabled == false ? color : color!.withOpacity(0.6),
          ),
          constraints: BoxConstraints(
            minWidth: size ?? (isIndicator == true ? 5 : 18),
            minHeight: size ?? (isIndicator == true ? 5 : 18),
          ),
        )
      : show == true && child != null
          ? Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(3),
              decoration: new BoxDecoration(
                color: disabled == false ? color : color!.withOpacity(0.6),
              ),
              constraints: BoxConstraints(
                minWidth: size ?? (isIndicator == true ? 5 : 18),
                minHeight: size ?? (isIndicator == true ? 5 : 18),
              ),
              child: child,
            )
          : Container();

  @override
  Widget build(BuildContext context) {
    return _badgetBox();
  }
}

abstract class BadgeCircular extends BadgetWidgets {
  final bool isIndicator;
  final Color color;
  final double? size;
  final bool disabled;
  final bool show;
  final Widget child;
  BadgeCircular({
    this.isIndicator = false,
    this.color = Colors.black,
    this.size,
    this.disabled = false,
    this.show = true,
    required this.child,
  });
  Widget _badgetCircular() => show == true && isIndicator == true
      ? Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.all(7),
          decoration: new BoxDecoration(
            color: disabled == false ? color : color!.withOpacity(0.6),
            borderRadius: BorderRadius.circular(
                size ?? (isIndicator == true ? 5 : 20) / 2),
          ),
          constraints: BoxConstraints(
            minWidth: size ?? (isIndicator == true ? 5 : 18),
            minHeight: size ?? (isIndicator == true ? 5 : 18),
          ),
        )
      : show == true && child != null
          ? Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(3),
              decoration: new BoxDecoration(
                color: disabled == false ? color : color!.withOpacity(0.6),
                borderRadius: BorderRadius.circular(
                    size ?? (isIndicator == true ? 5 : 20) / 2),
              ),
              constraints: BoxConstraints(
                minWidth: size ?? (isIndicator == true ? 5 : 18),
                minHeight: size ?? (isIndicator == true ? 5 : 18),
              ),
              child: child,
            )
          : Container();
  @override
  Widget build(BuildContext context) {
    return _badgetCircular();
  }
}
