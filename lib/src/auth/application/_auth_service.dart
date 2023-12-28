import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthService<T> {
  static String redirectUrl = 'a';

  String getServiceName();

  Future<AuthResponse?> login();

  Future<void> logout();
}
