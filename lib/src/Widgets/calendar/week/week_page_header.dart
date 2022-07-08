import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AwsWeekPageHeader extends AwsCalendarPageHeader {
  /// A header widget to display on week view.
  const AwsWeekPageHeader({
    Key? key,
    VoidCallback? onNextDay,
    AsyncCallback? onTitleTapped,
    VoidCallback? onPreviousDay,
    required DateTime startDate,
    required DateTime endDate,
    Color iconColor = AwsStyle.black,
    Decoration? decoration,
    TextStyle? titleStyle,
  }) : super(
          key: key,
          date: startDate,
          secondaryDate: endDate,
          onNextDay: onNextDay,
          onPreviousDay: onPreviousDay,
          onTitleTapped: onTitleTapped,
          dateStringBuilder: AwsWeekPageHeader._weekStringBuilder,
          iconColor: iconColor,
          decoration: decoration,
          styleTitle: titleStyle,
        );
  static String _weekStringBuilder(DateTime date, {DateTime? secondaryDate}) =>
      "${date.day} / ${date.month} / ${date.year} to "
      "${secondaryDate != null ? "${secondaryDate.day} / "
          "${secondaryDate.month} / ${secondaryDate.year}" : ""}";
}
