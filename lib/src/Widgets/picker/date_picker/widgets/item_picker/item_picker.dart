import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TODO_Future fixe
class AwsItemPicker extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxDecoration? decoration;
  final String label;
  final TextStyle? styleLabel;
  final BuildContext context;
  final int? length;
  final bool year;
  final TextStyle? itemStyle;
  final double? itemExtent;
  final double? itemHeight;
  final void Function(int)? onSelectedItemChanged;
  final String? initialLabel;
  final TextStyle? initialStyle;
  const AwsItemPicker(this.context,
      {Key? key,
      this.height,
      this.width,
      this.padding,
      this.margin,
      this.decoration,
      this.length,
      required this.label,
      this.styleLabel,
      this.itemStyle,
      this.itemExtent,
      this.onSelectedItemChanged,
      this.year = false,
      this.itemHeight,
      this.initialLabel,
      this.initialStyle})
      : super(key: key);
  @override
  Widget build(context) {
    AwsScreenSize(context);
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: AwsScreenSize.height(height ?? 5),
        width: AwsScreenSize.width(width ?? 20),
        padding: padding,
        margin: margin ?? const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: initialLabel != null
                  ? Text(
                      initialLabel!,
                      style: initialStyle ??
                          TextStyle(color: Colors.white.withOpacity(0.5)),
                    )
                  : null,
            ),
            const SizedBox(width: 5),
            Text(
              label,
              style: styleLabel ?? const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      onTap: () => showCupertinoModalPopup<int>(
        context: context,
        builder: (context) => SizedBox(
          height: itemHeight ?? 300,
          child: CupertinoPicker(
            itemExtent: itemExtent ?? 50,
            onSelectedItemChanged: onSelectedItemChanged,
            children: year
                ? List.generate(
                    AwsGenerator.year().length,
                    (index) => Text(
                          AwsGenerator.year()[index].toString(),
                          style:
                              itemStyle ?? const TextStyle(color: Colors.white),
                        ))
                : List.generate(
                    length ?? 31,
                    (index) => Text(
                      (index + 1).toString(),
                      style: itemStyle ?? const TextStyle(color: Colors.white),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
