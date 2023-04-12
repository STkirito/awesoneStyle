import 'package:flutter/material.dart';

/// Clase [AwsFadeIn]:
/// [key]: referencia de clave de widget opcional
/// [child]: obligatorio, widget para animar
/// [duration]: cuánto tiempo debe tomar la animación
/// [delay]: retraso antes de que comience la animación
/// [controller]: opcional/obligatorio, expone el controlador de animación
/// [manualTrigger]: booleano que indica si quieres disparar la animación manualmente con el controlador
/// [animate: para una propiedad de controlador de estado, si vuelve a renderizar cambiándola de falso a verdadero, la animación se activará inmediatamente
class AwsFadeIn extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;

  AwsFadeIn(
      {key,
      required this.child,
      this.duration = const Duration(milliseconds: 500),
      this.delay = const Duration(milliseconds: 0),
      this.controller,
      this.manualTrigger = false,
      this.animate = true})
      : super(key: key) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  _AwsFadeInState createState() => _AwsFadeInState();
}

/// FadeState class
/// The animation magic happens here
class _AwsFadeInState extends State<AwsFadeIn>
    with SingleTickerProviderStateMixin {
  /// Animation controller that controls this animation
  AnimationController? controller;

  /// is the widget disposed?
  bool disposed = false;

  /// Animation movement value
  late Animation<double> animation;

  @override
  void dispose() {
    disposed = true;
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: widget.duration, vsync: this);
    animation = CurvedAnimation(curve: Curves.easeOut, parent: controller!);

    if (!widget.manualTrigger && widget.animate) {
      Future.delayed(widget.delay, () {
        if (!disposed) {
          controller?.forward();
        }
      });
    }

    if (widget.controller is Function) {
      widget.controller!(controller!);
    }
  }

  @override
  Widget build(BuildContext context) {
    /// Launch the animation ASAP or wait if is needed
    if (widget.animate && widget.delay.inMilliseconds == 0) {
      controller?.forward();
    }

    /// If the animation already happen, we can animate it back
    if (!widget.animate) {
      controller?.animateBack(0);
    }

    /// Builds the animation with the corresponding
    return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return Opacity(
            opacity: animation.value,
            child: widget.child,
          );
        });
  }
}

/// Clase [AwsFadeInDown]:
/// [key]: referencia de clave de widget opcional
/// [child]: obligatorio, widget para animar
/// [duration]: cuánto tiempo debe tomar la animación
/// [delay]: retraso antes de que comience la animación
/// [controller]: opcional/obligatorio, expone el controlador de animación
/// el controlador se puede usar para repetir, invertir y lo que quieras, es solo un controlador de animación
class AwsFadeInDown extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;

  AwsFadeInDown(
      {key,
      required this.child,
      this.duration = const Duration(milliseconds: 800),
      this.delay = const Duration(milliseconds: 0),
      this.controller,
      this.manualTrigger = false,
      this.animate = true,
      this.from = 100})
      : super(key: key) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  _AwsFadeInDownState createState() => _AwsFadeInDownState();
}

/// FadeState class
/// The animation magic happens here
class _AwsFadeInDownState extends State<AwsFadeInDown>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  /// is the widget disposed?
  bool disposed = false;

  /// animation movement
  late Animation<double> animation;

  /// animation opacity
  late Animation<double> opacity;

  @override
  void dispose() {
    disposed = true;
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: widget.duration, vsync: this);

    animation = Tween<double>(begin: widget.from * -1, end: 0)
        .animate(CurvedAnimation(parent: controller!, curve: Curves.easeOut));

    opacity = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: controller!, curve: const Interval(0, 0.65)));

    if (!widget.manualTrigger && widget.animate) {
      Future.delayed(widget.delay, () {
        if (!disposed) {
          controller?.forward();
        }
      });
    }

    /// Returns the controller if the user requires it
    if (widget.controller is Function) {
      widget.controller!(controller!);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.animate && widget.delay.inMilliseconds == 0) {
      controller?.forward();
    }

    /// If FALSE, animate everything back to the original state
    if (!widget.animate) {
      controller?.animateBack(0);
    }

    return AnimatedBuilder(
        animation: controller!,
        builder: (BuildContext context, Widget? child) {
          return Transform.translate(
              offset: Offset(0, animation.value),
              child: Opacity(
                opacity: opacity.value,
                child: widget.child,
              ));
        });
  }
}

/// Clase [AwsFadeInDownBig]:
/// [key]: referencia de clave de widget opcional
/// [child]: obligatorio, widget para animar
/// [duration]: cuánto tiempo debe tomar la animación
/// [delay]: retraso antes de que comience la animación
/// [controller]: opcional/obligatorio, expone el controlador de animación
/// el controlador se puede usar para repetir, invertir y lo que quieras, es solo un controlador de animación
class AwsFadeInDownBig extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;

  AwsFadeInDownBig(
      {key,
      required this.child,
      this.duration = const Duration(milliseconds: 1300),
      this.delay = const Duration(milliseconds: 0),
      this.controller,
      this.manualTrigger = false,
      this.animate = true,
      this.from = 600})
      : super(key: key) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  Widget build(BuildContext context) => AwsFadeInDown(
      child: child,
      duration: duration,
      delay: delay,
      controller: controller,
      manualTrigger: manualTrigger,
      animate: animate,
      from: from);
}

