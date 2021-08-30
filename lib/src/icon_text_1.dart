import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconText1 extends StatefulWidget {
  final String? text;
  final IconData? icon;
  final TextStyle? textStyle;
  IconText1(
      {this.text,
      this.icon,
      this.textStyle = const TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.white,
      )});

  @override
  _IconText1State createState() => _IconText1State();
}

class _IconText1State extends State<IconText1> {
  Widget textdat() {
    return Container(
      height: Medidas.heigth(100),
      width: Medidas.width(100),

      //width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsetsDirectional.only(start: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(widget.icon),
                SizedBox(
                  width: Medidas.width(2),
                ),
                Text(widget.text.toString(), style: widget.textStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textdat();
  }
}
