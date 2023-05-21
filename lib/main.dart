import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/firebase_options.dart';
import 'package:ig_clone/pages/page3.dart';
import 'package:ig_clone/pages/page4.dart';
import 'package:ig_clone/responsive/mobile_screen_layout.dart';
import 'package:ig_clone/responsive/web_screen_layout.dart';
import 'package:ig_clone/screens/auth/login.dart';
import 'package:ig_clone/screens/auth/login_screen.dart';
import 'package:ig_clone/screens/home_screen.dart';
import 'package:ig_clone/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_picture_uploader/firebase_picture_uploader.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:provider/provider.dart';
import '../provider/user_provider.dart';
import '../responsive/responsive_layout.dart';
import 'package:ig_clone/firebase_options.dart';



// void main() async {
//    WidgetsFlutterBinding.ensureInitialized();
//    await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform);// dont include "options: DefaultFirebaseOptions.currentPlatform" if you havn't used Flutter Fire
//    runApp(MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => UserProvider(),),
//       ],
//       child: MaterialApp(
//     //return MaterialApp(
//       title: "Instagram",
//       theme: ThemeData(
//         useMaterial3: true,
//         textButtonTheme: TextButtonThemeData(
//           style: TextButton.styleFrom(
//             foregroundColor: Colors.white,
//             backgroundColor: const Color(0xFFfb0070),
//             padding:
//                 const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
//           ),
//         ),
//       ),
//      // splashScreen:SplashScreen(),
//       home: FeedScreen(),
      
      
//     )
//     );
    
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../provider/user_provider.dart';
// import 'package:instagram_clone_flutter/responsive/mobile_screen_layout.dart';
// import 'package:instagram_clone_flutter/responsive/responsive_layout.dart';
// import 'package:instagram_clone_flutter/responsive/web_screen_layout.dart';
import '../screens/auth/login_screen.dart';
import '../utils/colors.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  

  // initialise app based on platform- web or mobile
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
   apiKey: 'AIzaSyAhJfahoahfRNK2Dv4K-lVvx2jtz3vATOk',
    appId: '1:174566426839:web:991689ce035230551b4892',
    messagingSenderId: '174566426839',
    projectId: 'instagramproject-e6ec7',
    authDomain: 'instagramproject-e6ec7.firebaseapp.com',
    storageBucket: 'instagramproject-e6ec7.appspot.com',
    measurementId: 'G-4STB6NGT3D',
  )
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        // theme: ThemeData.dark().copyWith(
        //   //scaffoldBackgroundColor: mobileBackgroundColor,
        // ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            
             if (snapshot.connectionState == ConnectionState.active) {
              // Checking if the snapshot has any data or not
              if (snapshot.hasData) {
                // if snapshot has data which means user is logged in then we check the width of screen and accordingly display the screen layout
                return const SplashScreen(
                  //mobileScreenLayout: MobileScreenLayout(),
                //  webScreenLayout: WebScreenLayout(),
                );
              }
            }

            // means connection to future hasnt been made yet
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return const SplashScreen();
          },
        ),
      ),
    );
  }
}
