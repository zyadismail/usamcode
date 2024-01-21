import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/auth/auth_gate.dart';
import 'package:splashscreen/pages/splashScreen/splashScreen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyD9yjCrf7Ysuvc4tIEi5bRnyRFLYSjUyNk",
        appId: "1:849724866525:android:eb78498aa6e3da15ca0034",
        messagingSenderId: "849724866525",
        projectId: "store-8f523",
        storageBucket: "store-8f523.appspot.com",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AuthGate(),
    );
  }
}






