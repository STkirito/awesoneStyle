import 'package:flutter/material.dart';

// ignore: camel_case_types
class Btn_3 extends StatefulWidget {
  Function(bool?) onTap;
  final Widget child;
  bool? state;
  final double? height;
  final double? width;
  final double border;
  final double padding;
  final Color firstbackgroundColor;
  final Color firstborderColor;
  final Color firstcolor;
  final Color secondbackgroundColor;
  final Color secondborderColor;
  final Color secondcolor;
  Btn_3(
      {required this.state,
      required this.child,
      required this.onTap,
      this.firstbackgroundColor = Colors.black12,
      this.border = 2,
      this.firstborderColor = Colors.greenAccent,
      this.padding = 5,
      this.firstcolor = Colors.greenAccent,
      this.secondbackgroundColor = Colors.black12,
      this.secondborderColor = Colors.red,
      this.secondcolor = Colors.red,
      this.height = 50,
      this.width = 100});

  @override
  _Btn_3State createState() => _Btn_3State();
}

class _Btn_3State extends State<Btn_3> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(widget.padding),
        height: widget.height,
        width: widget.width ?? double.infinity,
        decoration: BoxDecoration(
          color: widget.state == true
              ? widget.firstbackgroundColor
              : widget.secondbackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: widget.state == true
                ? widget.firstborderColor
                : widget.secondborderColor,
            width: widget.border,
          ),
        ),
        child: Material(
            borderRadius: BorderRadius.circular(40),
            color: Colors.transparent,
            child: Center(child: widget.child)),
      ),
      onTap: () {
        setState(() {
          widget.onTap.call(widget.state);
        });
      },
    );
  }
}
