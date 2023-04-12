
/// [AwsRiverpodController] es una clase para unificar un provider de riverpod.
class AwsRiverpodController {
  final Object? _watch;
  final Object? _read;
  final Object? _refresh;
  AwsRiverpodController(
      {required Object? watch, required Object? read, required Object? refresh})
      : _watch = watch,
        _read = read,
        _refresh = refresh;
  watch() {
    return _watch;
  }

  read() {
    return _read;
  }

  refresh() {
    return _refresh;
  }
}
