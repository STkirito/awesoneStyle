import 'package:flutter/material.dart';

class BottomNaviBarItem extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: weight ?? double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              SizedBox(
                height: 2,
              ),
              Material(
                child: Text(
                  text ?? ' ',
                  style: TextStyle(
                    fontSize: fontSize ?? 10,
                    color: textcolor,
                    backgroundColor: backgroundColor,
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
