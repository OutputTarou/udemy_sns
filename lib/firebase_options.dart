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
    apiKey: 'AIzaSyB8uLf_uEfclMi2b6vK9MbyOsaT1YyfkMM',
    appId: '1:303956838890:web:70ad909bfe833cdd69ca93',
    messagingSenderId: '303956838890',
    projectId: 'udemy-sns-87368',
    authDomain: 'udemy-sns-87368.firebaseapp.com',
    storageBucket: 'udemy-sns-87368.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuXHynPI51NPKK2em6LNcbEXEQGFIhNfg',
    appId: '1:303956838890:android:14016c36dbce66b769ca93',
    messagingSenderId: '303956838890',
    projectId: 'udemy-sns-87368',
    storageBucket: 'udemy-sns-87368.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAr3dI8atL62nE8gCR0eYtl9TyInseUReU',
    appId: '1:303956838890:ios:df0ef28bff21e6b669ca93',
    messagingSenderId: '303956838890',
    projectId: 'udemy-sns-87368',
    storageBucket: 'udemy-sns-87368.appspot.com',
    iosBundleId: 'com.example.udemySns',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAr3dI8atL62nE8gCR0eYtl9TyInseUReU',
    appId: '1:303956838890:ios:0ab2293c5f3ae98869ca93',
    messagingSenderId: '303956838890',
    projectId: 'udemy-sns-87368',
    storageBucket: 'udemy-sns-87368.appspot.com',
    iosBundleId: 'com.example.udemySns.RunnerTests',
  );
}