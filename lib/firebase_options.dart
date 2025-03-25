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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAubZ2gTdGfVvI9TxoQe8JzidGZNVAkBI8',
    appId: '1:125039708557:web:283e795f28ebe8ad1ed5c4',
    messagingSenderId: '125039708557',
    projectId: 'mysafelock-a8cc3',
    authDomain: 'mysafelock-a8cc3.firebaseapp.com',
    storageBucket: 'mysafelock-a8cc3.firebasestorage.app',
    measurementId: 'G-HQ4P1TKKLT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8rumqLRAEWIYIZdBhb7b-arS8ne5fdQ0',
    appId: '1:125039708557:android:bcba5f2ba2c1402b1ed5c4',
    messagingSenderId: '125039708557',
    projectId: 'mysafelock-a8cc3',
    storageBucket: 'mysafelock-a8cc3.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAS7RhKOcRywDB9u0k0taWw2WKzGC0CqU',
    appId: '1:125039708557:ios:de6db1b463ba87301ed5c4',
    messagingSenderId: '125039708557',
    projectId: 'mysafelock-a8cc3',
    storageBucket: 'mysafelock-a8cc3.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAAS7RhKOcRywDB9u0k0taWw2WKzGC0CqU',
    appId: '1:125039708557:ios:de6db1b463ba87301ed5c4',
    messagingSenderId: '125039708557',
    projectId: 'mysafelock-a8cc3',
    storageBucket: 'mysafelock-a8cc3.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAubZ2gTdGfVvI9TxoQe8JzidGZNVAkBI8',
    appId: '1:125039708557:web:0d44a28c345a94db1ed5c4',
    messagingSenderId: '125039708557',
    projectId: 'mysafelock-a8cc3',
    authDomain: 'mysafelock-a8cc3.firebaseapp.com',
    storageBucket: 'mysafelock-a8cc3.firebasestorage.app',
    measurementId: 'G-QP030K41SK',
  );
}
