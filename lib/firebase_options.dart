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
    apiKey: 'AIzaSyAxNN-Bsjx9I2q1ZwWO6AZrmc_l9sjAZmM',
    appId: '1:1050605696997:web:5c6d6284402d0441d7210c',
    messagingSenderId: '1050605696997',
    projectId: 'reviewapp-340b4',
    authDomain: 'reviewapp-340b4.firebaseapp.com',
    storageBucket: 'reviewapp-340b4.appspot.com',
    measurementId: 'G-7FYPWV4HKC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAF03-gMVXRI_cuNMIF94j4sqe9F1WOosA',
    appId: '1:1050605696997:android:369c02d94870a4fdd7210c',
    messagingSenderId: '1050605696997',
    projectId: 'reviewapp-340b4',
    storageBucket: 'reviewapp-340b4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHAXhonQOgXBQuqjbFwzwW93GYJdfOBfw',
    appId: '1:1050605696997:ios:a845c89a053965d2d7210c',
    messagingSenderId: '1050605696997',
    projectId: 'reviewapp-340b4',
    storageBucket: 'reviewapp-340b4.appspot.com',
    iosBundleId: 'com.example.reviewApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHAXhonQOgXBQuqjbFwzwW93GYJdfOBfw',
    appId: '1:1050605696997:ios:0ee92b27be4eaeaed7210c',
    messagingSenderId: '1050605696997',
    projectId: 'reviewapp-340b4',
    storageBucket: 'reviewapp-340b4.appspot.com',
    iosBundleId: 'com.example.reviewApp.RunnerTests',
  );
}
