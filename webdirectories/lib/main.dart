import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webdirectories/MyHome.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDrcaRErNxL1GhUvMj4Cx6f0r9eKDwCgko",
            authDomain: "web-directories.firebaseapp.com",
            projectId: "web-directories",
            storageBucket: "web-directories.appspot.com",
            messagingSenderId: "853657273198",
            appId: "1:853657273198:web:d5ebc0dbaecd2023ff377f"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHome(),
    );
  }
}
