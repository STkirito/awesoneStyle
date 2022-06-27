import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/material.dart';

class AwsDateFormField extends StatelessWidget {
  const AwsDateFormField(
      {Key? key, required DateTime dateTime, InputDecoration? decoration})
      : _dateTime = dateTime,
        _decoration = decoration,
        super(key: key);
  final DateTime _dateTime;
  final InputDecoration? _decoration;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(
      text: '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
    );
    return TextFormField(
      readOnly: true,
      controller: controller,
      decoration: _decoration ??
          AwsStyle.timeInputDecoration(
            hint: 'Fecha'.tr,
            label: 'Fecha'.tr,
            icon: Icons.timer,
          ),
    );
  }
}
