import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class divider extends StatelessWidget {
  const divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    children:  [Expanded(
        child:Divider(
          thickness: 0.5,
          color: Colors.grey[500],


        ), 
      ),
      Text("or continue with"),
      Expanded(
        child:Divider(
          thickness: 0.5,
          color: Colors.grey[500],


        ), 
      )
    ]
    );
  }
}