import 'package:flutter/material.dart';

class AwsFlatButton extends StatelessWidget {
  final Text _text;
  final Color _color;
  final void Function()? _onPressed;

  AwsFlatButton({
    Key? key,
    required Text text,
    Color color = Colors.pink,
    void Function()? onPressed,
  })  : _text = text,
        _color = color,
        _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(10),
        foregroundColor: _color,
      ),
      onPressed: _onPressed,
      child: _text,
    );
  }
}
