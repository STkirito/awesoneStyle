import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TcButton extends StatelessWidget {
  final bool value;
  final void Function()? onPressed;
  TcButton({Key? key, required this.value, required this.onPressed})
      : super(key: key);
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
                  value: value,
                  onChanged: (value) {},
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.black.withOpacity(0.1)),
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ),
            SizedBox(width: 5),
            Text('Terminos y condiciones')
          ],
        ),
        onPressed: onPressed);
  }
}
