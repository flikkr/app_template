abstract class AuthService {
  String getServiceName();

  Future<void> login();

  Future<void> logout();
}
