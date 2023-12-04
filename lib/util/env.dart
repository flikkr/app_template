import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env.stg')
final class Env {
  @EnviedField(varName: 'SUPABASE_URL')
  static const String supabaseUrl = _Env.supabaseUrl;
  @EnviedField(varName: 'SUPABASE_ANON_KEY')
  static const String supabaseAnonKey = _Env.supabaseAnonKey;
  @EnviedField(varName: 'SUPABASE_AUTH_REDIRECT')
  static const String supabaseAuthRedirect = _Env.supabaseAuthRedirect;
}
