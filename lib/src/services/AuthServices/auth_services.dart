import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class AuthService extends GetxController {
  late String _baseUrl;
  late String _firebaseToken;
  late FlutterSecureStorage storage;
  RxBool tokenExist = false.obs;

  init(
      {required String url,
      required String token,
      required FlutterSecureStorage storage}) {
    this._baseUrl = url;
    this._firebaseToken = token;
    this.storage = storage;
  }

  Future<String?> createUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };
    final url =
        Uri.https(_baseUrl, '/v1/accounts:signUp', {'key': _firebaseToken});
    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodeResp = json.decode(resp.body);
    if (decodeResp.containsKey('idToken')) {
      storage.write(key: 'token', value: decodeResp['idToken']);
      tokenExist.value = true;
      return null;
    } else {
      return decodeResp['error']['message'];
    }
  }

  Future<String?> login(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };
    final url = Uri.https(
        _baseUrl, '/v1/accounts:signInWithPassword', {'key': _firebaseToken});
    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodeResp = json.decode(resp.body);
    if (decodeResp.containsKey('idToken')) {
      storage.write(key: 'token', value: decodeResp['idToken']);
      tokenExist.value = true;
      return null;
    } else {
      return decodeResp['error']['message'];
    }
  }

  Future logout() async {
    await storage.delete(key: 'token');
    tokenExist.value = false;
  }

  Future<String> readToken() async {
    return await storage.read(key: 'token') ?? '';
  }
}
