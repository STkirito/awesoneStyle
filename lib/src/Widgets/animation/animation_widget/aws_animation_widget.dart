import 'package:awesonestyle/awesonestyle.dart';
import 'package:awesonestyle/src/Widgets/animation/animation_widget/model/aws_animation_property.dart';
import 'package:flutter/material.dart';

class AwsAnimationWidget extends StatefulWidget {
  final Widget Function(AnimationController? controller) builder;
  final AwsAnimationProperty? _controller;
  const AwsAnimationWidget({
    Key? key,
    AwsAnimationProperty? property,
    required this.builder,
  })  : _controller = property,
        super(key: key);

  @override
  State<AwsAnimationWidget> createState() => _AwsAnimationWidgetState();
}

class _AwsAnimationWidgetState extends State<AwsAnimationWidget>
    with TickerProviderStateMixin {
  AnimationController? controller;
  @override
  void initState() {
    controller = AnimationController(
        value: widget._controller?.value,
        duration: widget._controller?.duration,
        vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AwsAnimationController(
      child: widget.builder.call(controller),
      controller: controller,
    );
  }
}
