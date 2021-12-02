import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void showDatePicker(
  BuildContext context, {
  Key? key,
  required void Function(DateTime) onDateTimeChanged,
  required Widget child,
  CupertinoDatePickerMode mode = CupertinoDatePickerMode.date,
  DateTime? initialDateTime,
  DateTime? minimumDate,
  DateTime? maximumDate,
  int minimumYear = 1,
  int? maximumYear,
  int minuteInterval = 1,
  bool use24hFormat = false,
  DatePickerDateOrder? dateOrder,
  Color? backgroundColor,
  double? height = 320,
  double? pickerHeight = 250,
}) {
  showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
            height: height, //500
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: pickerHeight, //400
                  child: CupertinoDatePicker(
                    mode: mode,
                    initialDateTime: initialDateTime ?? DateTime.now(),
                    onDateTimeChanged: onDateTimeChanged,
                    minimumDate: minimumDate,
                    minimumYear: minimumYear,
                    maximumYear: maximumYear,
                    maximumDate: maximumDate,
                    minuteInterval: minuteInterval,
                    use24hFormat: use24hFormat,
                    dateOrder: dateOrder,
                    backgroundColor: backgroundColor,
                  ),
                ),
                // Cerrar Dialogo
                child,
              ],
            ),
          ));
}

/* class ShowDatePicker extends StatefulWidget {
  const ShowDatePicker({Key? key}) : super(key: key);

  @override
  State<ShowDatePicker> createState() => _ShowDatePickerState();
}

class _ShowDatePickerState extends State<ShowDatePicker> {
  void showDatePicker(BuildContext context,
      {required void Function(DateTime) onDateTimeChanged}) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              height: 320, //500
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 250, //400
                    child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: onDateTimeChanged),
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
    // TODO: implement build
    throw UnimplementedError();
  }
} */
/* 
class DatePicker extends StatefulWidget {
  final String? text;
  final void Function(DateTime) onDateTimeChanged;
  final IconData icon;
  final TextStyle? textStyle;
  final double? iconSize;

  DatePicker({
    this.text = 'Fecha',
    required this.onDateTimeChanged,
    this.icon = FontAwesomeIcons.calendar,
    this.textStyle,
    this.iconSize,
  });
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final picker = ShowDatePicker(
    onDateTimeChanged: widget.onDateTimeChanged,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BtnIconText1(
        textStyle: widget.textStyle,
        icon: widget.icon,
        iconSize: widget.iconSize,
        text: widget.text,
        onPressed: () => _showDatePicker(context),
      ),
    );
  }
}
 */