import 'package:flutter/widgets.dart';

class AwsAnimation extends InheritedNotifier<AnimationController> {
  const AwsAnimation({
    Key? key,
    AnimationController? controller,
    required Widget child,
  }) : super(key: key, notifier: controller, child: child);

  static AnimationController? of(BuildContext context) {
    return (context
        .dependOnInheritedWidgetOfExactType<AwsAnimation>()!
        .notifier!);
  }
}
