import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/material.dart';

class AwsTimeFormField extends StatelessWidget {
  const AwsTimeFormField({
    Key? key,
    TextEditingController? controller,
    required Future Function<ExtensionDialog>() dialogAwsTimePicker,
    String? Function(String?)? validator,
    InputDecoration? decoration,
  })  : _controller = controller,
        _dialogAwsTimePicker = dialogAwsTimePicker,
        _decoration = decoration,
        _validator = validator,
        super(key: key);
  final String? Function(String?)? _validator;
  final TextEditingController? _controller;
  final Future Function<ExtensionDialog>() _dialogAwsTimePicker;
  final InputDecoration? _decoration;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: _controller,
      onTap: () => _dialogAwsTimePicker(),
      validator: _validator,
      decoration: _decoration ??
          AwsStyle.timeInputDecoration(
            hint: 'Hora de inicio'.tr,
            label: 'Hora de inicio'.tr,
            icon: Icons.timer,
          ),
    );
  }
}
