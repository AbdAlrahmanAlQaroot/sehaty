import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA7pUf-wI8XG1I0KgwRfiv-i2bzbT5hvjo",
            authDomain: "sehaty-55f89.firebaseapp.com",
            projectId: "sehaty-55f89",
            storageBucket: "sehaty-55f89.appspot.com",
            messagingSenderId: "647266348483",
            appId: "1:647266348483:web:096e139097c10bb53fe176"));
  } else {
    await Firebase.initializeApp();
  }
}
