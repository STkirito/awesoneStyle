import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldEdit extends StatelessWidget {
  TextEditingController controller;
  Function(String)? onSubmitted;
  String? hintText;
  bool? readOnly;
  TextInputType? keyboardType;
  bool? obscureText;
  TextFieldEdit({
    required this.controller,
    this.onSubmitted,
    this.hintText,
    this.readOnly,
    this.keyboardType,
    this.obscureText,
  });
  Widget _editItem() {
    return GestureDetector(
      child: TextField(
        controller: controller,
        keyboardType: keyboardType ?? TextInputType.text,
        autofocus: true,
        readOnly: readOnly ?? false,
        keyboardAppearance: Brightness.light,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
        onSubmitted: onSubmitted,
        obscureText: obscureText ?? false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _editItem();
  }
}
