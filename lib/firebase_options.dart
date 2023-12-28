// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBJOnK_R0iH9F_6lCIcL6Z_DAIaknfTHiQ',
    appId: '1:917710496829:web:a66bafb574e7a2e1c53654',
    messagingSenderId: '917710496829',
    projectId: 'tripweaver',
    authDomain: 'tripweaver.firebaseapp.com',
    databaseURL: 'https://tripweaver.firebaseio.com',
    storageBucket: 'tripweaver.appspot.com',
    measurementId: 'G-GY3Y8Q06PV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqhxLkchY57raoj22zWWCTlu5xAY9TSII',
    appId: '1:917710496829:android:e7135c5a22828fc8c53654',
    messagingSenderId: '917710496829',
    projectId: 'tripweaver',
    databaseURL: 'https://tripweaver.firebaseio.com',
    storageBucket: 'tripweaver.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLsAPAVqrquYIM8SjGHiG7u0B308BssWo',
    appId: '1:917710496829:ios:a13b3e3deb83d3dbc53654',
    messagingSenderId: '917710496829',
    projectId: 'tripweaver',
    databaseURL: 'https://tripweaver.firebaseio.com',
    storageBucket: 'tripweaver.appspot.com',
    androidClientId: '917710496829-a04mltot0rk0s0m18nrrbqkr8gjlte86.apps.googleusercontent.com',
    iosClientId: '917710496829-69ds1rlgvcar567pbc68hh759kjh6rmm.apps.googleusercontent.com',
    iosBundleId: 'com.musang.Tripweaver',
  );
}