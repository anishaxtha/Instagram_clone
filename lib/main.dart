import 'package:flutter/material.dart';
import 'package:ig_clone/firebase_options.dart';
import 'package:ig_clone/screens/auth/login_screen.dart';
import 'package:ig_clone/screens/home_screen.dart';
import 'package:ig_clone/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_picture_uploader/firebase_picture_uploader.dart';
import 'package:firebase_storage/firebase_storage.dart';

//import 'package:ig_clone/firebase_options.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: "Instagram",
      theme: ThemeData(
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xFFfb0070),
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
          ),
        ),
      ),
     // splashScreen:SplashScreen(),
      home: SplashScreen(),
      
      
    );
    
  }
}
