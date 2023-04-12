import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/material.dart';

/// [AwsRiverpodWidget] es un widget que nos permite acceder de forma mas sencilla a un provider o varios.
/// solo trabaja para riverpod.
class AwsRiverpodWidget extends StatelessWidget {
  final AwsRiverpodController? controller;
  final AwsRiverpodMultiController? controllers;
  final Widget Function(AwsRiverpodController? controller,
      AwsRiverpodMultiController? controllers) _child;

  const AwsRiverpodWidget(
      {super.key,
      this.controller,
      this.controllers,
      required Widget Function(AwsRiverpodController? controller,
              AwsRiverpodMultiController? controllers)
          child})
      : _child = child;
  @override
  Widget build(context) {
    return _child.call(controller, controllers);
  }
}
