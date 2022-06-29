import 'package:flutter/material.dart';

class AwsUserInputSecondField extends StatelessWidget {
  final TextEditingController _controller;
  final String _hintText;
  final TextInputType _keyboardType;
  final bool? _oscureText;
  final IconData _icon;
  final EdgeInsets? _margin;
  final EdgeInsets? _padding;
  AwsUserInputSecondField({
    Key? key,
    required TextEditingController controller,
    required String hintText,
    required TextInputType keyboardType,
    bool? oscureText,
    required IconData icon,
    EdgeInsets? margin,
    EdgeInsets? padding,
  })  : _controller = controller,
        _hintText = hintText,
        _keyboardType = keyboardType,
        _oscureText = oscureText,
        _icon = icon,
        _margin = margin,
        _padding = padding,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: _padding ?? const EdgeInsets.only(right: 10),
      margin: _margin ?? const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        controller: _controller,
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
        ),
        obscureText: _oscureText ?? false,
        keyboardType: _keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            _icon,
            color: Colors.white.withOpacity(0.8),
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: _hintText,
          hintStyle:
              TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.5)),
        ),
      ),
    );
  }
}
