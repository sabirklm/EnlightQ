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
    apiKey: 'AIzaSyCVpYay87mjSl9KFEqzTj_y60oSpVAShk4',
    appId: '1:184570545081:web:50a6d486b8994d9e9e6c68',
    messagingSenderId: '184570545081',
    projectId: 'enlightq-ae9d4',
    authDomain: 'enlightq-ae9d4.firebaseapp.com',
    storageBucket: 'enlightq-ae9d4.appspot.com',
    measurementId: 'G-85F9QE1WL0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnERBxURHCT2eKn-cRkW_bYE26EYmI9GU',
    appId: '1:184570545081:android:135d0b1103081d559e6c68',
    messagingSenderId: '184570545081',
    projectId: 'enlightq-ae9d4',
    storageBucket: 'enlightq-ae9d4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXPahAsQlvzPgU2QgVW0au9zl6O6bRYis',
    appId: '1:184570545081:ios:35f7f21d2d040d799e6c68',
    messagingSenderId: '184570545081',
    projectId: 'enlightq-ae9d4',
    storageBucket: 'enlightq-ae9d4.appspot.com',
    iosClientId: '184570545081-00t3lkk136gf01jenp6lk4io8hb99vb7.apps.googleusercontent.com',
    iosBundleId: 'com.enlightq.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAXPahAsQlvzPgU2QgVW0au9zl6O6bRYis',
    appId: '1:184570545081:ios:35f7f21d2d040d799e6c68',
    messagingSenderId: '184570545081',
    projectId: 'enlightq-ae9d4',
    storageBucket: 'enlightq-ae9d4.appspot.com',
    iosClientId: '184570545081-00t3lkk136gf01jenp6lk4io8hb99vb7.apps.googleusercontent.com',
    iosBundleId: 'com.enlightq.app',
  );
}
