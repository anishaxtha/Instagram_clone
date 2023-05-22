 import 'package:firebase_auth/firebase_auth.dart';
 import 'package:flutter/material.dart';
 import '../pages/anjali_profile.dart';
import '../pages/page1.dart';
import '../screens/auth/login_screen.dart';
 import '../pages/page3.dart';
 import '../pages/page2.dart';
 import '../pages/page4.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
 
 ImageUploadScreen(),
  const AddPostScreen(),
  //const Text('notifications'),
   ProfileScreen(
      uid: FirebaseAuth.instance.currentUser!.uid,
    ),
];