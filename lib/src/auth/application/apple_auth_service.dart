import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tripweaver/src/auth/application/_auth_service.dart';

class AppleAuthServiceImpl implements AuthService<AuthResponse> {
  @override
  Future<AuthResponse?> login() {
    // TODO:
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO:
    throw UnimplementedError();
  }

  @override
  String getServiceName() => 'Apple';
}
