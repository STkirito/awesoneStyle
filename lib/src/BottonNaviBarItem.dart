import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

class BottonNaviBarItem extends StatefulWidget {
  final double? height;
  final double? weight;
  final IconData icon;
  final String text;
  final Color? textcolor;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? fontSize;

  BottonNaviBarItem(
      {this.height,
      this.weight,
      required this.icon,
      required this.text,
      this.fontSize,
      this.textcolor,
      this.backgroundColor,
      this.iconColor});
  /* */
  get gettext => text;
  get geticon => icon;
  @override
  _BottonNaviBarItemState createState() => _BottonNaviBarItemState();
}

class _BottonNaviBarItemState extends State<BottonNaviBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Medidas.heigth(widget.height ?? 40),
      width: Medidas.width(widget.weight ?? 100),
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
                  widget.text,
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
