import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BtnIconText1 extends StatefulWidget {
  final String? text;
  final IconData? icon;
  final TextStyle? textStyle;
  final Function()? onPressed;

  BtnIconText1({this.text, this.icon, this.onPressed, this.textStyle});

  @override
  _BtnIconText1State createState() => _BtnIconText1State();
}

class _BtnIconText1State extends State<BtnIconText1> {
  Widget textdat() {
    return Container(
      width: Medidas.width(100),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(34),
      ),
      //width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsetsDirectional.only(start: 5),
            child: TextButton.icon(
              icon: Icon(
                widget.icon,
                color: Colors.white,
              ),
              label: Text(
                widget.text.toString(),
                style: widget.textStyle ??
                    TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
              onPressed: widget.onPressed,
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