/// Clase [AwsFadeInUp]:
/// [key]: referencia de clave de widget opcional
/// [child]: obligatorio, widget para animar
/// [duration]: cuánto tiempo debe tomar la animación
/// [delay]: retraso antes de que comience la animación
/// [controller]: opcional/obligatorio, expone el controlador de animación
/// el controlador se puede usar para repetir, invertir y lo que quieras, es solo un controlador de animación
class AwsFadeInUp extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;

  AwsFadeInUp(
      {key,
      required this.child,
      this.duration = const Duration(milliseconds: 800),
      this.delay = const Duration(milliseconds: 0),
      this.controller,
      this.manualTrigger = false,
      this.animate = true,
      this.from = 100})
      : super(key: key) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  _AwsFadeInUpState createState() => _AwsFadeInUpState();
}

/// FadeState class
/// The animation magic happens here
class _AwsFadeInUpState extends State<AwsFadeInUp>
    with SingleTickerProviderStateMixin {
  /// Animation controller if requested
  AnimationController? controller;

  /// widget is disposed?
  bool disposed = false;

  /// Animation movement
  late Animation<double> animation;

  /// Animation opacity
  late Animation<double> opacity;

  @override
  void dispose() {
    disposed = true;
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: widget.duration, vsync: this);

    animation = Tween<double>(begin: widget.from, end: 0)
        .animate(CurvedAnimation(parent: controller!, curve: Curves.easeOut));
    opacity = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: controller!, curve: const Interval(0, 0.65)));

    if (!widget.manualTrigger && widget.animate) {
      Future.delayed(widget.delay, () {
        if (!disposed) {
          controller?.forward();
        }
      });
    }

    if (widget.controller is Function) {
      widget.controller!(controller!);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.animate && widget.delay.inMilliseconds == 0) {
      controller?.forward();
    }

    /// If FALSE, animate everything back to the original state
    if (!widget.animate) {
      controller?.animateBack(0);
    }

    return AnimatedBuilder(
        animation: controller!,
        builder: (BuildContext context, Widget? child) {
          return Transform.translate(
              offset: Offset(0, animation.value),
              child: Opacity(
                opacity: opacity.value,
                child: widget.child,
              ));
        });
  }
}

/// Clase [AwsFadeInUpBig]:
/// [key]: referencia de clave de widget opcional
/// [child]: obligatorio, widget para animar
/// [duration]: cuánto tiempo debe tomar la animación
/// [delay]: retraso antes de que comience la animación
/// [controller]: opcional/obligatorio, expone el controlador de animación
/// el controlador se puede usar para repetir, invertir y lo que quieras, es solo un controlador de animación
class AwsFadeInUpBig extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;

  AwsFadeInUpBig(
      {key,
      required this.child,
      this.duration = const Duration(milliseconds: 1300),
      this.delay = const Duration(milliseconds: 0),
      this.controller,
      this.manualTrigger = false,
      this.animate = true,
      this.from = 600})
      : super(key: key) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  Widget build(BuildContext context) => AwsFadeInUp(
        child: child,
        duration: duration,
        delay: delay,
        controller: controller,
        manualTrigger: manualTrigger,
        animate: animate,
        from: from,
      );
}

/// Clase [AwsFadeInLeft]:
/// [key]: referencia de clave de widget opcional
/// [child]: obligatorio, widget para animar
/// [duration]: cuánto tiempo debe tomar la animación
/// [delay]: retraso antes de que comience la animación
/// [controller]: opcional/obligatorio, expone el controlador de animación
/// el controlador se puede usar para repetir, invertir y lo que quieras, es solo un controlador de animación
class AwsFadeInLeft extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;

  AwsFadeInLeft(
      {key,
      required this.child,
      this.duration = const Duration(milliseconds: 800),
      this.delay = const Duration(milliseconds: 0),
      this.controller,
      this.manualTrigger = false,
      this.animate = true,
      this.from = 100})
      : super(key: key) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  _AwsFadeInLeftState createState() => _AwsFadeInLeftState();
}

