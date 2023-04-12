import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwsGetButton extends StatelessWidget {
  final Widget _child;
  final EdgeInsetsGeometry? _padding;
  final Color? _color;
  final Color _disabledColor;
  final double? _minSize;
  final double _pressedOpacity;
  final BorderRadius _borderRadius;
  final AlignmentGeometry _alignment;
  final void Function()? _onPressed;
  AwsGetButton({
    Key? key,
    required Widget child,
    EdgeInsetsGeometry? padding,
    Color? color,
    Color disabledColor = CupertinoColors.quaternarySystemFill,
    double? minSize = kMinInteractiveDimensionCupertino,
    double pressedOpacity = 0.4,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    AlignmentGeometry alignment = Alignment.center,
    void Function()? onPressed,
  })  : _child = child,
        _padding = padding,
        _color = color,
        _disabledColor = disabledColor,
        _minSize = minSize,
        _pressedOpacity = pressedOpacity,
        _borderRadius = borderRadius,
        _alignment = alignment,
        _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: _padding,
      color: _color ?? Colors.black.withOpacity(0.1),
      disabledColor: _disabledColor,
      minSize: _minSize,
      pressedOpacity: _pressedOpacity,
      borderRadius: _borderRadius,
      alignment: _alignment,
      child: _child,
      onPressed: _onPressed,
    );
  }
}
