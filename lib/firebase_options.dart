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
    apiKey: 'AIzaSyB7ghp41MH7aSApTSjnfJV55s9srxjx8uE',
    appId: '1:436952571459:web:2672ffd47b926e72553ef6',
    messagingSenderId: '436952571459',
    projectId: 'freelanceproject-21af8',
    authDomain: 'freelanceproject-21af8.firebaseapp.com',
    storageBucket: 'freelanceproject-21af8.appspot.com',
    measurementId: 'G-R81E8ZMPN8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD73e954rGm7h3T1Jw9i5656R2-oPXVX6k',
    appId: '1:436952571459:android:9b6a41b104e385e0553ef6',
    messagingSenderId: '436952571459',
    projectId: 'freelanceproject-21af8',
    storageBucket: 'freelanceproject-21af8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbpHxwCPOlflsAZB2VSb496DhZg1hN3K4',
    appId: '1:436952571459:ios:2c7cffaabda99d62553ef6',
    messagingSenderId: '436952571459',
    projectId: 'freelanceproject-21af8',
    storageBucket: 'freelanceproject-21af8.appspot.com',
    iosClientId: '436952571459-golupinh1h3be2p8jooss45ghvpuge90.apps.googleusercontent.com',
    iosBundleId: 'com.example.freelanceproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbpHxwCPOlflsAZB2VSb496DhZg1hN3K4',
    appId: '1:436952571459:ios:2c7cffaabda99d62553ef6',
    messagingSenderId: '436952571459',
    projectId: 'freelanceproject-21af8',
    storageBucket: 'freelanceproject-21af8.appspot.com',
    iosClientId: '436952571459-golupinh1h3be2p8jooss45ghvpuge90.apps.googleusercontent.com',
    iosBundleId: 'com.example.freelanceproject',
  );
}
