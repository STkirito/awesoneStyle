import 'package:flutter/material.dart';

class UserInputSecond extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool? obscureText;
  final IconData icon;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  const UserInputSecond(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.keyboardType,
      this.obscureText,
      required this.icon,
      this.margin,
      this.padding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: padding ?? const EdgeInsets.only(right: 10),
      margin: margin ?? const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
        ),
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white.withOpacity(0.8),
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle:
              TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.5)),
        ),
      ),
    );
  }
}
