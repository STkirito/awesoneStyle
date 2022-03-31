import 'package:awesonestyle/function.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

validationEmailAndPassword(
    {required TextEditingController email,
    required TextEditingController password}) {
  RxBool _emailOk = false.obs;
  RxBool _passwordOk = false.obs;
  if (email.text == '' && password.value.text == '') {
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
    if (!GetUtils.isEmail(email.text)) {
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
    if (!validationPassword(password.text)) {
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
