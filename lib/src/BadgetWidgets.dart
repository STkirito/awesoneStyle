import 'package:awesonestyle/src/Badget.dart';
import 'package:flutter/material.dart';

class BadgeBox extends BadgetWidgets {
  final bool isIndicator;
  final Color color;
  final double? size;
  final bool disabled;
  final bool show;
  final Widget child;
  BadgeBox({
    this.isIndicator = false,
    this.color = Colors.black,
    this.size,
    this.disabled = false,
    this.show = true,
    required this.child,
  });
  @override
  _BadgeBoxState createState() => _BadgeBoxState();
}

class _BadgeBoxState extends State<BadgeBox> {
  late final double _size2 = widget.isIndicator == true ? 5 : 18;
  Widget _badgetBox() => widget.show == true && widget.isIndicator == true
      ? Container(
          child: widget.child,
          alignment: Alignment.center,
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.all(7),
          decoration: new BoxDecoration(
            color: widget.disabled == false
                ? widget.color
                : widget.color.withOpacity(0.6),
          ),
          constraints: BoxConstraints(
            minWidth: widget.size ?? (widget.isIndicator == true ? 5 : 18),
            minHeight: widget.size ?? (widget.isIndicator == true ? 5 : 18),
          ),
        )
      : Container();
  @override
  Widget build(BuildContext context) {
    return _badgetBox();
  }
}

class BadgeCircular extends BadgetWidgets {
  final bool isIndicator;
  final Color color;
  final double? size;
  final bool disabled;
  final bool show;
  final Widget child;
  BadgeCircular({
    this.isIndicator = false,
    this.color = Colors.black,
    this.size,
    this.disabled = false,
    this.show = true,
    required this.child,
  });
  @override
  _BadgeCircularState createState() => _BadgeCircularState();
}

class _BadgeCircularState extends State<BadgeCircular> {
  late final double _size2 = widget.isIndicator == true ? 5 : 18;
  Widget _badgetCircular() => widget.show == true && widget.isIndicator == true
      ? Container(
          child: widget.child,
          alignment: Alignment.center,
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.all(7),
          decoration: new BoxDecoration(
            color: widget.disabled == false
                ? widget.color
                : widget.color.withOpacity(0.6),
            borderRadius: BorderRadius.circular(
                widget.size ?? (widget.isIndicator == true ? 5 : 20) / 2),
          ),
          constraints: BoxConstraints(
            minWidth: widget.size ?? (widget.isIndicator == true ? 5 : 18),
            minHeight: widget.size ?? (widget.isIndicator == true ? 5 : 18),
          ),
        )
      : Container();

  @override
  Widget build(BuildContext context) {
    return _badgetCircular();
  }
}
