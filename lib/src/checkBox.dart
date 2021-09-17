import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CheckboxTwoRow extends StatefulWidget {
  //int? value;
  //ValueGetter<int> value=value;
  ValueSetter<int> value;
  List<String> text;

  CheckboxTwoRow({
    required this.text,
    required this.value,
  });
  @override
  _CheckboxTwoRowState createState() => _CheckboxTwoRowState();
}

class _CheckboxTwoRowState extends State<CheckboxTwoRow> {
  int value = 1;
  bool checkSex = true;
  @override
  Widget build(BuildContext context) {
    widget.value.call(value);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Checkbox(
              //desactive
              shape: CircleBorder(),
              side: BorderSide(color: Colors.white),
              //active
              activeColor: Colors.amber[900],
              checkColor: Colors.white,
              value: !checkSex,
              onChanged: (opt) {
                setState(() {
                  checkSex = !opt!;
                  value = 0;
                });
              },
            ),
            Text('Masculino'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              //desactive
              shape: CircleBorder(),
              side: BorderSide(color: Colors.white),
              //active
              activeColor: Colors.amber[900],
              checkColor: Colors.white,
              value: checkSex,
              onChanged: (opt) {
                setState(() {
                  checkSex = opt!;
                  value = 1;
                });
              },
            ),
            Text('Femenino'),
          ],
        ),
      ],
    );
  }
}
