import 'package:awesonestyle/src/Widgets/buttons/gradient_button/models/aws_box_shadow_settigns.dart';
import 'package:awesonestyle/src/Widgets/buttons/gradient_button/models/aws_gradient_settings.dart';
import 'package:flutter/material.dart';

class AwsGradientButton extends StatelessWidget {
  final BorderRadiusGeometry? _borderRadius;
  final Widget _child;
  final AwsGradientSettings? _gradientSettings;
  final void Function()? _onPressed;
  final bool _boxShadow;
  final AwsBoxShadowSettings? _boxShadowSettings;
  AwsGradientButton({
    Key? key,
    BorderRadiusGeometry? borderRadius,
    required Widget child,
    AwsGradientSettings? gradientSettings,
    void Function()? onPressed,
    bool boxShadow = false,
    AwsBoxShadowSettings? boxShadowSettings,
  })  : _borderRadius = borderRadius,
        _child = child,
        _gradientSettings = gradientSettings,
        _onPressed = onPressed,
        _boxShadowSettings = boxShadowSettings,
        _boxShadow = boxShadow,
        super(key: key);

  static final AwsGradientSettings _gradientSettingsDefault =
      AwsGradientSettings(
    backgroundBlendMode: BlendMode.srcOver,
    colors: [
      const Color(0xff89fa3f),
      const Color(0xff2196f3),
    ],
    stops: [
      0,
      1,
    ],
  );
  static final _boxShadowSettingsDefault =
      AwsBoxShadowSettings(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return _NormalButton(
        borderRadius: _borderRadius,
        boxShadow: _boxShadow,
        boxShadowSettings: _boxShadowSettings ?? _boxShadowSettingsDefault,
        gradientSettings: _gradientSettings ?? _gradientSettingsDefault,
        onPressed: _onPressed,
        child: _child);
  }

  static Widget text(
      {Key? key,
      BorderRadiusGeometry? borderRadius,
      AwsGradientSettings? gradientSettings,
      AwsBoxShadowSettings? boxShadowSettings,
      bool boxShadow = false,
      required Text text,
      required void Function()? onPressed}) {
    return _ButtonText(
      boxShadowSettings: boxShadowSettings ?? _boxShadowSettingsDefault,
      gradientSettings: gradientSettings ?? _gradientSettingsDefault,
      onPressed: onPressed,
      text: text,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
    );
  }
}

class _NormalButton extends StatefulWidget {
  final BorderRadiusGeometry? _borderRadius;
  final Widget _child;
  final AwsGradientSettings? _gradientSettings;
  final void Function()? _onPressed;
  final bool _boxShadow;
  final AwsBoxShadowSettings? _boxShadowSettings;
  _NormalButton({
    Key? key,
    BorderRadiusGeometry? borderRadius,
    required Widget child,
    AwsGradientSettings? gradientSettings,
    void Function()? onPressed,
    bool boxShadow = false,
    AwsBoxShadowSettings? boxShadowSettings,
  })  : _borderRadius = borderRadius,
        _child = child,
        _gradientSettings = gradientSettings,
        _onPressed = onPressed,
        _boxShadowSettings = boxShadowSettings,
        _boxShadow = boxShadow,
        super(key: key);

  @override
  State<_NormalButton> createState() => _NormalButtonState();
}

class _NormalButtonState extends State<_NormalButton> {
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
                            AwsGradientButton._boxShadowSettingsDefault.color,
                        blurRadius: widget._boxShadowSettings?.blurRadius ??
                            AwsGradientButton
                                ._boxShadowSettingsDefault.blurRadius,
                        blurStyle: widget._boxShadowSettings?.blurStyle ??
                            AwsGradientButton
                                ._boxShadowSettingsDefault.blurStyle,
                      ),
                    ]
                  : null,
          gradient: LinearGradient(
            tileMode: TileMode.mirror,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: widget._gradientSettings?.colors ??
                AwsGradientButton._gradientSettingsDefault.colors,
            stops: widget._gradientSettings?.stops ??
                AwsGradientButton._gradientSettingsDefault.stops,
          ),
          backgroundBlendMode: widget._gradientSettings?.backgroundBlendMode ??
              AwsGradientButton._gradientSettingsDefault.backgroundBlendMode,
        ),
        child: TextButton(
          onPressed: widget._onPressed,
          child: widget._child,
        ),
      ),
    );
  }
}

class _ButtonText extends StatefulWidget {
  final BorderRadiusGeometry? _borderRadius;
  final Text _text;
  final AwsGradientSettings? _gradientSettings;
  final void Function()? _onPressed;
  final bool _boxShadow;
  final AwsBoxShadowSettings? _boxShadowSettings;
  _ButtonText({
    Key? key,
    BorderRadiusGeometry? borderRadius,
    required Text text,
    AwsGradientSettings? gradientSettings,
    void Function()? onPressed,
    required bool boxShadow,
    AwsBoxShadowSettings? boxShadowSettings,
  })  : _borderRadius = borderRadius,
        _text = text,
        _gradientSettings = gradientSettings,
        _onPressed = onPressed,
        _boxShadowSettings = boxShadowSettings,
        _boxShadow = boxShadow,
        super(key: key);

  @override
  State<_ButtonText> createState() => _ButtonTextState();
}

class _ButtonTextState extends State<_ButtonText> {
  bool _activeShadow = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() {
        _activeShadow = true;
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
                            AwsGradientButton._boxShadowSettingsDefault.color,
                        blurRadius: widget._boxShadowSettings?.blurRadius ??
                            AwsGradientButton
                                ._boxShadowSettingsDefault.blurRadius,
                        blurStyle: widget._boxShadowSettings?.blurStyle ??
                            AwsGradientButton
                                ._boxShadowSettingsDefault.blurStyle,
                      ),
                    ]
                  : null,
          gradient: LinearGradient(
            tileMode: TileMode.mirror,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: widget._gradientSettings?.colors ??
                AwsGradientButton._gradientSettingsDefault.colors,
            stops: widget._gradientSettings?.stops ??
                AwsGradientButton._gradientSettingsDefault.stops,
          ),
          backgroundBlendMode: widget._gradientSettings?.backgroundBlendMode ??
              AwsGradientButton._gradientSettingsDefault.backgroundBlendMode,
        ),
        child: TextButton(
          onPressed: widget._onPressed,
          child: widget._text,
        ),
      ),
    );
  }
}
