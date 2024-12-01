import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDly34yhQ3B8xJrMRSKa3sM6_yQQliR60w",
            authDomain: "financer-5a915.firebaseapp.com",
            projectId: "financer-5a915",
            storageBucket: "financer-5a915.appspot.com",
            messagingSenderId: "739446656647",
            appId: "1:739446656647:web:1c55bc4529478a936c7222",
            measurementId: "G-WD0W3XP960"));
  } else {
    await Firebase.initializeApp();
  }
}
