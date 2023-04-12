import 'package:flutter/widgets.dart';

class AwsAnimationController extends InheritedNotifier<AnimationController> {
  const AwsAnimationController({
    Key? key,
    AnimationController? controller,
    required Widget child,
  }) : super(key: key, notifier: controller, child: child);

  static AnimationController? of(BuildContext context) {
    return (context
        .dependOnInheritedWidgetOfExactType<AwsAnimationController>()!
        .notifier!);
  }
}
