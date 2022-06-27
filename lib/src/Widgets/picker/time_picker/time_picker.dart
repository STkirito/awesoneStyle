import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwsTimePicker extends StatelessWidget {
  const AwsTimePicker({
    Key? key,
    double? height = 270,
    double? width = 300,
    Decoration? decoration,
    required Text? textBack,
    CupertinoTimerPickerMode mode = CupertinoTimerPickerMode.hm,
    DateTime? initialTime,
    required void Function(DateTime) onTimeChanged,
    required void Function()? onBack,
  })  : _height = height,
        _width = width,
        _decoration = decoration,
        _textBack = textBack,
        _mode = mode,
        _initialTime = initialTime,
        _onTimeChanged = onTimeChanged,
        _onBack = onBack,
        super(key: key);
  final double? _height;
  final double? _width;
  final Decoration? _decoration;
  final Text? _textBack;
  final CupertinoTimerPickerMode _mode;
  final DateTime? _initialTime;
  final void Function(DateTime) _onTimeChanged;
  final void Function()? _onBack;

  @override
  Widget build(BuildContext context) {
    final inittime = DateTime(
      0,
      0,
      0,
      DateTime.now().hour,
      DateTime.now().minute,
      0,
      0,
      0,
    );

    return Center(
      child: Container(
        height: _height,
        width: _width,
        decoration: _decoration ??
            BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
        child: Column(
          children: [
            CupertinoTimerPicker(
              mode: _mode,
              initialTimerDuration: Duration(
                  hours: _initialTime?.hour ?? inittime.hour,
                  minutes: _initialTime?.minute ?? inittime.minute),
              onTimerDurationChanged: (duration) {
                _onTimeChanged.call(DateTime(
                    DateTime.now().year,
                    DateTime.now().month,
                    DateTime.now().day,
                    duration.inHours,
                    duration.inMinutes.remainder(60),
                    DateTime.now().second,
                    DateTime.now().millisecond,
                    DateTime.now().microsecond));
              },
            ),
            if (_textBack != null) ...[
              CupertinoButton(
                onPressed: _onBack,
                child: _textBack!,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
