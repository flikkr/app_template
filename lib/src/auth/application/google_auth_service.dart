import 'dart:io';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tripweaver/src/auth/application/_auth_service.dart';
import 'package:tripweaver/util/env.dart';

class GoogleAuthServiceImpl implements AuthService<AuthResponse> {
  final GoTrueClient? _supabaseAuth;

  GoogleAuthServiceImpl([this._supabaseAuth]);

  @override
  Future<AuthResponse?> login() async {
    if (_supabaseAuth == null) return null;
    String clientId;
    if (Platform.isAndroid) {
      clientId = Env.googleAuthAndroidClientId;
    } else if (Platform.isIOS) {
      clientId = Env.googleAuthIosClientId;
    } else {
      throw 'Unsupported platform.';
    }
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: clientId,
      serverClientId: Env.googleAuthWebClientId,
    );

    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    // TODO: cleanup
    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    return Supabase.instance.client.auth.signInWithIdToken(
      provider: Provider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
  }

  @override
  Future<void> logout() {
    // TODO:
    throw UnimplementedError();
  }

  @override
  String getServiceName() => 'Google';
}

Future<AuthResponse> login() async {
  String clientId = Env.googleAuthAndroidClientId;
  final GoogleSignIn googleSignIn = GoogleSignIn(
    clientId: clientId,
    serverClientId: Env.googleAuthWebClientId,
  );

  final googleUser = await googleSignIn.signIn();
  final googleAuth = await googleUser!.authentication;
  final accessToken = googleAuth.accessToken;
  final idToken = googleAuth.idToken;

  // TODO: cleanup
  if (accessToken == null) {
    throw 'No Access Token found.';
  }
  if (idToken == null) {
    throw 'No ID Token found.';
  }

  return Supabase.instance.client.auth.signInWithIdToken(
    provider: Provider.google,
    idToken: idToken,
    accessToken: accessToken,
  );
}
