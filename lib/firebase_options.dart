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
    apiKey: 'AIzaSyDch2ajHvPkzM0oW7QwjhzvA0tDqylxVGs',
    appId: '1:90661442426:web:3256308801f557cdb33cc3',
    messagingSenderId: '90661442426',
    projectId: 'perfect-maid-97dd0',
    authDomain: 'perfect-maid-97dd0.firebaseapp.com',
    storageBucket: 'perfect-maid-97dd0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwEncRU9TiVQnFXWFNpCBeyEsf81rf2gw',
    appId: '1:90661442426:android:fe93bf6bc4be07e0b33cc3',
    messagingSenderId: '90661442426',
    projectId: 'perfect-maid-97dd0',
    storageBucket: 'perfect-maid-97dd0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClwUu1lUmqKBpnCZLCtXwz5nS2oGjbndI',
    appId: '1:90661442426:ios:a32f0425f7906812b33cc3',
    messagingSenderId: '90661442426',
    projectId: 'perfect-maid-97dd0',
    storageBucket: 'perfect-maid-97dd0.appspot.com',
    iosClientId: '90661442426-khjc8k8dck2lajssgd26pk2sb2ium476.apps.googleusercontent.com',
    iosBundleId: 'dennie.com.perfectMaid',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClwUu1lUmqKBpnCZLCtXwz5nS2oGjbndI',
    appId: '1:90661442426:ios:6af2569b57478142b33cc3',
    messagingSenderId: '90661442426',
    projectId: 'perfect-maid-97dd0',
    storageBucket: 'perfect-maid-97dd0.appspot.com',
    iosClientId: '90661442426-e3gr25bv634lceu6tug78i1pbbgncn0j.apps.googleusercontent.com',
    iosBundleId: 'dennie.com.perfectMaid.RunnerTests',
  );
}
