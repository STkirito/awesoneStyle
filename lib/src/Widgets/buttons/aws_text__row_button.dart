import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwsTextRowButton extends StatelessWidget {
  final String _title;
  final String _label;
  final TextStyle? _styleTitle;
  final TextStyle? _styleLabel;
  final void Function()? _onPressed;
  const AwsTextRowButton({
    Key? key,
    required String title,
    required String label,
    TextStyle? styleTitle,
    TextStyle? styleLabel,
    void Function()? onPressed,
  })  : _title = title,
        _label = label,
        _styleTitle = styleTitle,
        _styleLabel = styleLabel,
        _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: _onPressed,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _title,
              style: _styleTitle ??
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              _label,
              style: _styleLabel ??
                  const TextStyle(
                    /* color: Colors.white, */
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
