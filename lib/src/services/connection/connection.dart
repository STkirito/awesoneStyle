import 'dart:async';
import 'dart:io';
import 'package:awesonestyle/awesonestyle.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class AwsConnection extends GetxController {
  Timer? _timer;
  Duration _delay;
  RxBool _states = false.obs;
  String _url;

  AwsConnection(
      {String url = 'www.google.com',
      Duration delay = const Duration(milliseconds: 1)})
      : _url = url,
        _delay = delay;

  RxBool check() {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(_delay, () async {
      _states = await this._connect();
    });
    return _states;
  }

  RxBool get state => this._states;
  Future<RxBool> _connect() async {
    ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      final List<InternetAddress> result = await InternetAddress.lookup(_url);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return RxBool(true);
      } else {
        return RxBool(false);
      }
    } else {
      return RxBool(false);
    }
  }
}
