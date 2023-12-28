import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env.stg')
final class Env {
  @EnviedField(varName: 'SUPABASE_URL')
  static const String supabaseUrl = _Env.supabaseUrl;
  @EnviedField(varName: 'SUPABASE_ANON_KEY')
  static const String supabaseAnonKey = _Env.supabaseAnonKey;

  @EnviedField(varName: 'GOOGLE_AUTH_ANDROID_CLIENT_ID')
  static const String googleAuthAndroidClientId = _Env.googleAuthAndroidClientId;
  @EnviedField(varName: 'GOOGLE_AUTH_IOS_CLIENT_ID')
  static const String googleAuthIosClientId = _Env.googleAuthIosClientId;
  @EnviedField(varName: 'GOOGLE_AUTH_WEB_CLIENT_ID')
  static const String googleAuthWebClientId = _Env.googleAuthWebClientId;
}
