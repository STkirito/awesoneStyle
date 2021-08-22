import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputText1 extends StatefulWidget {
  final String? hintText;
  final IconData? icono;
  final bool obscureText;
  final TextInputType? textInputTipe;
  TextEditingController? controller;

  InputText1(
      {this.hintText,
      this.icono,
      this.obscureText = false,
      this.textInputTipe = TextInputType.text,
      this.controller});

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
      width: double.infinity,
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.textInputTipe,
        obscureText: widget.obscureText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            prefixIcon: Icon(
              widget.icono,
              color: Colors.white,
            ),
            border: InputBorder.none),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textdat();
  }
}
