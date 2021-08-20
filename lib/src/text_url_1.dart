import 'package:flutter/material.dart';

class Text_url_1 extends StatefulWidget {
  final String? text;
  final String? textUrl;
  final String? url;
  final Color? textColor;
  final Color? textUrlColor;
  final double? fontSize;
  bool? row;
  bool? value;
  Function(bool?)? onChanged;
  Function()? onTap;
  Text_url_1({
    this.value,
    this.row,
    this.text,
    this.textUrl,
    this.url,
    this.textColor,
    this.textUrlColor,
    this.fontSize,
    this.onChanged,
    this.onTap,
  });

  @override
  _Text_url_1State createState() => _Text_url_1State();
}

class _Text_url_1State extends State<Text_url_1> {
  Widget checktext() {
    return Container(
      child: Row(
        children: [
          Checkbox(
            //desactive
            shape: CircleBorder(),
            side: BorderSide(color: Colors.white),
            //active
            activeColor: Colors.amber[900],
            checkColor: Colors.white,
            value: widget.value,
            onChanged: widget.onChanged,
          ),
          Container(
            child: widget.row == true ? row() : column(),
          ),
        ],
      ),
    );
  }

  Widget column() => Column(
        children: [
          text(),
          textbuttom(),
        ],
      );
  Widget row() => Row(
        children: [
          text(),
          Text(' ', style: TextStyle(fontSize: widget.fontSize ?? 11)),
          textbuttom(),
        ],
      );
  Widget text() => Text(widget.text ?? '',
      style: TextStyle(
          color: widget.textColor ?? Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: widget.fontSize ?? 11));
  Widget textbuttom() => GestureDetector(
        child: Text(widget.textUrl ?? '',
            style: TextStyle(
                color: widget.textColor ?? Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: widget.fontSize ?? 11)),
        onTap: widget.onTap,
      );
  @override
  Widget build(BuildContext context) {
    return checktext();
  }
}
