import 'package:flutter/material.dart';

abstract class BadgetWidgets extends StatelessWidget {
  late final bool isIndicator;
  late final Color color;
  late final double? size;
  late final bool disabled;
  late final bool show;
  late final Widget child;
}

class BadgeBox extends BadgetWidgets {
  BadgeBox({
    isIndicator = false,
    color = Colors.black,
    size,
    disabled = false,
    show = true,
    required child,
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

class BadgeCircular extends BadgetWidgets {
  BadgeCircular({
    isIndicator = false,
    color = Colors.black,
    size,
    disabled = false,
    show = true,
    required child,
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
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(3),
      decoration: new BoxDecoration(
        color: disabled == false ? color : color?.withOpacity(0.6), //cambio
        borderRadius:
            BorderRadius.circular(size ?? (isIndicator == true ? 5 : 20) / 2),
      ),
      constraints: BoxConstraints(
        minWidth: size ?? (isIndicator == true ? 5 : 18),
        minHeight: size ?? (isIndicator == true ? 5 : 18),
      ),
      child: child,
    );
  }
}
