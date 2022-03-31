import 'package:awesonestyle/function.dart';
import 'package:awesonestyle/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

loginValidation(
    {required Rx<TextEditingController> email,
    required Rx<TextEditingController> password,
    required Function(RxBool) isLoading,
    required AuthService authService,
    required Function(bool) result}) async {
  if (validationEmailAndPassword(email: email, password: password)) {
    final snack = Get.showSnackbar(GetSnackBar(
      title: 'Login',
      message: 'Espere un momento.',
      icon: Icon(
        Icons.email_outlined,
        color: Colors.white,
      ),
      showProgressIndicator: true,
      progressIndicatorBackgroundColor: Colors.transparent,
      progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      isDismissible: false,
      backgroundColor: Colors.white.withOpacity(0.1),
    ));
    isLoading.call(RxBool(true));
    final String? errorMessage =
        await authService.login(email.value.text, password.value.text);
    if (errorMessage == null) {
      isLoading.call(RxBool(false));
      snack.close();
      result.call(true);
    } else {
      result.call(false);
      isLoading.call(RxBool(false));
      snack.close();
      Get.showSnackbar(GetSnackBar(
        title: 'Login',
        message: 'El correo electrónico o la contraseña estan mal.',
        icon: Icon(
          Icons.email_outlined,
          color: Colors.white,
        ),
        backgroundColor: Colors.white.withOpacity(0.1),
        duration: Duration(milliseconds: 4500),
      ));
    }
  }
}
