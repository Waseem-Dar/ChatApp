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
    apiKey: 'AIzaSyDw_sXIYGVTqC_zLx6PqsgKpkRwVQ6-cZ8',
    appId: '1:984580318463:web:7a9ce6893e9798c6c958ca',
    messagingSenderId: '984580318463',
    projectId: 'spher-e5060',
    authDomain: 'spher-e5060.firebaseapp.com',
    storageBucket: 'spher-e5060.appspot.com',
    measurementId: 'G-7LRSGTRVER',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVGsW6No1ciDruHoU5HgCmKyz1rjtPLgs',
    appId: '1:984580318463:android:494efb65fc387f8ac958ca',
    messagingSenderId: '984580318463',
    projectId: 'spher-e5060',
    storageBucket: 'spher-e5060.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9xYXpsoT5ZtuHvQRg06IlJNDAcP0TPhQ',
    appId: '1:984580318463:ios:c84bdf9251dd9a0bc958ca',
    messagingSenderId: '984580318463',
    projectId: 'spher-e5060',
    storageBucket: 'spher-e5060.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

}