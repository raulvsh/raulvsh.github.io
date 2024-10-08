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
    apiKey: 'AIzaSyBBCXyuTeLzoZ-uyofBadj3FLoKCUwtGxU',
    appId: '1:333012273420:web:4135214859ea8eedf72129',
    messagingSenderId: '333012273420',
    projectId: 'raulvelasco-dev-24fce',
    authDomain: 'raulvelasco-dev-24fce.firebaseapp.com',
    storageBucket: 'raulvelasco-dev-24fce.appspot.com',
    measurementId: 'G-G9JKE8MYDK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCmuV6odC0Y_Ymq_HXt6URrVzWZO83pmGw',
    appId: '1:121170303031:android:c1f9df60365cd8c0a5c7b2',
    messagingSenderId: '121170303031',
    projectId: 'raulvelasco-dev',
    storageBucket: 'raulvelasco-dev.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBpA4GrTLQt4u3LEDSCp4VJPtfAscZYVqY',
    appId: '1:121170303031:web:9096834d9e25ee4ca5c7b2',
    messagingSenderId: '121170303031',
    projectId: 'raulvelasco-dev',
    authDomain: 'raulvelasco-dev.firebaseapp.com',
    storageBucket: 'raulvelasco-dev.appspot.com',
    measurementId: 'G-WQV5LEVD7E',
  );
}