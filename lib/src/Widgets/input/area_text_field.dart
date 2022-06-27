import 'dart:ui';
import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//TODO:Future Fix
class AwsAreaTextField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final bool obscureText;
  final TextInputType? textInputTipe;
  final int? maxLength;
  final bool expands;
  final int? minLines;
  final int? maxLines;
  final double? width;
  final double? iconSize;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final bool? readOnly;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Function(String)? onSubmitted;
  final Function()? onTap;
  final InputDecoration? decoration;
  final InputBorder? errorBorder;
  final String? errorText;
  final TextStyle? errorStyle;
  final String? helperText;
  final TextStyle? labelStyle;
  final String? labelText;
  final InputBorder? disabledBorder;
  final InputBorder? border;
  final TextEditingController? controller;
  //
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final StrutStyle? strutStyle;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final ToolbarOptions? toolbarOptions;
  final bool? showCursor;
  final bool autofocus;
  final String obscuringCharacter;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final BoxHeightStyle selectionHeightStyle;
  final BoxWidthStyle selectionWidthStyle;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final DragStartBehavior dragStartBehavior;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final MouseCursor? mouseCursor;
  final Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? buildCounter;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final Clip clipBehavior;
  final String? restorationId;
  final bool enableIMEPersonalizedLearning;
  AwsAreaTextField({
    this.hintText,
    this.icon,
    this.obscureText = false,
    this.textInputTipe = TextInputType.multiline,
    this.controller,
    this.maxLength,
    this.expands = true,
    this.minLines,
    this.maxLines,
    this.padding,
    this.width,
    this.hintStyle,
    this.iconSize,
    this.readOnly,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    this.decoration,
    this.style,
    this.errorBorder,
    this.errorText,
    this.helperText,
    this.errorStyle,
    this.labelStyle,
    this.labelText,
    this.disabledBorder,
    this.border,
    this.focusNode,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.strutStyle,
    this.textAlignVertical,
    this.textDirection,
    this.toolbarOptions,
    this.showCursor,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforcement,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection = true,
    this.selectionControls,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.enableIMEPersonalizedLearning = true,
  });
//TODO: agregar decoration public
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(34),
      ),
      padding: padding ?? EdgeInsets.all(10),
      width: AwsScreenSize.width(width ?? 100),
      child: TextField(
        focusNode: focusNode,
        textInputAction: textInputAction,
        textCapitalization: textCapitalization,
        strutStyle: strutStyle,
        textAlignVertical: textAlignVertical,
        textDirection: textDirection,
        toolbarOptions: toolbarOptions,
        showCursor: showCursor,
        autofocus: autofocus,
        obscuringCharacter: obscuringCharacter,
        autocorrect: autocorrect,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions,
        //maxLengthEnforced: ,
        maxLengthEnforcement: maxLengthEnforcement,
        onAppPrivateCommand: onAppPrivateCommand,
        inputFormatters: inputFormatters,
        enabled: enabled,
        cursorWidth: cursorWidth,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        selectionHeightStyle: selectionHeightStyle, //
        selectionWidthStyle: selectionWidthStyle,
        keyboardAppearance: keyboardAppearance,
        scrollPadding: scrollPadding,
        dragStartBehavior: dragStartBehavior,
        enableInteractiveSelection: enableInteractiveSelection,
        selectionControls: selectionControls,
        mouseCursor: mouseCursor,
        buildCounter: buildCounter,
        scrollController: scrollController,
        scrollPhysics: scrollPhysics,
        autofillHints: autofillHints,
        clipBehavior: clipBehavior,
        restorationId: restorationId,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
        //
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onSubmitted: onSubmitted,
        onTap: onTap,
        readOnly: readOnly ?? false,
        controller: controller,
        keyboardType: textInputTipe,
        obscureText: obscureText,
        style: style ??
            TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.justify,
        maxLength: maxLength, //500
        minLines: minLines,
        maxLines: maxLines,
        expands: expands,
        decoration: InputDecoration(
            labelStyle: labelStyle,
            labelText: labelText,
            helperText: helperText,
            helperStyle: hintStyle,
            errorStyle: errorStyle,
            errorText: errorText,
            errorBorder: errorBorder,
            disabledBorder: disabledBorder,
            hintText: hintText,
            hintStyle: hintStyle ??
                TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
            prefixIcon: icon != null
                ? Icon(
                    icon,
                    color: Colors.white,
                    size: iconSize ?? null,
                  )
                : null,
            border: border ?? InputBorder.none),
      ),
    );
  }
}
