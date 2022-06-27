import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/material.dart';

class AwsDatePicker extends StatefulWidget {
  final DateSettings _day;
  final DateSettings _month;
  final DateSettings _year;
  final void Function(String day, String month, String year)?
      _onSelectedDateChanged;
  AwsDatePicker({
    Key? key,
    required DateSettings day,
    required DateSettings month,
    required DateSettings year,
    void Function(String day, String month, String year)? onSelectedDateChanged,
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
          context,
          length: widget._day.length,
          initialLabel: _dayL.isEmpty ? null : widget._day.initialLabel,
          initialStyle: widget._day.styleInitial,
          label: _dayL.isEmpty ? widget._day.label : _dayL,
          onSelectedItemChanged: (index) {
            setState(() {
              _dayL = (index + 1).toString();
              widget._onSelectedDateChanged?.call(_dayL, _monthL, _yearL);
            });
          },
        ),
        AwsItemPicker(
          context,
          length: widget._month.length,
          initialLabel: _monthL.isEmpty ? null : widget._month.initialLabel,
          initialStyle: widget._month.styleInitial,
          label: _monthL.isEmpty ? widget._month.label : _monthL,
          onSelectedItemChanged: (index) {
            setState(() {
              _monthL = (index + 1).toString();
              widget._onSelectedDateChanged?.call(_dayL, _monthL, _yearL);
            });
          },
        ),
        AwsItemPicker(
          context,
          year: widget._year.year,
          initialLabel: _yearL.isEmpty ? null : widget._year.initialLabel,
          initialStyle: widget._year.styleInitial,
          label: _yearL.isEmpty ? widget._year.label : _yearL,
          onSelectedItemChanged: (index) {
            setState(() {
              _yearL = (AwsGenerator.year()[index]).toString();
              widget._onSelectedDateChanged?.call(_dayL, _monthL, _yearL);
            });
          },
        ),
      ],
    );
  }
}
