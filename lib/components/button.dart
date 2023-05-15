import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class button extends StatelessWidget {
   final Function()? onTap;
  
  const button({super.key,
  required this.onTap, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap:onTap ,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin:EdgeInsets.symmetric(horizontal:25) ,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
          
        ),
        child: Center(
          child: Text('Log In',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight:FontWeight.bold
            ),)),
      ),
    );
    
  }
}