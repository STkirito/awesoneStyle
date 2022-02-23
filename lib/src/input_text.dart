import 'dart:ui';

import 'package:awesonestyle/src/Constantes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class InputText1 extends StatefulWidget {
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
  InputText1({
    this.hintText,
    this.icon,
    this.obscureText = false,
    this.textInputTipe = TextInputType.text,
    this.controller,
    this.maxLength,
    this.expands = false,
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

  @override
  _InputText1State createState() => _InputText1State();
}

class _InputText1State extends State<InputText1> {
  Widget textdat() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(34),
      ),
      padding: widget.padding ?? EdgeInsets.all(10),
      width: Medidas.width(widget.width ?? 100),
      child: TextField(
        focusNode: widget.focusNode,
        textInputAction: widget.textInputAction,
        textCapitalization: widget.textCapitalization,
        strutStyle: widget.strutStyle,
        textAlignVertical: widget.textAlignVertical,
        textDirection: widget.textDirection,
        toolbarOptions: widget.toolbarOptions,
        showCursor: widget.showCursor,
        autofocus: widget.autofocus,
        obscuringCharacter: widget.obscuringCharacter,
        autocorrect: widget.autocorrect,
        smartDashesType: widget.smartDashesType,
        smartQuotesType: widget.smartQuotesType,
        enableSuggestions: widget.enableSuggestions,
        //maxLengthEnforced: ,
        maxLengthEnforcement: widget.maxLengthEnforcement,
        onAppPrivateCommand: widget.onAppPrivateCommand,
        inputFormatters: widget.inputFormatters,
        enabled: widget.enabled,
        cursorWidth: widget.cursorWidth,
        cursorHeight: widget.cursorHeight,
        cursorRadius: widget.cursorRadius,
        cursorColor: widget.cursorColor,
        selectionHeightStyle: widget.selectionHeightStyle, //
        selectionWidthStyle: widget.selectionWidthStyle,
        keyboardAppearance: widget.keyboardAppearance,
        scrollPadding: widget.scrollPadding,
        dragStartBehavior: widget.dragStartBehavior,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        selectionControls: widget.selectionControls,
        mouseCursor: widget.mouseCursor,
        buildCounter: widget.buildCounter,
        scrollController: widget.scrollController,
        scrollPhysics: widget.scrollPhysics,
        autofillHints: widget.autofillHints,
        clipBehavior: widget.clipBehavior,
        restorationId: widget.restorationId,
        enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
        //
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        onSubmitted: widget.onSubmitted,
        onTap: widget.onTap,
        readOnly: widget.readOnly ?? false,
        controller: widget.controller,
        keyboardType: widget.textInputTipe,
        obscureText: widget.obscureText,
        style: widget.style ??
            TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.justify,
        maxLength: widget.maxLength, //500
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        expands: widget.expands,
        decoration: InputDecoration(
            labelStyle: widget.labelStyle,
            labelText: widget.labelText,
            helperText: widget.helperText,
            helperStyle: widget.hintStyle,
            errorStyle: widget.errorStyle,
            errorText: widget.errorText,
            errorBorder: widget.errorBorder,
            disabledBorder: widget.disabledBorder,
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ??
                TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
            prefixIcon: widget.icon != null
                ? Icon(
                    widget.icon,
                    color: Colors.white,
                    size: widget.iconSize ?? null,
                  )
                : null,
            border: widget.border ?? InputBorder.none),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textdat();
  }
}

