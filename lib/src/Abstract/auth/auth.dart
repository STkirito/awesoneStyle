abstract class AwsAuth {
  init() {}

  Future<String?> createUser(String email, String password) async {
    return '';
  }

  Future<String?> login(String email, String password) async {
    return '';
  }

  Future logout() async {}

  Future<String> readToken() async {
    return '';
  }
}
