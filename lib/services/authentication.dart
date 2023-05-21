import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/splash_screen.dart';

import '../screens/auth/login.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../screens/home_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StreamBuilder(
        stream:FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {

          //user is logged in 
          if(snapshot.hasData)
          {
            return  HomeScreen();
          }
          else
          {
            return  SignupScreen();

          }
        },
        )
    );
  }
}
