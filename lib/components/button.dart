import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BgButton extends StatelessWidget {
   final Function()? onTap;
   final String label;
  
  const BgButton({super.key,required this.label,
  required this.onTap});

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
          child: Text(label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight:FontWeight.bold
            ),)),
      ),
    );
    
  }
}