// ignore: must_be_immutable
class InputText2 extends StatefulWidget {
  final String? hintText;
  final Widget? prefix;
  final Widget? suffix;
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
  TextEditingController? controller;
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
  InputText2({
    this.hintText,
    this.prefix,
    this.obscureText = false,
    this.textInputTipe = TextInputType.text,
    this.controller,
    this.maxLength,
    this.expands = false,
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
    this.suffix,
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

  @override
  _InputText2State createState() => _InputText2State();
}

class _InputText2State extends State<InputText2> {
  Widget textdat() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(34),
      ),
      padding: widget.padding ?? EdgeInsets.all(10),
      width: Medidas.width(widget.width ?? 100),
      child: TextField(
        focusNode: widget.focusNode,
        textInputAction: widget.textInputAction,
        textCapitalization: widget.textCapitalization,
        strutStyle: widget.strutStyle,
        textAlignVertical: widget.textAlignVertical,
        textDirection: widget.textDirection,
        toolbarOptions: widget.toolbarOptions,
        showCursor: widget.showCursor,
        autofocus: widget.autofocus,
        obscuringCharacter: widget.obscuringCharacter,
        autocorrect: widget.autocorrect,
        smartDashesType: widget.smartDashesType,
        smartQuotesType: widget.smartQuotesType,
        enableSuggestions: widget.enableSuggestions,
        //maxLengthEnforced: ,
        maxLengthEnforcement: widget.maxLengthEnforcement,
        onAppPrivateCommand: widget.onAppPrivateCommand,
        inputFormatters: widget.inputFormatters,
        enabled: widget.enabled,
        cursorWidth: widget.cursorWidth,
        cursorHeight: widget.cursorHeight,
        cursorRadius: widget.cursorRadius,
        cursorColor: widget.cursorColor,
        selectionHeightStyle: widget.selectionHeightStyle, //
        selectionWidthStyle: widget.selectionWidthStyle,
        keyboardAppearance: widget.keyboardAppearance,
        scrollPadding: widget.scrollPadding,
        dragStartBehavior: widget.dragStartBehavior,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        selectionControls: widget.selectionControls,
        mouseCursor: widget.mouseCursor,
        buildCounter: widget.buildCounter,
        scrollController: widget.scrollController,
        scrollPhysics: widget.scrollPhysics,
        autofillHints: widget.autofillHints,
        clipBehavior: widget.clipBehavior,
        restorationId: widget.restorationId,
        enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
        //
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        onSubmitted: widget.onSubmitted,
        onTap: widget.onTap,
        readOnly: widget.readOnly ?? false,
        controller: widget.controller,
        keyboardType: widget.textInputTipe,
        obscureText: widget.obscureText,
        style: widget.style ??
            TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.justify,
        maxLength: widget.maxLength, //500
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        expands: widget.expands,
        decoration: InputDecoration(
            helperStyle: widget.hintStyle,
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ??
                TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
            prefixIcon: widget.prefix ?? null,
            suffixIcon: widget.suffix ?? null,
            border: InputBorder.none),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textdat();
  }
}

class FormInputText extends StatefulWidget {
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
  TextEditingController? controller;
  final bool autocorrect;
  String? Function(String?)? validator;
  FormInputText(
      {this.validator,
      this.autocorrect = true,
      this.hintText,
      this.icon,
      this.obscureText = false,
      this.textInputTipe = TextInputType.text,
      this.controller,
      this.maxLength,
      this.expands = false,
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
      this.border});

  @override
  _FormInputTextState createState() => _FormInputTextState();
}

class _FormInputTextState extends State<FormInputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(34),
      ),
      padding: widget.padding ?? EdgeInsets.all(10),
      width: Medidas.width(widget.width ?? 100),
      child: TextFormField(
        autocorrect: widget.autocorrect,
        validator: widget.validator,
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        onTap: widget.onTap,
        readOnly: widget.readOnly ?? false,
        controller: widget.controller,
        keyboardType: widget.textInputTipe,
        obscureText: widget.obscureText,
        style: widget.style ??
            TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.justify,
        maxLength: widget.maxLength, //500
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        expands: widget.expands,
        decoration: InputDecoration(
            labelStyle: widget.labelStyle,
            labelText: widget.labelText,
            helperText: widget.helperText,
            helperStyle: widget.hintStyle,
            errorStyle: widget.errorStyle,
            errorText: widget.errorText,
            errorBorder: widget.errorBorder,
            disabledBorder: widget.disabledBorder,
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ??
                TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
            prefixIcon: widget.icon != null
                ? Icon(
                    widget.icon,
                    color: Colors.white,
                    size: widget.iconSize ?? null,
                  )
                : null,
            border: widget.border ?? InputBorder.none),
      ),
    );
  }
}
