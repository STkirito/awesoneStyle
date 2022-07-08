import 'package:intl/intl.dart';

class AwsFormatter {
  static DateFormat formatter = new DateFormat('yyyy/MM/dd');
  static DateFormat formatterCard = new DateFormat('yyyy/MM');
  static DateFormat formatterTime = DateFormat('kk:mm\ta');
  static String completTime({
    required int hour,
    required int minute,
    String divisor = ':',
    String spacer = ' ',
  }) {
    if (hour < 10 && minute < 10) {
      return '0$hour$spacer{divisor}${spacer}0$minute';
    } else if (hour < 10 && minute > 9) {
      return '0$hour$spacer$divisor$spacer$minute';
    } else if (hour > 9 && minute < 10) {
      return '$hour$spacer$divisor${spacer}0$minute';
    } else {
      return '$hour$spacer$divisor$spacer$minute';
    }
  }

  static DateTime parseDateTime(DateTime date, String time) {
    int hour = int.parse(time.substring(0, 2));
    int minute = int.parse(time.substring(3, 5));
    return DateTime(
      date.year,
      date.month,
      date.day,
      hour,
      minute,
      date.second,
      date.millisecond,
      date.microsecond,
    );
  }
}
