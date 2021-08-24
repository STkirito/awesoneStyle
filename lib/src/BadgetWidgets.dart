import 'package:flutter/material.dart';

class BadgeWidgets {
  Widget badgetBox({
    bool? isIndicator = false,
    Color? color = Colors.black,
    double? size,
    bool? disabled = false,
    bool? show = true,
    required Widget? child,
  }) =>
      show == true && isIndicator == true
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

  Widget badgetCircular({
    bool? isIndicator = false,
    Color? color = Colors.black,
    double? size,
    bool? disabled = false,
    bool? show = true,
    required Widget? child,
  }) =>
      show == true && isIndicator == true
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
}
