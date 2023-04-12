import 'package:intl/intl.dart';

class AwsFormatter {
  /// [formatter] cambia el formato del datetime al formato ymd.
  ///  [formatterCard] cambia el formato del datetime al formato ym.
  /// [formatterTime] cambia el formato del datetime al formato kma.
  static DateFormat formatter = new DateFormat('yyyy/MM/dd');
  static DateFormat formatterCard = new DateFormat('yyyy/MM');
  static DateFormat formatterTime = DateFormat('kk:mm\ta');

  ///[completTime] es una funcion que corrige un time.
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

  /// [parseDateTime] es una funcion que retorna un datatime a partir de un datatime y un time.
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
