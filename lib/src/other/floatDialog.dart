import 'package:awesonestyle/constant.dart';
import 'package:awesonestyle/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    ButtonType buttonType = ButtonType.text,
    ButtonDialog buttonDialog = ButtonDialog.nulls}) {
  if (value.toString().length != 0 && value != null) {
    buttonDialog = ButtonDialog.changeAndCancel;
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
        actions: buttonDialog == ButtonDialog.nulls
            ? []
            : buttonDialog == ButtonDialog.actions
                ? actions
                : buttonDialog == ButtonDialog.changeAndCancel
                    ? [
                        if (buttonType == ButtonType.text)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: onCancel,
                                  child: Text(
                                    'CANCELAR',
                                    style: cancelTextStyle,
                                  )),
                              SizedBox(width: ScreenSize.width(2)),
                              TextButton(
                                  style: cancelStyle,
                                  onPressed: onChanged,
                                  child: Text(
                                    'CAMBIAR',
                                    style: changedTextStyle,
                                  )),
                            ],
                          ),
                        if (buttonType == ButtonType.iconText)
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
                        if (buttonDialog == ButtonDialog.ok)
                          Center(
                              child: buttonType != ButtonType.text
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
                        if (buttonDialog == ButtonDialog.change)
                          Center(
                            child: buttonType != ButtonType.text
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
                        if (buttonDialog == ButtonDialog.cancel)
                          Center(
                            child: buttonType != ButtonType.text
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
