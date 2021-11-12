import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future floatDialog(BuildContext context,
    {var valueInitial,
    var value,
    Function()? onCancel,
    Function()? onChanged,
    required Function() onOk,
    Widget? content,
    Widget? title,
    Widget? notify,
    Widget? message,
    ButtonDialog buttonType = ButtonDialog.NULL}) {
  if (value.toString().length != 0 && value != null) {
    buttonType = ButtonDialog.CHANGEANDCANCEL;
  }
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: title != null ? title : const Text('Editar...'),
        content: content != null
            ? content
            : value.toString().length == 0
                ? notify ??
                    Text('Si no ingresa un nuevo valor, se cancela el cambio.')
                : message ??
                    Text(
                        'Esta seguro de cambiar "${valueInitial.toString()}" por "${value.toString()}".'),
        actions: buttonType == ButtonDialog.NULL
            ? []
            : <Widget>[
                if (buttonType == ButtonDialog.OK)
                  Center(
                      child:
                          TextButton(onPressed: onOk, child: const Text('OK'))),
                if (buttonType == ButtonDialog.CHANGE)
                  Center(
                    child: TextButton(
                        onPressed: onChanged, child: const Text('CAMBIAR')),
                  ),
                if (buttonType == ButtonDialog.CANCEL)
                  Center(
                    child: TextButton(
                        onPressed: onCancel, child: const Text('CANCELAR')),
                  ),
                //
                if (buttonType == ButtonDialog.CHANGEANDCANCEL)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: onCancel, child: const Text('CANCELAR')),
                      SizedBox(width: Medidas.width(2)),
                      TextButton(
                          onPressed: onChanged, child: const Text('CAMBIAR')),
                    ],
                  ),
              ],
      );
    },
  );
}
