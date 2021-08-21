import 'package:flutter/material.dart';

class BottomNaviBarItem extends StatefulWidget {
  final double? height;
  final double? weight;
  final IconData? icon;
  final String? text;
  final Color? textcolor;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? fontSize;
  BottomNaviBarItem(
      {this.height,
      this.weight,
      required this.icon,
      required this.text,
      this.fontSize,
      this.textcolor,
      this.backgroundColor,
      this.iconColor});

  @override
  _BottomNaviBarItemState createState() => _BottomNaviBarItemState();
}

class _BottomNaviBarItemState extends State<BottomNaviBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 40,
      width: widget.weight ?? double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: widget.iconColor,
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                child: Text(
                  widget.text ?? ' ',
                  style: TextStyle(
                    fontSize: widget.fontSize ?? 10,
                    color: widget.textcolor,
                    backgroundColor: widget.backgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
