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
    apiKey: 'AIzaSyBiaauNxVyfTfbvpzUf3p8ul4Oz3dBb_Dc',
    appId: '1:608830968984:web:2176c0aefd8ac315986ced',
    messagingSenderId: '608830968984',
    projectId: 'elite-one-mobile',
    authDomain: 'elite-one-mobile.firebaseapp.com',
    storageBucket: 'elite-one-mobile.appspot.com',
    measurementId: 'G-P3M2S2BBQQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBFz7VvT89_JD94_4TtuEm2QnmUMBfs4xI',
    appId: '1:608830968984:android:c4e615f64efccc97986ced',
    messagingSenderId: '608830968984',
    projectId: 'elite-one-mobile',
    storageBucket: 'elite-one-mobile.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC68tO269LP8mG0wDQ1d5ncztcXZsPZ_GU',
    appId: '1:608830968984:ios:eacdf4a323e7aaa9986ced',
    messagingSenderId: '608830968984',
    projectId: 'elite-one-mobile',
    storageBucket: 'elite-one-mobile.appspot.com',
    iosClientId: '608830968984-okjgtu26v93v5futvgbaqkb3a3se7i7c.apps.googleusercontent.com',
    iosBundleId: 'dev.baimamboukar.eliteone',
  );
}
