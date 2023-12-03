import 'package:package_info_plus/package_info_plus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class ServiceInitialiser<T> {
  Future<T> initialise();
}

class PackageInfoInitialiser implements ServiceInitialiser {
  PackageInfo? _packageInfo;
  get packageInfo => _packageInfo;

  @override
  Future<void> initialise() async {
    _packageInfo = await PackageInfo.fromPlatform();
  }
}

class DatabaseInitialiser implements ServiceInitialiser<SupabaseClient> {
  final String url;
  final String anonKey;

  DatabaseInitialiser({
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
