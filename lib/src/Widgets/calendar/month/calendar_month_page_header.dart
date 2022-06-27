import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AwsMonthPageHeader extends AwsCalendarPageHeader {
  const AwsMonthPageHeader({
    Key? key,
    VoidCallback? onNextMonth,
    AsyncCallback? onTitleTapped,
    VoidCallback? onPreviousMonth,
    Color iconColor = AwsStyle.black,
    TextStyle? textStyle,
    Decoration? decoration,
    required DateTime date,
  }) : super(
          key: key,
          date: date,
          onNextDay: onNextMonth,
          onPreviousDay: onPreviousMonth,
          onTitleTapped: onTitleTapped,
          iconColor: iconColor,
          decoration: decoration,
          styleTitle: textStyle,
          dateStringBuilder: AwsMonthPageHeader._monthStringBuilder,
        );
  static String _monthStringBuilder(DateTime date, {DateTime? secondaryDate}) =>
      "${date.month} - ${date.year}";
}
