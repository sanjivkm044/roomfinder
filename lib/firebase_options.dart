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
    apiKey: 'AIzaSyBdjiWnJ2gnAxulY3HIEWOHHkgPj8ik4Z4',
    appId: '1:946982287770:web:914a9e761706d072f72223',
    messagingSenderId: '946982287770',
    projectId: 'roomfinder-6288d',
    authDomain: 'roomfinder-6288d.firebaseapp.com',
    storageBucket: 'roomfinder-6288d.appspot.com',
    measurementId: 'G-JE5JFNKLHD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCLuG1SM7rvc1xAjZSktX8sq-jUXEC0imQ',
    appId: '1:946982287770:android:b385efddfac8f51ff72223',
    messagingSenderId: '946982287770',
    projectId: 'roomfinder-6288d',
    storageBucket: 'roomfinder-6288d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCIrXUtzloEinSdw2ssCTsTp7w5D6tjrA',
    appId: '1:946982287770:ios:b93f856817ab75e9f72223',
    messagingSenderId: '946982287770',
    projectId: 'roomfinder-6288d',
    storageBucket: 'roomfinder-6288d.appspot.com',
    iosBundleId: 'com.example.roomfinder',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCIrXUtzloEinSdw2ssCTsTp7w5D6tjrA',
    appId: '1:946982287770:ios:b93f856817ab75e9f72223',
    messagingSenderId: '946982287770',
    projectId: 'roomfinder-6288d',
    storageBucket: 'roomfinder-6288d.appspot.com',
    iosBundleId: 'com.example.roomfinder',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBdjiWnJ2gnAxulY3HIEWOHHkgPj8ik4Z4',
    appId: '1:946982287770:web:bf8fd5ae39a8720cf72223',
    messagingSenderId: '946982287770',
    projectId: 'roomfinder-6288d',
    authDomain: 'roomfinder-6288d.firebaseapp.com',
    storageBucket: 'roomfinder-6288d.appspot.com',
    measurementId: 'G-BCCC2CLYPC',
  );
}
