 import 'package:firebase_auth/firebase_auth.dart';
 import 'package:flutter/material.dart';
 import '../screens/auth/login_screen.dart';
 import '../pages/page3.dart';
 import '../pages/page4.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  //const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications'),
  //  ProfileScreen(
  //    uid: FirebaseAuth.instance.currentUser!.uid,
  //  ),
];