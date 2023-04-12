import 'package:awesonestyle/awesonestyle.dart';
import 'package:awesonestyle/src/Widgets/picker/date_picker/models/aws_date.dart';
import 'package:awesonestyle/src/Widgets/picker/date_picker/models/aws_date_settings.dart';
import 'package:flutter/material.dart';

class AwsDatePicker extends StatefulWidget {
  final AwsDateSettings _day;
  final AwsDateSettings _month;
  final AwsDateSettings _year;
  final void Function(AwsDate date)? _onSelectedDateChanged;
  AwsDatePicker({
    Key? key,
    required AwsDateSettings day,
    required AwsDateSettings month,
    required AwsDateSettings year,
    void Function(AwsDate date)? onSelectedDateChanged,
  })  : _day = day,
        _month = month,
        _year = year,
        _onSelectedDateChanged = onSelectedDateChanged,
        super(key: key);

  @override
  State<AwsDatePicker> createState() => _AwsDatePickerState();
}

class _AwsDatePickerState extends State<AwsDatePicker> {
  String _dayL = '';

  String _monthL = '';

  String _yearL = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AwsItemPicker(
          length: widget._day.length,
          initialLabel: _dayL.isEmpty ? null : widget._day.initialLabel,
          initialStyle: widget._day.styleInitial,
          label: _dayL.isEmpty ? widget._day.label : _dayL,
          styleLabel: widget._day.styleLabel,
          onSelectedItemChanged: (index) {
            setState(() {
              _dayL = (index + 1).toString();
              widget._onSelectedDateChanged
                  ?.call(AwsDate(_dayL, _monthL, _yearL));
            });
          },
        ),
        AwsItemPicker(
          length: widget._month.length,
          initialLabel: _monthL.isEmpty ? null : widget._month.initialLabel,
          initialStyle: widget._month.styleInitial,
          label: _monthL.isEmpty ? widget._month.label : _monthL,
          styleLabel: widget._month.styleLabel,
          onSelectedItemChanged: (index) {
            setState(() {
              _monthL = (index + 1).toString();
              widget._onSelectedDateChanged
                  ?.call(AwsDate(_dayL, _monthL, _yearL));
            });
          },
        ),
        AwsItemPicker(
          year: widget._year.year,
          initialLabel: _yearL.isEmpty ? null : widget._year.initialLabel,
          initialStyle: widget._year.styleInitial,
          label: _yearL.isEmpty ? widget._year.label : _yearL,
          styleLabel: widget._year.styleLabel,
          onSelectedItemChanged: (index) {
            setState(() {
              _yearL = (AwsGenerators.year()[index]).toString();
              widget._onSelectedDateChanged
                  ?.call(AwsDate(_dayL, _monthL, _yearL));
            });
          },
        ),
      ],
    );
  }
}
