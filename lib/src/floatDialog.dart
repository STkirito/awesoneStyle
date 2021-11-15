import 'package:awesonestyle/services/Constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future floatDialog(BuildContext context,
    {var valueInitial,
    var value,
    Function()? onCancel,
    Function()? onChanged,
    Function()? onOk,
    Widget? content,
    Widget? title,
    Widget? notify,
    Widget? message,
    ButtonStyle? okStyle,
    ButtonStyle? changedStyle,
    ButtonStyle? cancelStyle,
    Icon okIcon = const Icon(Icons.check_circle),
    Icon changedIcon = const Icon(Icons.change_circle),
    Icon cancelIcon = const Icon(Icons.cancel),
    TextStyle? okTextStyle,
    TextStyle? changedTextStyle,
    TextStyle? cancelTextStyle,
    List<Widget> actions = const <Widget>[],
    ButtonType buttonType = ButtonType.Text,
    ButtonDialog buttonDialog = ButtonDialog.NULL}) {
  if (value.toString().length != 0 && value != null) {
    buttonDialog = ButtonDialog.CHANGEANDCANCEL;
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
        actions: buttonDialog == ButtonDialog.NULL
            ? []
            : buttonDialog == ButtonDialog.ACTIONS
                ? actions
                : buttonDialog == ButtonDialog.CHANGEANDCANCEL
                    ? [
                        if (buttonType == ButtonType.Text)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: onCancel,
                                  child: Text(
                                    'CANCELAR',
                                    style: cancelTextStyle,
                                  )),
                              SizedBox(width: Medidas.width(2)),
                              TextButton(
                                  style: cancelStyle,
                                  onPressed: onChanged,
                                  child: Text(
                                    'CAMBIAR',
                                    style: changedTextStyle,
                                  )),
                            ],
                          ),
                        if (buttonType == ButtonType.IconText)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton.icon(
                                style: cancelStyle,
                                onPressed: onCancel,
                                icon: cancelIcon,
                                label: Text(
                                  'CANCELAR',
                                  style: cancelTextStyle,
                                ),
                              ),
                              TextButton.icon(
                                style: changedStyle,
                                onPressed: onChanged,
                                icon: changedIcon,
                                label: Text(
                                  'CAMBIAR',
                                  style: changedTextStyle,
                                ),
                              )
                            ],
                          ),
                      ]
                    : <Widget>[
                        if (buttonDialog == ButtonDialog.OK)
                          Center(
                              child: buttonType != ButtonType.Text
                                  ? TextButton.icon(
                                      style: okStyle,
                                      onPressed: onOk,
                                      icon: okIcon,
                                      label: Text(
                                        'OK',
                                        style: okTextStyle,
                                      ),
                                    )
                                  : TextButton(
                                      style: okStyle,
                                      onPressed: onOk,
                                      child: Text('OK', style: okTextStyle))),
                        if (buttonDialog == ButtonDialog.CHANGE)
                          Center(
                            child: buttonType != ButtonType.Text
                                ? TextButton.icon(
                                    style: changedStyle,
                                    onPressed: onChanged,
                                    icon: changedIcon,
                                    label: Text('CAMBIAR',
                                        style: changedTextStyle),
                                  )
                                : TextButton(
                                    style: changedStyle,
                                    onPressed: onChanged,
                                    child: Text(
                                      'CAMBIAR',
                                      style: changedTextStyle,
                                    )),
                          ),
                        if (buttonDialog == ButtonDialog.CANCEL)
                          Center(
                            child: buttonType != ButtonType.Text
                                ? TextButton.icon(
                                    style: cancelStyle,
                                    onPressed: onCancel,
                                    icon: cancelIcon,
                                    label: Text(
                                      'CANCELAR',
                                      style: cancelTextStyle,
                                    ),
                                  )
                                : TextButton(
                                    style: cancelStyle,
                                    onPressed: onCancel,
                                    child: Text(
                                      'CANCELAR',
                                      style: cancelTextStyle,
                                    )),
                          ),
                      ],
      );
    },
  );
}
