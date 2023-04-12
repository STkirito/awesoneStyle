import 'package:flutter/material.dart';

class AwsLinkText extends StatefulWidget {
  final String _text;
  final void Function()? _onPressed;
  final double? _fontSize;
  final Color? _isHover;
  final Color? _notHover;
  final TextStyle? _style;
  AwsLinkText({
    Key? key,
    required String text,
    void Function()? onPressed,
    double? fontSize,
    Color? isHover,
    Color? notHover,
    TextStyle? style,
  })  : _text = text,
        _onPressed = onPressed,
        _fontSize = fontSize,
        _isHover = isHover,
        _notHover = notHover,
        _style = style,
        super(key: key);

  @override
  State<AwsLinkText> createState() => _AwsLinkTextState();
}

class _AwsLinkTextState extends State<AwsLinkText> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget._onPressed,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            widget._text,
            style: widget._style ??
                TextStyle(
                  fontSize: widget._fontSize ?? 16,
                  color: isHover
                      ? widget._isHover ?? Colors.white
                      : widget._notHover ?? Colors.grey[700],
                ),
          ),
        ),
      ),
    );
  }
}
