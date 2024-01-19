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
    apiKey: 'AIzaSyDSrMhmwxeOoZ157ZU0Y-Xe9XCWk-1jqBY',
    appId: '1:536445920372:web:e52a26be5210cd22a7dd21',
    messagingSenderId: '536445920372',
    projectId: 'minichat-2d598',
    authDomain: 'minichat-2d598.firebaseapp.com',
    storageBucket: 'minichat-2d598.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjIt8zeGW95GmC5pLh2vSRc1gS7cFTyfs',
    appId: '1:536445920372:android:67d05c44ddd4e306a7dd21',
    messagingSenderId: '536445920372',
    projectId: 'minichat-2d598',
    storageBucket: 'minichat-2d598.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOH_lqae2ryFco964S-DkEit2IjFEJlxE',
    appId: '1:536445920372:ios:794a8c2f79e718c7a7dd21',
    messagingSenderId: '536445920372',
    projectId: 'minichat-2d598',
    storageBucket: 'minichat-2d598.appspot.com',
    iosBundleId: 'com.example.minichat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOH_lqae2ryFco964S-DkEit2IjFEJlxE',
    appId: '1:536445920372:ios:2961a584c00ed799a7dd21',
    messagingSenderId: '536445920372',
    projectId: 'minichat-2d598',
    storageBucket: 'minichat-2d598.appspot.com',
    iosBundleId: 'com.example.minichat.RunnerTests',
  );
}
