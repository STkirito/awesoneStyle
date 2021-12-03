import 'package:awesonestyle/awesonestyle.dart';
import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notify extends StatelessWidget {
  final double? height;
  final double? width;
  final Text text;
  final Icon icon;
  final Gradient? gradient;
  final BlendMode? backgroundBlendMode;
  Notify(
      {this.height,
      this.width,
      required this.text,
      required this.icon,
      this.gradient,
      this.backgroundBlendMode});

  Widget _child() {
    return Container(
      height: height ?? Medidas.heigth(8),
      width: width ?? Medidas.width(80),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: gradient ??
            LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffff3d2f),
                Color(0xff2196f3),
              ],
              stops: [
                0,
                1,
              ],
            ),
        backgroundBlendMode: backgroundBlendMode ?? BlendMode.srcOver,
      ),
      child: Center(
        child: IconText1(
          padding: EdgeInsets.only(left: 20),
          text: text,
          preffixIcon: icon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _child();
  }
}

SnackbarController getSnackbar(
  String title, {
  String? message,
  Gradient? backgroundGradient,
  List<BoxShadow>? boxShadows,
  Color? backgroundColor,
  Color? colorText,
  bool? isDismissible,
  Duration? duration,
  bool instantInit = true,
  SnackPosition? snackPosition,
  Widget? titleText,
  Widget? child,
  Widget? icon,
  bool? shouldIconPulse,
  double? maxWidth,
  EdgeInsets? margin,
  EdgeInsets? padding,
  double? borderRadius,
  Color? borderColor,
  double? borderWidth,
  Color? leftBarIndicatorColor,
  TextButton? mainButton,
  /* void Function(GetBar<Object>)? onTap, */
  void Function(GetSnackBar)? onTap,
  bool? showProgressIndicator,
  DismissDirection? dismissDirection,
  /* SnackDismissDirection? dismissDirection, */
  AnimationController? progressIndicatorController,
  Color? progressIndicatorBackgroundColor,
  Animation<Color>? progressIndicatorValueColor,
  SnackStyle? snackStyle,
  Curve? forwardAnimationCurve,
  Curve? reverseAnimationCurve,
  Duration? animationDuration,
  double? barBlur,
  double? overlayBlur,
  void Function(SnackbarStatus?)? snackbarStatus,
  Color? overlayColor,
  Form? userInputForm,
}) {
  return Get.snackbar(
    title,
    message ?? '',
    colorText: colorText ?? Colors.white,
    backgroundColor: backgroundColor ?? Colors.white,
    margin: margin ?? EdgeInsets.only(top: 10, left: 10, right: 10),
    backgroundGradient: backgroundGradient ??
        LinearGradient(
          tileMode: TileMode.mirror,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffff3d2f),
            Color(0xff2196f3),
          ],
          stops: [
            0,
            1,
          ],
        ),
    boxShadows: boxShadows ??
        [
          BoxShadow(color: Colors.lightBlueAccent, blurRadius: 10),
        ],
    isDismissible: isDismissible,
    duration: duration,
    instantInit: instantInit,
    snackPosition: snackPosition,
    titleText: titleText,
    messageText: child,
    icon: icon,
    shouldIconPulse: shouldIconPulse,
    maxWidth: maxWidth,
    padding: padding,
    borderRadius: borderRadius,
    borderColor: borderColor,
    borderWidth: borderWidth,
    leftBarIndicatorColor: leftBarIndicatorColor,
    mainButton: mainButton,
    onTap: onTap,
    showProgressIndicator: showProgressIndicator,
    dismissDirection: dismissDirection,
    progressIndicatorController: progressIndicatorController,
    progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
    progressIndicatorValueColor: progressIndicatorValueColor,
    snackStyle: snackStyle,
    forwardAnimationCurve: forwardAnimationCurve,
    reverseAnimationCurve: reverseAnimationCurve,
    animationDuration: animationDuration,
    barBlur: barBlur,
    overlayBlur: overlayBlur,
    snackbarStatus: snackbarStatus,
    overlayColor: overlayColor,
    userInputForm: userInputForm,
  );
}
