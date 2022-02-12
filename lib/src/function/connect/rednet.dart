import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';

class RedNet {
  Timer? _timer;
  Duration delay;
  bool _state = false;
  String url;
  RedNet(
      {this.url = 'www.google.com',
      this.delay = const Duration(milliseconds: 1)});

  bool check() {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(delay, () async {
      _state = await this._connect();
    });
    return _state;
  }

  Future<bool> _connect() async {
    ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      final List<InternetAddress> result = await InternetAddress.lookup(url);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
