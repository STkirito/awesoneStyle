import 'package:awesonestyle/abstract.dart';

abstract class LoginRegister {
  login(
      {required String email,
      required String password,
      required Function(bool) isLoading,
      required Auth authService,
      required Function(bool) result});
  register(
      {required bool form,
      required Function(bool) isLoading,
      required Auth authService,
      required String email,
      required String password,
      required Function(bool) result});
}
