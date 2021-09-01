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
  final double? iconSize;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final bool? readOnly;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Function(String)? onSubmitted;
  final Function()? onTap;
  final InputDecoration? decoration;
  final InputBorder? errorBorder;
  final String? errorText;
  final TextStyle? errorStyle;
  final String? helperText;
  final TextStyle? labelStyle;
  final String? labelText;
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
      this.hintStyle,
      this.iconSize,
      this.readOnly,
      this.onChanged,
      this.onEditingComplete,
      this.onSubmitted,
      this.onTap,
      this.decoration,
      this.style,
      this.errorBorder,
      this.errorText,
      this.helperText,
      this.errorStyle,
      this.labelStyle,
      this.labelText});

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
      child: TextField(
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        onSubmitted: widget.onSubmitted,
        onTap: widget.onTap,
        readOnly: widget.readOnly ?? false,
        controller: widget.controller,
        keyboardType: widget.textInputTipe,
        obscureText: widget.obscureText,
        style: widget.style ??
            TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.justify,
        maxLength: widget.maxLength, //500
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        expands: widget.expands,
        decoration: InputDecoration(
            labelStyle: widget.labelStyle,
            labelText: widget.labelText,
            helperText: widget.helperText,
            helperStyle: widget.hintStyle,
            errorStyle: widget.errorStyle,
            errorText: widget.errorText,
            errorBorder: widget.errorBorder,
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ??
                TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
            prefixIcon: widget.icon != null
                ? Icon(
                    widget.icon,
                    color: Colors.white,
                    size: widget.iconSize ?? null,
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