/// FadeState class
/// The animation magic happens here
class _AwsFadeInLeftState extends State<AwsFadeInLeft>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  bool disposed = false;
  late Animation<double> animation;
  late Animation<double> opacity;
  @override
  void dispose() {
    disposed = true;
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: widget.duration, vsync: this);

    animation = Tween<double>(begin: widget.from * -1, end: 0)
        .animate(CurvedAnimation(parent: controller!, curve: Curves.easeOut));
    opacity = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: controller!, curve: const Interval(0, 0.65)));

    if (!widget.manualTrigger && widget.animate) {
      Future.delayed(widget.delay, () {
        if (!disposed) {
          controller?.forward();
        }
      });
    }

    if (widget.controller is Function) {
      widget.controller!(controller!);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.animate && widget.delay.inMilliseconds == 0) {
      controller?.forward();
    }

    /// If FALSE, animate everything back to the original state
    if (!widget.animate) {
      controller?.animateBack(0);
    }

    return AnimatedBuilder(
        animation: controller!,
        builder: (BuildContext context, Widget? child) {
          return Transform.translate(
              offset: Offset(animation.value, 0),
              child: Opacity(
                opacity: opacity.value,
                child: widget.child,
              ));
        });
  }
}

/// Clase [AwsFadeInLeftBig]:
/// [key]: referencia de clave de widget opcional
/// [child]: obligatorio, widget para animar
/// [duration]: cuánto tiempo debe tomar la animación
/// [delay]: retraso antes de que comience la animación
/// [controller]: opcional/obligatorio, expone el controlador de animación
/// el controlador se puede usar para repetir, invertir y lo que quieras, es solo un controlador de animación
class AwsFadeInLeftBig extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;

  AwsFadeInLeftBig(
      {key,
      required this.child,
      this.duration = const Duration(milliseconds: 1300),
      this.delay = const Duration(milliseconds: 0),
      this.controller,
      this.manualTrigger = false,
      this.animate = true,
      this.from = 600})
      : super(key: key) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  Widget build(BuildContext context) => AwsFadeInLeft(
        child: child,
        duration: duration,
        delay: delay,
        controller: controller,
        manualTrigger: manualTrigger,
        animate: animate,
        from: from,
      );
}

/// Clase [AwsFadeInRight]:
/// [key]: referencia de clave de widget opcional
/// [child]: obligatorio, widget para animar
/// [duration]: cuánto tiempo debe tomar la animación
/// [delay]: retraso antes de que comience la animación
/// [controller]: opcional/obligatorio, expone el controlador de animación
/// el controlador se puede usar para repetir, invertir y lo que quieras, es solo un controlador de animación
class AwsFadeInRight extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;

  AwsFadeInRight(
      {key,
      required this.child,
      this.duration = const Duration(milliseconds: 800),
      this.delay = const Duration(milliseconds: 0),
      this.controller,
      this.manualTrigger = false,
      this.animate = true,
      this.from = 100})
      : super(key: key) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  _AwsFadeInRightState createState() => _AwsFadeInRightState();
}

/// FadeState class
/// The animation magic happens here
class _AwsFadeInRightState extends State<AwsFadeInRight>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  bool disposed = false;
  late Animation<double> animation;
  late Animation<double> opacity;
  @override
  void dispose() {
    disposed = true;
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: widget.duration, vsync: this);

    animation = Tween<double>(begin: widget.from, end: 0)
        .animate(CurvedAnimation(parent: controller!, curve: Curves.easeOut));
    opacity = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: controller!, curve: const Interval(0, 0.65)));

    if (!widget.manualTrigger && widget.animate) {
      Future.delayed(widget.delay, () {
        if (!disposed) {
          controller?.forward();
        }
      });
    }

    if (widget.controller is Function) {
      widget.controller!(controller!);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.animate && widget.delay.inMilliseconds == 0) {
      controller?.forward();
    }

    /// If FALSE, animate everything back to the original state
    if (!widget.animate) {
      controller?.animateBack(0);
    }

    return AnimatedBuilder(
        animation: controller!,
        builder: (BuildContext context, Widget? child) {
          return Transform.translate(
              offset: Offset(animation.value, 0),
              child: Opacity(
                opacity: opacity.value,
                child: widget.child,
              ));
        });
  }
}

/// Clase [AwsFadeInRightBig]:
/// [key]: referencia de clave de widget opcional
/// [child]: obligatorio, widget para animar
/// [duration]: cuánto tiempo debe tomar la animación
/// [delay]: retraso antes de que comience la animación
/// [controller]: opcional/obligatorio, expone el controlador de animación
/// el controlador se puede usar para repetir, invertir y lo que quieras, es solo un controlador de animación
class AwsFadeInRightBig extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;

  AwsFadeInRightBig(
      {key,
      required this.child,
      this.duration = const Duration(milliseconds: 1200),
      this.delay = const Duration(milliseconds: 0),
      this.controller,
      this.manualTrigger = false,
      this.animate = true,
      this.from = 600})
      : super(key: key) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  Widget build(BuildContext context) => AwsFadeInRight(
        child: child,
        duration: duration,
        delay: delay,
        controller: controller,
        manualTrigger: manualTrigger,
        animate: animate,
        from: from,
      );
}
