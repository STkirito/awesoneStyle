import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropdownInput extends StatefulWidget {
  final String dropdownValue;
  final Function(String? value) onChanged;
  final IconData? icon;
  final double? iconSize;
  final TextStyle? textStyle;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? dropdownColor;
  final List<String> values;
  final Decoration? decoration;
  final Color? iconEnabledColor;
  final BorderRadius? borderRadius;
  DropdownInput(
      {this.padding,
      this.width,
      this.textStyle,
      this.iconSize,
      required this.dropdownValue,
      required this.onChanged,
      this.icon,
      this.dropdownColor,
      required this.values,
      this.decoration,
      this.iconEnabledColor,
      this.borderRadius});

  @override
  _DropdownInputState createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  //String dropdownValue = 'Asunto 1';

  Widget _dropdownButton() => Container(
        decoration: widget.decoration ??
            BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(34),
            ),
        padding: widget.padding ?? EdgeInsets.all(10),
        width: Medidas.width(widget.width ?? 100),
        child: DropdownButton<String>(
          value: widget.dropdownValue,
          icon: Icon(widget.icon ?? Icons.arrow_drop_down),
          iconSize: widget.iconSize ?? 40,
          iconEnabledColor: widget.iconEnabledColor ?? Colors.white,
          elevation: 16,
          style: widget.textStyle ?? const TextStyle(color: Colors.white),
          dropdownColor: widget.dropdownColor ?? Colors.transparent,
          isExpanded: true,
          underline: Container(
            height: 0,
          ),
          onChanged: widget.onChanged,
          items: widget.values.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
              ),
            );
          }).toList(),
          borderRadius: widget.borderRadius,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return _dropdownButton();
  }
}
