import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'app_providers.g.dart';

final supabase = Supabase.instance.client;
final supabaseAuth = supabase.auth;

@riverpod
Stream<AuthState> authStateStream(AuthStateStreamRef ref) {
  return supabaseAuth.onAuthStateChange;
}

@riverpod
Stream<ConnectivityResult> connectionStateStream(ConnectionStateStreamRef ref) {
  return Connectivity().onConnectivityChanged;
}
