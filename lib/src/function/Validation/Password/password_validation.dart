validationPassword(String value) {
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
