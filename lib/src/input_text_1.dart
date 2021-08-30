import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputText1 extends StatefulWidget {
  final String? hintText;
  final IconData? icon;
  final bool obscureText;
  final TextInputType? textInputTipe;
  final int? maxLength;
  final bool expands;
  final int? minLines;
  final int? maxLines;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  TextEditingController? controller;

  InputText1(
      {this.hintText,
      this.icon,
      this.obscureText = false,
      this.textInputTipe = TextInputType.text,
      this.controller,
      this.maxLength,
      this.expands = false,
      this.minLines,
      this.maxLines,
      this.padding,
      this.width,
      this.height});

  @override
  _InputText1State createState() => _InputText1State();
}

class _InputText1State extends State<InputText1> {
  Widget textdat() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(34),
      ),
      padding: widget.padding ?? EdgeInsets.all(10),
      width: Medidas.width(widget.width ?? 100),
      height: Medidas.heigth(widget.height),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.textInputTipe,
        obscureText: widget.obscureText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.justify,
        maxLength: widget.maxLength, //500
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        expands: widget.expands,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            prefixIcon: widget.icon != null
                ? Icon(
                    widget.icon,
                    color: Colors.white,
                  )
                : null,
            border: InputBorder.none),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textdat();
  }
}
