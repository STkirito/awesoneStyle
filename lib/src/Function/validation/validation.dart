import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AwsValidation {
  static validationEmailAndPassword(
      {required String email, required String password}) {
    RxBool _emailOk = false.obs;
    RxBool _passwordOk = false.obs;
    if (email == '' && password == '') {
      Get.showSnackbar(GetSnackBar(
        title: 'Login',
        message: 'Complete la información.',
        icon: Icon(
          FontAwesomeIcons.user,
          color: Colors.white,
        ),
        backgroundColor: Colors.white.withOpacity(0.1),
        duration: Duration(milliseconds: 3500),
      ));
    } else {
      if (!GetUtils.isEmail(email)) {
        Get.showSnackbar(GetSnackBar(
          title: 'Login',
          message: 'Ingrese un Correo electrónico Valido.',
          icon: Icon(
            Icons.email_outlined,
            color: Colors.white,
          ),
          backgroundColor: Colors.white.withOpacity(0.1),
          duration: Duration(milliseconds: 3500),
        ));
      } else {
        print('email ok');
        _emailOk.value = true;
      }
      if (!validationPassword(password)) {
        Get.showSnackbar(GetSnackBar(
          title: 'Login',
          message: 'Ingrese un Password Valido.',
          icon: Icon(
            Icons.email_outlined,
            color: Colors.white,
          ),
          backgroundColor: Colors.white.withOpacity(0.1),
          duration: Duration(milliseconds: 3500),
        ));
      } else {
        print('password ok');
        _passwordOk.value = true;
      }
    }
    return _emailOk.value != false && _passwordOk.value != false ? true : false;
  }

  static login(
      {required String email,
      required String password,
      required Function(bool) isLoading,
      required AwsAuth authService,
      required Function(bool) result}) async {
    if (AwsValidation.validationEmailAndPassword(
        email: email, password: password)) {
      SnackbarController? snack;
      snack = Get.showSnackbar(GetSnackBar(
        title: 'Login',
        message: 'Espere un momento.',
        icon: Icon(
          Icons.email_outlined,
          color: Colors.white,
        ),
        showProgressIndicator: true,
        progressIndicatorBackgroundColor: Colors.transparent,
        progressIndicatorValueColor:
            AlwaysStoppedAnimation<Color>(Colors.white),
        isDismissible: false,
        backgroundColor: Colors.white.withOpacity(0.1),
      ));
      isLoading.call(true);
      final String? errorMessage = await authService.login(email, password);
      if (errorMessage == null) {
        isLoading.call(true);
        snack.close();
        result.call(true);
      } else {
        result.call(false);
        isLoading.call(false);
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

  static validationPassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.length >= 8) {
      if (!regex.hasMatch(value)) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  static register(
      {required bool form,
      required Function(bool) isLoading,
      required AwsAuth authService,
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
        progressIndicatorValueColor:
            AlwaysStoppedAnimation<Color>(Colors.white),
        isDismissible: false,
        backgroundColor: Colors.white.withOpacity(0.1),
      ));
      isLoading.call(true);
      final String? errorMessage =
          await authService.createUser(email, password);
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
}
