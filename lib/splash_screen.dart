import 'package:flutter/material.dart';
import 'package:ig_clone/screens/auth/login.dart';
// import 'package:ig_clone/screens/auth/login_screen.dart';
// import 'package:ig_clone/screens/home_screen.dart';
import '../../components/button.dart';
import '../../components/square_tile.dart';
import '../../components/textfield.dart';
//import '../home_screen.dart';

class SplashScreen extends StatefulWidget {
const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
void initState() {
  super.initState();
  _navigatetohome();
}

_navigatetohome()async {
  await Future.delayed(Duration(milliseconds: 2000),(){});
  Navigator.pushReplacement(context,
   MaterialPageRoute(
    builder: ((context) =>LoginScreen() ))
    );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              children:[
              SizedBox(
                height: 50,
              ),
                //logo
               // Icon(Icons.facebook,size: 100,color: Colors.blue,),
               Image.asset("images/insta.png",height: 100,width: 100),

               SizedBox(
                height: 500,
               ),

               Text("By Meta")

              ],
              
              
            ),
            
          ),
        ),
      ),
    );
  }
}
