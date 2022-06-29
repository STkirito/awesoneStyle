import 'package:flutter/material.dart';

class AwsUserInputField extends StatelessWidget {
  final TextEditingController _controller;
  final String _hintTitle;
  final TextInputType _keyboardType;
  final bool? _obscureText;
  AwsUserInputField({
    Key? key,
    required TextEditingController controller,
    required String hintTitle,
    required TextInputType keyboardType,
    bool? obscureText,
  })  : _controller = controller,
        _hintTitle = hintTitle,
        _keyboardType = keyboardType,
        _obscureText = obscureText,
        super(key: key);
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
          keyboardType: _keyboardType,
          obscureText: _obscureText ?? false,
          controller: _controller,
          decoration: InputDecoration(
            hintText: _hintTitle,
            hintStyle: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
