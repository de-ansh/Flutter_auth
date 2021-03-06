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
    apiKey: 'AIzaSyDwEMWNNoFNxFdPtKEEcJUakAOGFdiFyY0',
    appId: '1:239162911433:web:4e81350c100df3a87bbb18',
    messagingSenderId: '239162911433',
    projectId: 'flutterauth-3def2',
    authDomain: 'flutterauth-3def2.firebaseapp.com',
    storageBucket: 'flutterauth-3def2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlU-4G4VXNnfX_ulI7At_roAX8lZuEI2M',
    appId: '1:239162911433:android:b6e8c73f7d6667cd7bbb18',
    messagingSenderId: '239162911433',
    projectId: 'flutterauth-3def2',
    storageBucket: 'flutterauth-3def2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvOs6j5j7Hmz-Fbas8t1e7JENy_YD2hJM',
    appId: '1:239162911433:ios:ae5fe6bf809a2c167bbb18',
    messagingSenderId: '239162911433',
    projectId: 'flutterauth-3def2',
    storageBucket: 'flutterauth-3def2.appspot.com',
    iosClientId: '239162911433-9d80jfolphi753oma485mae6qtq8fv06.apps.googleusercontent.com',
    iosBundleId: 'com.example.auth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvOs6j5j7Hmz-Fbas8t1e7JENy_YD2hJM',
    appId: '1:239162911433:ios:ae5fe6bf809a2c167bbb18',
    messagingSenderId: '239162911433',
    projectId: 'flutterauth-3def2',
    storageBucket: 'flutterauth-3def2.appspot.com',
    iosClientId: '239162911433-9d80jfolphi753oma485mae6qtq8fv06.apps.googleusercontent.com',
    iosBundleId: 'com.example.auth',
  );
}
