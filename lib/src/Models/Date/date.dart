class Date {
  final String? day;
  final String? month;
  final String? year;

  Date(this.day, this.month, this.year);
  bool isNotEmpty() {
    if (day == '' && month == '' && year == '') {
      return false;
    } else {
      return true;
    }
  }
}
