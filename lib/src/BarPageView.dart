import 'package:flutter/material.dart';

class BarPageView extends StatefulWidget {
  final TabController controller;
  final List<Widget> pages;

  const BarPageView({required this.controller, required this.pages});
  @override
  _BarPageViewState createState() => _BarPageViewState();
}

class _BarPageViewState extends State<BarPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.pages[widget.controller.index],
    );
  }
}
