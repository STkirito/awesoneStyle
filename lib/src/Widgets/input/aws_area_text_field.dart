import 'dart:ui';
import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AwsAreaTextField extends StatelessWidget {
  final String? _hintText;
  final IconData? _icon;
  final bool _obscureText;
  final TextInputType? _textInputType;
  final int? _maxLength;
  final bool _expands;
  final int? _minLines;
  final int? _maxLines;
  final double? _width;
  final double? _iconSize;
  final TextStyle? _hintStyle;
  final TextStyle? _style;
  final EdgeInsetsGeometry? _padding;
  final bool? _readOnly;
  final Function(String)? _onChanged;
  final Function()? _onEditingComplete;
  final Function(String)? _onSubmitted;
  final Function()? _onTap;
  final InputDecoration? _inputDecoration;
  final InputBorder? _errorBorder;
  final String? _errorText;
  final TextStyle? _errorStyle;
  final String? _helperText;
  final TextStyle? _labelStyle;
  final String? _labelText;
  final InputBorder? _disabledBorder;
  final InputBorder? _border;
  final TextEditingController? _controller;
  //
  final FocusNode? _focusNode;
  final TextInputAction? _textInputAction;
  final TextCapitalization _textCapitalization;
  final StrutStyle? _strutStyle;
  final TextAlignVertical? _textAlignVertical;
  final TextDirection? _textDirection;

  final Widget Function(BuildContext, EditableTextState)? _contextMenuBuilder;
  final bool? _showCursor;
  final bool _autofocus;
  final String _obscuringCharacter;
  final bool _autocorrect;
  final SmartDashesType? _smartDashesType;
  final SmartQuotesType? _smartQuotesType;
  final bool _enableSuggestions;
  final MaxLengthEnforcement? _maxLengthEnforcement;
  final void Function(String, Map<String, dynamic>)? _onAppPrivateCommand;
  final List<TextInputFormatter>? _inputFormatters;
  final bool? _enabled;
  final double _cursorWidth;
  final double? _cursorHeight;
  final Radius? _cursorRadius;
  final Color? _cursorColor;
  final BoxHeightStyle _selectionHeightStyle;
  final BoxWidthStyle _selectionWidthStyle;
  final Brightness? _keyboardAppearance;
  final EdgeInsets _scrollPadding;
  final DragStartBehavior _dragStartBehavior;
  final bool _enableInteractiveSelection;
  final TextSelectionControls? _selectionControls;
  final MouseCursor? _mouseCursor;
  final Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? _buildCounter;
  final ScrollController? _scrollController;
  final ScrollPhysics? _scrollPhysics;
  final Iterable<String>? _autofillHints;
  final Clip _clipBehavior;
  final String? _restorationId;
  final bool _enableIMEPersonalizedLearning;
  final BoxDecoration? _decoration;
  AwsAreaTextField(
      {Key? key,
      bool obscureText = false,
      bool expands = true,
      TextCapitalization textCapitalization = TextCapitalization.none,
      bool autofocus = false,
      String obscuringCharacter = '•',
      bool autocorrect = true,
      bool enableSuggestions = true,
      double cursorWidth = 2.0,
      BoxHeightStyle selectionHeightStyle = BoxHeightStyle.tight,
      BoxWidthStyle selectionWidthStyle = BoxWidthStyle.tight,
      EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      bool enableInteractiveSelection = true,
      Clip clipBehavior = Clip.hardEdge,
      bool enableIMEPersonalizedLearning = true,
      String? hintText,
      IconData? icon,
      TextInputType textInputType = TextInputType.multiline,
      int? maxLength,
      int? minLines,
      int? maxLines,
      double? width,
      double? iconSize,
      TextStyle? hintStyle,
      TextStyle? style,
      EdgeInsetsGeometry? padding,
      bool? readOnly,
      Function(String)? onChanged,
      Function()? onEditingComplete,
      Function(String)? onSubmitted,
      Function()? onTap,
      InputDecoration? inputDecoration,
      InputBorder? errorBorder,
      String? errorText,
      TextStyle? errorStyle,
      String? helperText,
      TextStyle? labelStyle,
      String? labelText,
      InputBorder? disabledBorder,
      InputBorder? border,
      TextEditingController? controller,
      FocusNode? focusNode,
      TextInputAction? textInputAction,
      StrutStyle? strutStyle,
      TextAlignVertical? textAlignVertical,
      TextDirection? textDirection,
      Widget Function(BuildContext, EditableTextState)? contextMenuBuilder,
      bool? showCursor,
      SmartDashesType? smartDashesType,
      SmartQuotesType? smartQuotesType,
      MaxLengthEnforcement? maxLengthEnforcement,
      void Function(String, Map<String, dynamic>)? onAppPrivateCommand,
      List<TextInputFormatter>? inputFormatters,
      bool? enabled,
      double? cursorHeight,
      Radius? cursorRadius,
      Color? cursorColor,
      Brightness? keyboardAppearance,
      TextSelectionControls? selectionControls,
      MouseCursor? mouseCursor,
      Widget? Function(BuildContext,
              {required int currentLength,
              required bool isFocused,
              required int? maxLength})?
          buildCounter,
      ScrollController? scrollController,
      ScrollPhysics? scrollPhysics,
      Iterable<String>? autofillHints = const <String>[],
      String? restorationId,
      BoxDecoration? decoration})
      : _hintText = hintText,
        _icon = icon,
        _obscureText = obscureText,
        _textInputType = textInputType,
        _controller = controller,
        _maxLength = maxLength,
        _expands = expands,
        _minLines = minLines,
        _maxLines = maxLines,
        _padding = padding,
        _width = width,
        _hintStyle = hintStyle,
        _iconSize = iconSize,
        _readOnly = readOnly,
        _onChanged = onChanged,
        _onEditingComplete = onEditingComplete,
        _onSubmitted = onSubmitted,
        _onTap = onTap,
        _inputDecoration = inputDecoration,
        _style = style,
        _errorBorder = errorBorder,
        _errorText = errorText,
        _helperText = helperText,
        _errorStyle = errorStyle,
        _labelStyle = labelStyle,
        _labelText = labelText,
        _disabledBorder = disabledBorder,
        _border = border,
        _focusNode = focusNode,
        _textInputAction = textInputAction,
        _textCapitalization = textCapitalization,
        _strutStyle = strutStyle,
        _textAlignVertical = textAlignVertical,
        _textDirection = textDirection,
        _contextMenuBuilder = contextMenuBuilder,
        _showCursor = showCursor,
        _autofocus = autofocus,
        _obscuringCharacter = obscuringCharacter,
        _autocorrect = autocorrect,
        _smartDashesType = smartDashesType,
        _smartQuotesType = smartQuotesType,
        _enableSuggestions = enableSuggestions,
        _maxLengthEnforcement = maxLengthEnforcement,
        _onAppPrivateCommand = onAppPrivateCommand,
        _inputFormatters = inputFormatters,
        _enabled = enabled,
        _cursorWidth = cursorWidth,
        _cursorHeight = cursorHeight,
        _cursorRadius = cursorRadius,
        _cursorColor = cursorColor,
        _selectionHeightStyle = selectionHeightStyle,
        _selectionWidthStyle = selectionWidthStyle,
        _keyboardAppearance = keyboardAppearance,
        _scrollPadding = scrollPadding,
        _dragStartBehavior = dragStartBehavior,
        _enableInteractiveSelection = enableInteractiveSelection,
        _selectionControls = selectionControls,
        _mouseCursor = mouseCursor,
        _buildCounter = buildCounter,
        _scrollController = scrollController,
        _scrollPhysics = scrollPhysics,
        _autofillHints = autofillHints,
        _clipBehavior = clipBehavior,
        _restorationId = restorationId,
        _enableIMEPersonalizedLearning = enableIMEPersonalizedLearning,
        _decoration = decoration,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _decoration ??
          BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(34),
          ),
      padding: _padding ?? EdgeInsets.all(10),
      width: context.width(_width ?? 100),
      child: TextField(
        focusNode: _focusNode,
        textInputAction: _textInputAction,
        textCapitalization: _textCapitalization,
        strutStyle: _strutStyle,
        textAlignVertical: _textAlignVertical,
        textDirection: _textDirection,
        contextMenuBuilder: _contextMenuBuilder,
        showCursor: _showCursor,
        autofocus: _autofocus,
        obscuringCharacter: _obscuringCharacter,
        autocorrect: _autocorrect,
        smartDashesType: _smartDashesType,
        smartQuotesType: _smartQuotesType,
        enableSuggestions: _enableSuggestions,
        maxLengthEnforcement: _maxLengthEnforcement,
        onAppPrivateCommand: _onAppPrivateCommand,
        inputFormatters: _inputFormatters,
        enabled: _enabled,
        cursorWidth: _cursorWidth,
        cursorHeight: _cursorHeight,
        cursorRadius: _cursorRadius,
        cursorColor: _cursorColor,
        selectionHeightStyle: _selectionHeightStyle, //
        selectionWidthStyle: _selectionWidthStyle,
        keyboardAppearance: _keyboardAppearance,
        scrollPadding: _scrollPadding,
        dragStartBehavior: _dragStartBehavior,
        enableInteractiveSelection: _enableInteractiveSelection,
        selectionControls: _selectionControls,
        mouseCursor: _mouseCursor,
        buildCounter: _buildCounter,
        scrollController: _scrollController,
        scrollPhysics: _scrollPhysics,
        autofillHints: _autofillHints,
        clipBehavior: _clipBehavior,
        restorationId: _restorationId,
        enableIMEPersonalizedLearning: _enableIMEPersonalizedLearning,
        onChanged: _onChanged,
        onEditingComplete: _onEditingComplete,
        onSubmitted: _onSubmitted,
        onTap: _onTap,
        readOnly: _readOnly ?? false,
        controller: _controller,
        keyboardType: _textInputType,
        obscureText: _obscureText,
        style: _style ??
            TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.justify,
        maxLength: _maxLength,
        minLines: _minLines,
        maxLines: _maxLines,
        expands: _expands,
        decoration: _inputDecoration ??
            InputDecoration(
                labelStyle: _labelStyle,
                labelText: _labelText,
                helperText: _helperText,
                helperStyle: _hintStyle,
                errorStyle: _errorStyle,
                errorText: _errorText,
                errorBorder: _errorBorder,
                disabledBorder: _disabledBorder,
                hintText: _hintText,
                hintStyle: _hintStyle ??
                    TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                prefixIcon: _icon != null
                    ? Icon(
                        _icon,
                        color: Colors.white,
                        size: _iconSize ?? null,
                      )
                    : null,
                border: _border ?? InputBorder.none),
      ),
    );
  }
}
