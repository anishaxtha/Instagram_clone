import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../components/button.dart';
import '../../components/divider.dart';
import '../../components/textfield.dart';
import '../components/divider.dart';
import '../components/square_tile.dart';

class login extends StatelessWidget {
   login({super.key});

  ///text editing controller
  final usernameController =TextEditingController();
  final passwordController =TextEditingController();

//button
void SignUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children:[
            SizedBox(
              height: 50,
            ),
              //logo
              Icon(Icons.facebook,size: 100,color: Colors.blue,),
        
              //text
        Text("Welcome to facebook.com",
        style: TextStyle(
          fontSize: 16,
          //fontWeight:FontWeight.bold,
          color:Colors.grey[700],
      
        )),
        SizedBox(height: 25,),
              //username_textfield
         textfield(
          Controller: usernameController,
          hintText: 'Username',
          obscureText: false,
         ),
              //password_textfield
              SizedBox(
                height: 10
                ),
        textfield(
          Controller:passwordController ,
          hintText: 'Password',
          obscureText: true,
        ),
        SizedBox(
                height: 10
                ),
              //forget password?
        Row(
           mainAxisAlignment:MainAxisAlignment.center,
          children: [
           
            Text("forgot password?",
            style: TextStyle(color: Colors.blue,
            ),
            ),
          ],
        ),
        SizedBox(
                height: 25
                ),
              //sign_in_button
        // button(
        //   onTap: SignUserIn,
        // ),
        SizedBox(
          height:20,
        ),
              //or continue with

       
         //google + apple sign in button or
         SizedBox(
     height:30 ,
      ),
           Row(
             mainAxisAlignment:MainAxisAlignment.center,
             children: [
           
             //google
            squaretile(imagepath: 'lib/images/apple_logo.png'),
     SizedBox(
     width:10 ,
      ),
             //apple
             squaretile(imagepath: 'lib/images/google_logo.png'),
   
             ],) , 
             
             SizedBox(
              height:10
             ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          Text("Not a Member?"),
          SizedBox(
            width:10 ,
          ),
          Text("Register Now",
          style:TextStyle(color:Colors.blue)),

        ],)
              //not a member ?register now
        
            ],
            
            
          ),
          
        ),
      ),

    );

  }
}


/*
import 'package:flutter/material.dart';
import '../home_screen.dart';

class LoginScreen extends StatefulWidget {
const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // when pressed login screen
  void onLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login to Instagram"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  onLogin();
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/