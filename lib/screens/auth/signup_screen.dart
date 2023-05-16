import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../components/button.dart';
import '../../components/square_tile.dart';
import '../../components/textfield.dart';
import '../home_screen.dart';

class SignInScreen extends StatefulWidget {
const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // when pressed login screen
  void onLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      ),
    );
  }

  final usernameController =TextEditingController();
  final passwordController =TextEditingController();
  void SignUserIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: usernameController.text, 
      password: passwordController.text
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login to Instagram"),
        centerTitle: true,
      ),
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

                
          
                //text
          Text("SignIn Page",
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
          button(
            onTap: onLogin,
            onPressed: (){},
            
          ),
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
              squaretile(imagepath: 'images/phone.png'),
           SizedBox(
           width:10 ,
        ),
               //apple
               squaretile(imagepath: 'images/google_logo.png'),
         
               ],) , 
               
               SizedBox(
                height:10
               ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            // Text("Not a Member?"),
            // SizedBox(
            //   width:10 ,
            // ),
            Text("Register Now",
            style:TextStyle(color:Colors.blue)),
      
          ],)
                //not a member ?register now
          
              ],
              
              
            ),
            
          ),
        ),
      ),
    );
  }
}
