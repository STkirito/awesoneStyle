import 'package:awesonestyle/abstract.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

register(
    {required bool form,
    required Function(bool) isLoading,
    required Auth authService,
    required String email,
    required String password,
    required Function(bool) result}) async {
  if (!form) {
    Get.showSnackbar(GetSnackBar(
      title: 'Crear una cuenta',
      message: 'Ingrese datos Validos.',
      icon: Icon(
        Icons.email_outlined,
        color: Colors.white,
      ),
      backgroundColor: Colors.white.withOpacity(0.1),
      duration: Duration(milliseconds: 3500),
    ));
  } else {
    final snack = Get.showSnackbar(GetSnackBar(
      title: 'Creando su cuenta',
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
    isLoading.call(true);
    final String? errorMessage = await authService.createUser(email, password);
    if (errorMessage == null) {
      isLoading.call(false);
      snack.close();
      result.call(true);
    } else {
      result.call(false);
      isLoading.call(false);
      snack.close();
      Get.showSnackbar(GetSnackBar(
        title: 'Crear una cuenta',
        message: 'Esta cuenta ya existe.',
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
