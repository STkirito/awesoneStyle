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
  final InputBorder? disabledBorder;
  final InputBorder? border;
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
      this.labelText,
      this.disabledBorder,
      this.border});

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
            disabledBorder: widget.disabledBorder,
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
            border: widget.border ?? InputBorder.none),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textdat();
  }
}

// ignore: must_be_immutable
class InputText2 extends StatefulWidget {
  final String? hintText;
  final Widget? prefix;
  final Widget? suffix;
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
  TextEditingController? controller;

  InputText2({
    this.hintText,
    this.prefix,
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
    this.suffix,
  });

  @override
  _InputText2State createState() => _InputText2State();
}

class _InputText2State extends State<InputText2> {
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
            helperStyle: widget.hintStyle,
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ??
                TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
            prefixIcon: widget.prefix ?? null,
            suffixIcon: widget.suffix ?? null,
            border: InputBorder.none),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textdat();
  }
}

class FormInputText extends StatefulWidget {
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
  final InputBorder? disabledBorder;
  final InputBorder? border;
  TextEditingController? controller;
  final bool autocorrect;
  String? Function(String?)? validator;
  FormInputText(
      {this.validator,
      this.autocorrect = true,
      this.hintText,
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
      this.labelText,
      this.disabledBorder,
      this.border});

  @override
  _FormInputTextState createState() => _FormInputTextState();
}

class _FormInputTextState extends State<FormInputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(34),
      ),
      padding: widget.padding ?? EdgeInsets.all(10),
      width: Medidas.width(widget.width ?? 100),
      child: TextFormField(
        autocorrect: widget.autocorrect,
        validator: widget.validator,
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
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
            disabledBorder: widget.disabledBorder,
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
            border: widget.border ?? InputBorder.none),
      ),
    );
  }
}
