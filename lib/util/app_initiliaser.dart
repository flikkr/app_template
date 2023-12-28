import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tripweaver/firebase_options.dart';

abstract class ServiceInitialiser<T> {
  Future<T> initialise();
}

class PackageInfoInitialiser implements ServiceInitialiser<PackageInfo> {
  @override
  Future<PackageInfo> initialise() async {
    return await PackageInfo.fromPlatform();
  }
}

class SupabaseInitialiser implements ServiceInitialiser<SupabaseClient> {
  final String url;
  final String anonKey;

  SupabaseInitialiser({
    required this.url,
    required this.anonKey,
  });

  @override
  Future<SupabaseClient> initialise() async {
    final supabase = await Supabase.initialize(
      url: url,
      anonKey: anonKey,
    );
    return supabase.client;
  }
}

class FirebaseInitialiser implements ServiceInitialiser<FirebaseApp> {
  @override
  Future<FirebaseApp> initialise() async {
    final app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    return app;
  }
}
