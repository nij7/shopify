// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC0MSmn6Kj6CCJalDakHD3tRRI_1GdyTRo',
    appId: '1:27270435814:web:b80ecedcf1cbc6a787bc27',
    messagingSenderId: '27270435814',
    projectId: 'shopify-9835b',
    authDomain: 'shopify-9835b.firebaseapp.com',
    storageBucket: 'shopify-9835b.appspot.com',
    measurementId: 'G-LL2ES0Y871',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-FPApAyhBcylVM01Svq_rRefU5V0jszs',
    appId: '1:27270435814:android:bc6b7e951139424687bc27',
    messagingSenderId: '27270435814',
    projectId: 'shopify-9835b',
    storageBucket: 'shopify-9835b.appspot.com',
  );
}
