import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'front_end/figma_project/cake.dart';
import 'front_end/figma_project/sign_up.dart';

class Gesture extends StatefulWidget {
  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
     body: SafeArea(
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(height: 50,),
             Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(
                 color: Colors.deepPurple.shade300,
                 shape: BoxShape.circle,
                 boxShadow: [
                   BoxShadow(
                     color: Colors.deepPurple.shade700,
                     blurRadius: 10,
                     spreadRadius: 1,
                     offset: Offset(4,4),
                   ),BoxShadow(
                     color: Colors.deepPurple.shade200,
                     blurRadius: 10,
                     spreadRadius: 1,
                     offset: Offset(-4,-4),
                   ),
                 ],
                 gradient: LinearGradient(
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,
                   colors: [Colors.deepPurple.shade200,Colors.deepPurple.shade700]
                 )
               ),
             ),

           ],
         ),
       ),
     ),
    );
  }
}
