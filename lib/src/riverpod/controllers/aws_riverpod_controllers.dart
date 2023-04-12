import 'package:awesonestyle/src/riverpod/controller/aws_riverpod_controller.dart';

/// [AwsRiverpodMultiController] es una clase que reuni todos los providers de riverpod en un mapa.
class AwsRiverpodMultiController {
  final Map<String, AwsRiverpodController> _internalControllers;

  AwsRiverpodMultiController(Map<String, AwsRiverpodController> controllers)
      : _internalControllers = controllers;

  Map<String, AwsRiverpodController> controllers() {
    return _internalControllers;
  }
}
