import 'package:tripweaver/src/auth/application/_auth_service.dart';
import 'package:tripweaver/src/auth/application/apple_auth_service.dart';
import 'package:tripweaver/src/auth/application/google_auth_service.dart';
import 'package:tripweaver/src/user/domain/new_user.dart';

class BaseAuthService {
  void login(AuthService authService) {
    final auth = switch (authService) {
      GoogleAuthServiceImpl() => GoogleAuthServiceImpl(),
      AppleAuthServiceImpl() => AppleAuthServiceImpl(),
      AuthService() => null,
    };

    // TODO:
    throw UnimplementedError();
  }

  void loginWithCredentials(String id, String password) {
    // TODO:
    throw UnimplementedError();
  }

  void register(NewUser userDetails) {
    // TODO:
    throw UnimplementedError();
  }

  void logout() {
    // TODO:
    throw UnimplementedError();
  }
}
