import 'package:flutter/material.dart';
class textfield extends StatelessWidget {
  final Controller;
  final String hintText;
  final bool obscureText;
  
  const textfield({super.key,
  required this.Controller,
  required this.hintText,
  required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return 
       TextField(
        controller: Controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(
            color: Colors.grey.shade400,
           ),
           borderRadius:BorderRadius.circular(10),
           
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)
          ),
          fillColor:Colors.grey[200],
          filled:true,
          hintText: hintText,
          hintStyle:TextStyle(color:Colors.grey[500]),
        ),
          );
    
  }
}