import 'package:flutter/material.dart';

class AwsAnimationButtonStyle {
  static final ButtonStyle nulls = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
    foregroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
    overlayColor: const MaterialStatePropertyAll<Color>(Colors.white),
    padding:
        const MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(10)),
    side: const MaterialStatePropertyAll<BorderSide>(
        BorderSide(color: Colors.white)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
  static final ButtonStyle actions = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll<Color>(Colors.blue),
    foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
    overlayColor: const MaterialStatePropertyAll<Color>(Colors.blueAccent),
    padding:
        const MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(10)),
    side: const MaterialStatePropertyAll<BorderSide>(
        BorderSide(color: Colors.blue)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
  static final ButtonStyle ok = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll<Color>(Colors.green),
    foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
    overlayColor: const MaterialStatePropertyAll<Color>(Colors.greenAccent),
    padding:
        const MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(10)),
    side: const MaterialStatePropertyAll<BorderSide>(
        BorderSide(color: Colors.green)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
  static final ButtonStyle error = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll<Color>(Colors.red),
    foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
    overlayColor: const MaterialStatePropertyAll<Color>(Colors.redAccent),
    padding:
        const MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(10)),
    side: const MaterialStatePropertyAll<BorderSide>(
        BorderSide(color: Colors.red)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}
