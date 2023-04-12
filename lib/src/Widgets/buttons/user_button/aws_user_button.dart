import 'package:awesonestyle/src/Widgets/buttons/user_button/model/aws_box_shadow_settigns.dart';
import 'package:flutter/material.dart';

class AwsUserButton {
  static final _boxShadowSettingsDefault =
      AwsBoxShadowSettingsUser(color: Colors.white);

  static Widget circleAvatar(
      {Key? key,
      required Widget child,
      required void Function()? onPressed,
      void Function()? onLongPress,
      Color? backgroundColor,
      ImageProvider<Object>? backgroundImage,
      ImageProvider<Object>? foregroundImage,
      void Function(Object, StackTrace?)? onBackgroundImageError,
      void Function(Object, StackTrace?)? onForegroundImageError,
      Color? foregroundColor,
      double? radius,
      double? minRadius,
      double? maxRadius,
      HitTestBehavior? behavior,
      required bool boxShadow}) {
    return _CircleAvatar(
      onPressed: onPressed,
      boxShadow: boxShadow,
      child: child,
    );
  }
}

class _CircleAvatar extends StatefulWidget {
  final Widget _child;
  final void Function()? _onPressed;
  final void Function()? _onLongPress;
  final Color? _backgroundColor;
  final ImageProvider<Object>? _backgroundImage;
  final ImageProvider<Object>? _foregroundImage;
  final void Function(Object, StackTrace?)? _onBackgroundImageError;
  final void Function(Object, StackTrace?)? _onForegroundImageError;
  final Color? _foregroundColor;
  final double? _radius;
  final double? _minRadius;
  final double? _maxRadius;
  final HitTestBehavior? _behavior;
  final bool _boxShadow;
  final AwsBoxShadowSettingsUser? _boxShadowSettings;

  final BorderRadiusGeometry? _borderRadius;
  const _CircleAvatar({
    Key? key,
    required Widget child,
    required void Function()? onPressed,
    void Function()? onLongPress,
    Color? backgroundColor,
    ImageProvider<Object>? backgroundImage,
    ImageProvider<Object>? foregroundImage,
    void Function(Object, StackTrace?)? onBackgroundImageError,
    void Function(Object, StackTrace?)? onForegroundImageError,
    Color? foregroundColor,
    double? radius,
    double? minRadius,
    double? maxRadius,
    HitTestBehavior? behavior,
    required bool boxShadow,
    AwsBoxShadowSettingsUser? boxShadowSettings,
    BorderRadiusGeometry? borderRadius,
  })  : _child = child,
        _onPressed = onPressed,
        _onLongPress = onLongPress,
        _backgroundColor = backgroundColor,
        _backgroundImage = backgroundImage,
        _foregroundImage = foregroundImage,
        _onBackgroundImageError = onBackgroundImageError,
        _onForegroundImageError = onForegroundImageError,
        _foregroundColor = foregroundColor,
        _radius = radius,
        _minRadius = minRadius,
        _maxRadius = maxRadius,
        _behavior = behavior,
        _boxShadow = boxShadow,
        _boxShadowSettings = boxShadowSettings,
        _borderRadius = borderRadius,
        super(key: key);

  @override
  State<_CircleAvatar> createState() => _CircleAvatarState();
}

class _CircleAvatarState extends State<_CircleAvatar> {
  bool _activeShadow = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() {
        _activeShadow = true;
        print('dentro');
      }),
      onExit: (_) => setState(() {
        _activeShadow = false;
      }),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: widget._borderRadius ?? BorderRadius.circular(30),
          boxShadow: widget._boxShadow == false
              ? null
              : _activeShadow
                  ? [
                      BoxShadow(
                        color: widget._boxShadowSettings?.color ??
                            AwsUserButton._boxShadowSettingsDefault.color,
                        blurRadius: widget._boxShadowSettings?.blurRadius ??
                            AwsUserButton._boxShadowSettingsDefault.blurRadius,
                        blurStyle: widget._boxShadowSettings?.blurStyle ??
                            AwsUserButton._boxShadowSettingsDefault.blurStyle,
                      ),
                    ]
                  : null,
        ),
        child: GestureDetector(
          behavior: widget._behavior ?? HitTestBehavior.translucent,
          onTap: widget._onPressed,
          onLongPress: widget._onLongPress,
          child: CircleAvatar(
            backgroundColor: widget._backgroundColor,
            backgroundImage: widget._backgroundImage,
            foregroundImage: widget._foregroundImage,
            onBackgroundImageError: widget._onBackgroundImageError,
            onForegroundImageError: widget._onForegroundImageError,
            foregroundColor: widget._foregroundColor,
            radius: widget._radius,
            minRadius: widget._minRadius,
            maxRadius: widget._maxRadius,
            child: widget._child,
          ),
        ),
      ),
    );
  }
}
