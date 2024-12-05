import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:unititled11/pages/wrapper.dart';
void main() async {
  // Correct method name for ensuring widget binding initialization
  WidgetsFlutterBinding.ensureInitialized();

  // Correcting the Firebase initialization syntax
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyB0xOL2zHQaW7epJ98F3iNi9rw3AxCYs5Q",
      appId: "1:108880059619:web:5e5d1c8b02fca33541b9d6",
      messagingSenderId: "108880059619",
      projectId: "flutter-web-connection-fce85",
    ),
  );

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    ),
  );
}
