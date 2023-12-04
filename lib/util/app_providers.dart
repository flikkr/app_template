import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'app_providers.g.dart';

@riverpod
SupabaseClient supabaseClient(SupabaseClientRef ref) {
  return Supabase.instance.client;
}

@riverpod
GoTrueClient supabaseAuth(SupabaseAuthRef ref) {
  final client = ref.watch(supabaseClientProvider);
  return client.auth;
}

@riverpod
Stream<AuthState> authStateStream(AuthStateStreamRef ref) {
  final auth = ref.watch(supabaseAuthProvider);
  return auth.onAuthStateChange;
}

@riverpod
Stream<ConnectivityResult> connectionStateStream(ConnectionStateStreamRef ref) {
  return Connectivity().onConnectivityChanged;
}
