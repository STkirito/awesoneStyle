class DateGenerator {
  DateGenerator();
  List<int> year({int? start, int? finish}) {
    const int localStart = 1922;
    final int localFinish = DateTime.now().year;
    final y = localFinish - localStart;
    return List<int>.generate(y, (index) => localStart + (index + 1));
  }
}
