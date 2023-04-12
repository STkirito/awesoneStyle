import 'package:flutter/material.dart';

class AwsFormFieldStyle {
  static InputDecoration dateTimeInputDecoration(
      {required String hint,
      required String label,
      required IconData icon,
      Color? colorIcon,
      TextStyle? labelStyle,
      TextStyle? hintStyle,
      InputBorder? border,
      InputBorder? enabledBorder}) {
    return InputDecoration(
      border: border ??
          OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
      enabledBorder: enabledBorder ??
          OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: colorIcon ?? Colors.grey),
      labelStyle: labelStyle ?? const TextStyle(color: Colors.grey),
      hintStyle: hintStyle ?? const TextStyle(color: Colors.grey),
    );
  }
}
