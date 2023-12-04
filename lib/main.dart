import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tripweaver/app.dart';
import 'package:flutter/material.dart';
import 'package:tripweaver/util/app_initiliaser.dart';
import 'package:tripweaver/util/env.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseInitialiser(url: Env.supabaseUrl, anonKey: Env.supabaseAnonKey).initialise();
  runApp(const ProviderScope(child: App()));
}
