//Upload Photo
import 'package:flutter/material.dart';
import '../../components/page3_helper.dart';
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      centerTitle :true,
     actions: [
      IconButton(
         icon: Icon(
          Icons.camera_enhance_rounded,
          color:Colors.black,
         ),
        onPressed: null,

       ),
       
     ],
     title:RichText(text: TextSpan(
      text: 'Social',
      style:TextStyle(
        color:Colors.black,
        fontWeight:FontWeight.bold,
        fontSize: 20.0,

      ),
      children:<TextSpan> [
        TextSpan(
          text:'Feed',
          style:TextStyle(
            color:Colors.purple,
        fontWeight:FontWeight.bold,
        fontSize: 20.0,

          )
        )
      ]
     ))
     
    ),
  
  
  
  

       
        
     // appBar:Provider.of<FeedHelper>(context,listen:false).appBar(context), 
      body: SafeArea
      
      (child: 
      Center(
       
       
        
      )
      ),
    );
  }
}