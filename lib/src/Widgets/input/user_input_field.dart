import 'package:flutter/material.dart';

//TODO: Future Fixe
class AwsUserInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintTitle;
  final TextInputType keyboardType;
  final bool? obscureText;
  const AwsUserInputField(
      {Key? key,
      required this.controller,
      required this.hintTitle,
      required this.keyboardType,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: TextField(
          obscureText: obscureText ?? false,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintTitle,
            hintStyle: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontStyle: FontStyle.italic),
          ),
          //keyboardType: keyboardType,
        ),
      ),
    );
  }
}
