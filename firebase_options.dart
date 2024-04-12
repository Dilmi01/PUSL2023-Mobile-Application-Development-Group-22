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
    apiKey: 'AIzaSyBtRkCRxquERbiXkF8Ynk5hkAcBShz9iR0',
    appId: '1:66770320689:web:d1f567fa2b20d2a5d6c410',
    messagingSenderId: '66770320689',
    projectId: 'coursework-43d5e',
    authDomain: 'coursework-43d5e.firebaseapp.com',
    storageBucket: 'coursework-43d5e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1qTGsODCNNpzz7dETOY-_aHjnpzoT0cQ',
    appId: '1:66770320689:android:bc8468b26c9608f7d6c410',
    messagingSenderId: '66770320689',
    projectId: 'coursework-43d5e',
    storageBucket: 'coursework-43d5e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBiPvj4Kq9ev10__K2GRVelD0XM1dH1a4',
    appId: '1:66770320689:ios:a65105a70ba8c6e9d6c410',
    messagingSenderId: '66770320689',
    projectId: 'coursework-43d5e',
    storageBucket: 'coursework-43d5e.appspot.com',
    iosBundleId: 'com.example.courseworkApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCBiPvj4Kq9ev10__K2GRVelD0XM1dH1a4',
    appId: '1:66770320689:ios:a65105a70ba8c6e9d6c410',
    messagingSenderId: '66770320689',
    projectId: 'coursework-43d5e',
    storageBucket: 'coursework-43d5e.appspot.com',
    iosBundleId: 'com.example.courseworkApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBtRkCRxquERbiXkF8Ynk5hkAcBShz9iR0',
    appId: '1:66770320689:web:39fcaa907b6d1b66d6c410',
    messagingSenderId: '66770320689',
    projectId: 'coursework-43d5e',
    authDomain: 'coursework-43d5e.firebaseapp.com',
    storageBucket: 'coursework-43d5e.appspot.com',
  );

}