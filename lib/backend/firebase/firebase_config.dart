import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBXii7G-9em-T_fwMeLP5GuxrIRjek0F14",
            authDomain: "n-c-u-i-ride-app-tutori-n4s86d.firebaseapp.com",
            projectId: "n-c-u-i-ride-app-tutori-n4s86d",
            storageBucket: "n-c-u-i-ride-app-tutori-n4s86d.appspot.com",
            messagingSenderId: "151086212465",
            appId: "1:151086212465:web:7ddf8bf44a487c890d82d0"));
  } else {
    await Firebase.initializeApp();
  }
}
