import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tripweaver/src/auth/application/_auth_service.dart';
import 'package:tripweaver/util/env.dart';

class GoogleAuthServiceImpl implements AuthService {
  @override
  Future<void> login() async {
    try {
      await Supabase.instance.client.auth
          .signInWithOAuth(Provider.google, redirectTo: Env.supabaseAuthRedirect);
    } catch (e) {}
    return;
  }

  @override
  Future<void> logout() {
    // TODO:
    throw UnimplementedError();
  }

  @override
  String getServiceName() => 'Google';
}
