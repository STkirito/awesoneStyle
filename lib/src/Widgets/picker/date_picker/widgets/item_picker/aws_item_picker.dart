import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwsItemPicker extends StatelessWidget {
  final double? _height;
  final double? _width;
  final EdgeInsets? _padding;
  final EdgeInsets? _margin;

  final String _label;
  final TextStyle? _styleLabel;
  final int? _length;
  final bool _year;
  final TextStyle? _itemStyle;
  final double? _itemExtent;
  final double? _itemHeight;
  final void Function(int)? _onSelectedItemChanged;
  final String? _initialLabel;
  final TextStyle? _initialStyle;

  AwsItemPicker({
    Key? key,
    required String label,
    double? height,
    double? width,
    EdgeInsets? padding,
    EdgeInsets? margin,
    TextStyle? styleLabel,
    int? length,
    bool year = false,
    TextStyle? itemStyle,
    double? itemExtent,
    double? itemHeight,
    void Function(int)? onSelectedItemChanged,
    String? initialLabel,
    TextStyle? initialStyle,
  })  : _label = label,
        _height = height,
        _width = width,
        _padding = padding,
        _margin = margin,
        _styleLabel = styleLabel,
        _length = length,
        _year = year,
        _itemStyle = itemStyle,
        _itemExtent = itemExtent,
        _itemHeight = itemHeight,
        _onSelectedItemChanged = onSelectedItemChanged,
        _initialLabel = initialLabel,
        _initialStyle = initialStyle,
        super(key: key);
  @override
  Widget build(context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: context.height(_height ?? 5),
        width: context.width(_width ?? 20),
        padding: _padding,
        margin: _margin ?? const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: _initialLabel != null
                  ? Text(
                      _initialLabel!,
                      style: _initialStyle ??
                          TextStyle(color: Colors.white.withOpacity(0.5)),
                    )
                  : null,
            ),
            const SizedBox(width: 5),
            Text(
              _label,
              style: _styleLabel ?? const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      onTap: () => showCupertinoModalPopup<int>(
        context: context,
        builder: (context) => SizedBox(
          height: _itemHeight ?? 300,
          child: CupertinoPicker(
            itemExtent: _itemExtent ?? 50,
            onSelectedItemChanged: _onSelectedItemChanged,
            children: _year
                ? List.generate(
                    AwsGenerators.year().length,
                    (index) => Text(
                          AwsGenerators.year()[index].toString(),
                          style: _itemStyle ??
                              const TextStyle(color: Colors.white),
                        ))
                : List.generate(
                    _length ?? 31,
                    (index) => Text(
                      (index + 1).toString(),
                      style: _itemStyle ?? const TextStyle(color: Colors.white),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
