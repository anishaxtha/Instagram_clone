import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class squaretile extends StatelessWidget {
 final String imagepath;
  const squaretile({super.key ,required this.imagepath,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        
        border: Border.all(color: Colors.white),
      color:Colors.grey[200],
      borderRadius: BorderRadius.circular(10.0),
       
      ),
      child:Image.asset(imagepath,
      height: 40,),
      

    );
  }
}




