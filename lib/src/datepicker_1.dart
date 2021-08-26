import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'btn_icon_text_1.dart';

class DatePicker extends StatefulWidget {
  final String? text;
  final void Function(DateTime) onDateTimeChanged;
  final IconData icon;
  DatePicker(
      {this.text = 'Fecha',
      required this.onDateTimeChanged,
      this.icon = FontAwesomeIcons.calendar});
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  void _showDatePicker(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              height: 500,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 250, //400
                    child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: widget.onDateTimeChanged),
                  ),
                  // Cerrar Dialogo
                  CupertinoButton(
                    child: Text('OK'),
                    onPressed: () {
                      setState(() {});
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BtnIconText1(
        icono: widget.icon,
        text: widget.text,
        onPressed: () => _showDatePicker(context),
      ),
    );
  }
}
