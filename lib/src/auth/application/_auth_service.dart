abstract class AuthService {
  static String redirectUrl = 'a';

  String getServiceName();

  Future<void> login();

  Future<void> logout();
}
