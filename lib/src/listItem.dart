import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool? enabled;
  final bool? isThreeLine; //
  final bool? dense; //
  final VisualDensity? visualDensity;
  final EdgeInsetsGeometry? contentPadding;
  final int? index;
  final bool? selected;
  final double? horizontalTitleGap;
  final double? minVerticalPadding;
  final double? minLeadingWidth;
  ListItem({
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.onLongPress,
    this.enabled,
    this.selected,
    this.isThreeLine,
    this.dense,
    this.visualDensity,
    this.contentPadding,
    this.index,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
  });
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leading,
      title: widget.title,
      subtitle: widget.subtitle,
      trailing: widget.trailing,
      isThreeLine: widget.isThreeLine ?? false,
      dense: widget.dense ?? true,
      visualDensity: widget.visualDensity,
      contentPadding: widget.contentPadding,
      enabled: widget.enabled ?? true,
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      selected: widget.selected ?? false,
      horizontalTitleGap: widget.horizontalTitleGap,
      minVerticalPadding: widget.minVerticalPadding,
      minLeadingWidth: widget.minLeadingWidth,
    );
  }
}
