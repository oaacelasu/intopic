// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform, kIsWeb;

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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      // ignore: no_default_cases
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAitjxP6k8gFfszkc-bDml8ipbE95JUXq0',
    appId: '1:1007092711368:android:e5095523e5e421b0028afd',
    messagingSenderId: '1007092711368',
    projectId: 'intopic-a2405',
    storageBucket: 'intopic-a2405.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0xmXLGoxkjb8UWeC903xjj8S0llyyYcA',
    appId: '1:1007092711368:ios:7ba3eec04dc32203028afd',
    messagingSenderId: '1007092711368',
    projectId: 'intopic-a2405',
    storageBucket: 'intopic-a2405.appspot.com',
    androidClientId: '1007092711368-hr56va9q8ub5vl71nrl75r9cpvup92lq.apps.googleusercontent.com',
    iosClientId: '1007092711368-7e1nl60hr44aukrvns8nibgb1uu4bnl1.apps.googleusercontent.com',
    iosBundleId: 'com.example.intopic',
  );
}
