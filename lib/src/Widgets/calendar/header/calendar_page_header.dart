import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AwsCalendarPageHeader extends StatelessWidget {
  /// When user taps on right arrow.
  final VoidCallback? onNextDay;

  /// When user taps on left arrow.
  final VoidCallback? onPreviousDay;

  /// When user taps on title.
  final AsyncCallback? onTitleTapped;

  /// Date of month/day.
  final DateTime date;

  /// Secondary date. This date will be used when we need to define a
  /// range of dates.
  /// [date] can be starting date and [secondaryDate] can be end date.
  final DateTime? secondaryDate;

  /// Provides string to display as title.
  final StringProvider dateStringBuilder;

  /// Decoration color of header.
  final Decoration? decoration;

  /// Color of icons at both sides of header.
  final Color iconColor;

  /// style of title
  final TextStyle? styleTitle;

  /// Common header for month and day view In this header user can define format
  /// in which date will be displayed by providing [dateStringBuilder] function.
  const AwsCalendarPageHeader({
    Key? key,
    required this.date,
    required this.dateStringBuilder,
    this.onNextDay,
    this.onTitleTapped,
    this.onPreviousDay,
    this.secondaryDate,
    this.decoration,
    this.iconColor = AwsStyle.black,
    this.styleTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      clipBehavior: Clip.antiAlias,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onPreviousDay,
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            icon: Icon(
              Icons.chevron_left,
              size: 30,
              color: iconColor,
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: onTitleTapped,
              child: Text(
                dateStringBuilder(date, secondaryDate: secondaryDate),
                textAlign: TextAlign.center,
                style: styleTitle,
              ),
            ),
          ),
          IconButton(
            onPressed: onNextDay,
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            icon: Icon(
              Icons.chevron_right,
              size: 30,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
