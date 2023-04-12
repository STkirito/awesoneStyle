import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwsTcButton extends StatelessWidget {
  final bool _value;
  final void Function()? _onPressed;
  final Text _text;
  AwsTcButton(
      {Key? key,
      required bool value,
      required Text text,
      void Function()? onPressed})
      : _value = value,
        _onPressed = onPressed,
        _text = text,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              constraints: BoxConstraints(maxWidth: 19, maxHeight: 19),
              color: Colors.black.withOpacity(0.1),
              child: Checkbox(
                value: _value,
                onChanged: (value) {},
                shape: CircleBorder(),
                side: BorderSide(color: Colors.black.withOpacity(0.1)),
                visualDensity: VisualDensity.compact,
              ),
            ),
          ),
          SizedBox(width: 5),
          _text,
        ],
      ),
      onPressed: _onPressed,
    );
  }
}
