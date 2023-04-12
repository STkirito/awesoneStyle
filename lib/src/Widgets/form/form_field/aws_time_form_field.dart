import 'package:awesonestyle/src/Widgets/form/form_field/style/aws_form_field_style.dart';
import 'package:flutter/material.dart';

class AwsTimeFormField extends StatelessWidget {
  const AwsTimeFormField({
    Key? key,
    TextEditingController? controller,
    required Future Function<ExtensionDialog>() dialogAwsTimePicker,
    String? Function(String?)? validator,
    InputDecoration? decoration,
    String? hint,
    String? label,
  })  : _controller = controller,
        _dialogAwsTimePicker = dialogAwsTimePicker,
        _decoration = decoration,
        _validator = validator,
        _hint = hint,
        _label = label,
        super(key: key);
  final String? Function(String?)? _validator;
  final TextEditingController? _controller;
  final Future Function<ExtensionDialog>() _dialogAwsTimePicker;
  final InputDecoration? _decoration;
  final String? _hint;
  final String? _label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: _controller,
      onTap: () => _dialogAwsTimePicker(),
      validator: _validator,
      decoration: _decoration ??
          AwsFormFieldStyle.dateTimeInputDecoration(
            hint: _hint ?? 'Hora de inicio',
            label: _label ?? 'Hora de inicio',
            icon: Icons.timer,
          ),
    );
  }
}
