class Date {
  final String? day;
  final String? month;
  final String? year;

  Date(this.day, this.month, this.year);
  bool isEmpty() {
    if (day == '' && month == '' && year == '') {
      return true;
    } else {
      return false;
    }
  }
}
