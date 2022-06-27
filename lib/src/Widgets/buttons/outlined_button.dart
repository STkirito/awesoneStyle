import 'package:flutter/material.dart';

class AwsOutlinedButton extends StatelessWidget {
  final void Function() _onPressed;
  final String _text;
  final Color _color;
  final bool _isFilled;
  AwsOutlinedButton({
    Key? key,
    required void Function() onPressed,
    required String text,
    Color color = Colors.blue,
    bool isFilled = false,
  })  : _onPressed = onPressed,
        _text = text,
        _color = color,
        _isFilled = isFilled,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
            side: MaterialStateProperty.all(BorderSide(color: _color)),
            backgroundColor: MaterialStateProperty.all(
                _isFilled ? _color.withOpacity(0.3) : Colors.transparent)),
        onPressed: _onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            _text,
            style: const TextStyle(fontSize: 16),
          ),
        ));
  }
}
