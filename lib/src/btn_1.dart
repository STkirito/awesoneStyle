import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Btn_1 extends StatelessWidget {
  final String texto;
  final Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  Btn_1(
      {this.texto = '',
      this.onPressed,
      this.backgroundColor = Colors.black38,
      this.textColor = Colors.white,
      this.width = 80});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Medidas.width(width),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
      child: TextButton(
        child: Text(
          texto,
          style: TextStyle(color: textColor),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
