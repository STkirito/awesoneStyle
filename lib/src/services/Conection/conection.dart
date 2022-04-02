import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class Conection extends GetxController {
  Timer? _timer;
  Duration delay;
  RxBool _states = false.obs;
  String url;
  Conection(
      {this.url = 'www.google.com',
      this.delay = const Duration(milliseconds: 1)});

  RxBool check() {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(delay, () async {
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
      final List<InternetAddress> result = await InternetAddress.lookup(url);
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
