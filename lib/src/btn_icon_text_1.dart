import 'package:flutter/material.dart';

class BtnIconText1 extends StatefulWidget {
  String? text;
  final IconData? icono;
  Function()? onPressed;

  BtnIconText1({this.text, this.icono, this.onPressed});

  @override
  _BtnIconText1State createState() => _BtnIconText1State();
}

class _BtnIconText1State extends State<BtnIconText1> {
  Widget textdat() {
    return Container(
      width: double.infinity,
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
                widget.icono,
                color: Colors.white,
              ),
              label: Text(
                widget.text.toString(),
                style: TextStyle(
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
