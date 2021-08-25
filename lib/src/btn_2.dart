import 'package:flutter/material.dart';

// ignore: camel_case_types
class Btn_2 extends StatefulWidget {
  Function(bool?) onTap;
  final Widget child;
  bool? state;
  final double? size;
  final double border;
  final double padding;
  final Color firstbackgroundColor;
  final Color firstborderColor;
  final Color firstcolor;
  final Color secondbackgroundColor;
  final Color secondborderColor;
  final Color secondcolor;
  Btn_2(
      {this.state = true,
      required this.child,
      required this.onTap,
      this.firstbackgroundColor = Colors.transparent,
      this.size,
      this.border = 10,
      this.firstborderColor = Colors.greenAccent,
      this.padding = 5,
      this.firstcolor = Colors.greenAccent,
      this.secondbackgroundColor = Colors.transparent,
      this.secondborderColor = Colors.red,
      this.secondcolor = Colors.red});

  @override
  _Btn_2State createState() => _Btn_2State();
}

class _Btn_2State extends State<Btn_2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(widget.padding),
        height: widget.size ?? double.infinity,
        width: widget.size ?? double.infinity,
        decoration: BoxDecoration(
          color: widget.state == true
              ? widget.firstbackgroundColor
              : widget.secondbackgroundColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: widget.state == true
                ? widget.firstborderColor
                : widget.secondborderColor,
            width: widget.border,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Material(
              borderRadius: BorderRadius.circular(40),
              color: Colors.transparent,
              child: Center(child: widget.child)),
          decoration: BoxDecoration(
            color:
                widget.state == true ? widget.firstcolor : widget.secondcolor,
            shape: BoxShape.circle,
          ),
        ),
      ),
      onTap: () {
        setState(() {
          widget.state = widget.state == true ? false : true;
          widget.onTap.call(widget.state);
        });
      },
    );
  }
}
