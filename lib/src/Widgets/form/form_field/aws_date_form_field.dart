import 'package:awesonestyle/src/Widgets/form/form_field/style/aws_form_field_style.dart';
import 'package:flutter/material.dart';

class AwsDateFormField extends StatelessWidget {
  const AwsDateFormField(
      {Key? key,
      required DateTime dateTime,
      InputDecoration? decoration,
      String? hint,
      final String? label})
      : _dateTime = dateTime,
        _decoration = decoration,
        _hint = hint,
        _label = label,
        super(key: key);
  final DateTime _dateTime;
  final InputDecoration? _decoration;
  final String? _hint;
  final String? _label;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(
      text: '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
    );
    return TextFormField(
      readOnly: true,
      controller: controller,
      decoration: _decoration ??
          AwsFormFieldStyle.dateTimeInputDecoration(
            hint: _hint ?? 'Fecha',
            label: _label ?? 'Fecha',
            icon: Icons.timer,
          ),
    );
  }
}
