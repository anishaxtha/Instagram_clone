//Upload Photo
import 'package:flutter/material.dart';

class FeedHelper extends ChangeNotifier {
 // ConstantColors constantColors = ConstantColors();

  
  Widget appBar(BuildContext context, {required bool centerTitle}) {
    return AppBar(
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
     
    );
  }
}
