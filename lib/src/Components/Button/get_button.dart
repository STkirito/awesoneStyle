import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
/*   Key? key; */
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color disabledColor;
  final double? minSize;
  final double? pressedOpacity;
  final BorderRadius? borderRadius;
  final AlignmentGeometry alignment;
  final void Function()? onPressed;
  GetButton({
    Key? key,
    required this.child,
    this.padding,
    this.color,
    this.onPressed,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.alignment = Alignment.center,
    this.pressedOpacity = 0.4,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: padding,
      color: Colors.black.withOpacity(0.1),
      disabledColor: disabledColor,
      minSize: minSize,
      pressedOpacity: pressedOpacity,
      borderRadius: borderRadius,
      alignment: alignment,
      child: child,
      onPressed: onPressed,
    );
  }
}
