import 'package:awesonestyle/src/Components/Picker/item_picker.dart';
import 'package:awesonestyle/generators.dart';
import 'package:awesonestyle/models.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  final DateSettings day;
  final DateSettings month;
  final DateSettings year;
  final void Function(String day, String month, String year)?
      onSelectedItemChanged;
  const DatePicker(
      {Key? key,
      required this.day,
      required this.month,
      required this.year,
      this.onSelectedItemChanged})
      : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  String _day = '';

  String _month = '';

  String _year = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ItemPicker(
          context,
          length: widget.day.length,
          initialLabel: _day.isEmpty ? null : widget.day.initialLabel,
          initialStyle: widget.day.styleInitial,
          label: _day.isEmpty ? widget.day.label : _day,
          onSelectedItemChanged: (index) {
            setState(() {
              _day = (index + 1).toString();
              widget.onSelectedItemChanged?.call(_day, _month, _year);
            });
          },
        ),
        ItemPicker(
          context,
          length: widget.month.length,
          initialLabel: _month.isEmpty ? null : widget.month.initialLabel,
          initialStyle: widget.month.styleInitial,
          label: _month.isEmpty ? widget.month.label : _month,
          onSelectedItemChanged: (index) {
            setState(() {
              _month = (index + 1).toString();
              widget.onSelectedItemChanged?.call(_day, _month, _year);
            });
          },
        ),
        ItemPicker(
          context,
          year: widget.year.year,
          initialLabel: _year.isEmpty ? null : widget.year.initialLabel,
          initialStyle: widget.year.styleInitial,
          label: _year.isEmpty ? widget.year.label : _year,
          onSelectedItemChanged: (index) {
            setState(() {
              _year = (DateGenerator().year()[index]).toString();
              widget.onSelectedItemChanged?.call(_day, _month, _year);
            });
          },
        ),
      ],
    );
  }
}

/*
ItemPicker(
          context,
          length: 12,
          initialLabel: 'M',
          initialStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          label: _month.isEmpty ? 'Mes' : _month,
          onSelectedItemChanged: (index) =>
              setState(() => _month = (index + 1).toString()),
        ),
        ItemPicker(
          context,
          year: true,
          initialLabel: 'Y',
          initialStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          label: _year.isEmpty ? 'Año' : _year,
          onSelectedItemChanged: (index) =>
              setState(() => _year = (Generators().year()[index]).toString()),
        ),
*/