import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';

class ListScrollViewBuilder extends StatefulWidget {
  final double? height;
  final int? itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  ListScrollViewBuilder(
      {this.height, this.itemCount, required this.itemBuilder});
  @override
  _ListScrollViewBuilderState createState() => _ListScrollViewBuilderState();
}

class _ListScrollViewBuilderState extends State<ListScrollViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SizedBox(
        height: Medidas.heigth(widget.height ?? 75),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: widget.itemCount,
            itemBuilder: widget.itemBuilder),
      ),
    );
  }
}
