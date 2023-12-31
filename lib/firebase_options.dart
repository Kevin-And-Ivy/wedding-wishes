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
        return macos;
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
    apiKey: '{{ secrets.WEB_API_KEY }}',
    appId: '{{ secrets.WEB_API_ID }}',
    messagingSenderId: '{{ secrets.WEB_MESSAGING_SENDER_ID }}',
    projectId: 'kevin-ivy-wedding',
    authDomain: 'kevin-ivy-wedding.firebaseapp.com',
    storageBucket: 'kevin-ivy-wedding.appspot.com',
    measurementId: '{{ secrets.WEB_MEASUREMENT_ID }}',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: '{{ secrets.ANDROID_API_KEY }}',
    appId: '1:374098244660:android:c289f5f9e48b4b33b0c661',
    messagingSenderId: '374098244660',
    projectId: 'kevin-ivy-wedding',
    storageBucket: 'kevin-ivy-wedding.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: '{{ secrets.IOS_API_KEY }}',
    appId: '1:374098244660:ios:e6d5c87dec1767fbb0c661',
    messagingSenderId: '374098244660',
    projectId: 'kevin-ivy-wedding',
    storageBucket: 'kevin-ivy-wedding.appspot.com',
    iosClientId: '374098244660-0pggiaji1g8t403a200tg9ic6l59ulp0.apps.googleusercontent.com',
    iosBundleId: 'com.example.kevinIvyWedding',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: '{{ secrets.MACOS_API_KEY }}',
    appId: '1:374098244660:ios:e6d5c87dec1767fbb0c661',
    messagingSenderId: '374098244660',
    projectId: 'kevin-ivy-wedding',
    storageBucket: 'kevin-ivy-wedding.appspot.com',
    iosClientId: '374098244660-0pggiaji1g8t403a200tg9ic6l59ulp0.apps.googleusercontent.com',
    iosBundleId: 'com.example.kevinIvyWedding',
  );
}
