import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Firstone extends StatefulWidget {
  const Firstone({Key? key}) : super(key: key);

  @override
  State<Firstone> createState() => _FirstoneState();
}

class _FirstoneState extends State<Firstone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_android_outlined,size: 80,),
                SizedBox(
                  height: 50,
                ),

                ///first text
                Text(
                  'Hello Again !',
                  style: GoogleFonts.bebasNeue(fontSize: 40,fontWeight: FontWeight.bold)
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),

                ///email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Email'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                ///password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: TextField(
                        cursorColor: Colors.grey.shade700,
                        obscuringCharacter: '*',
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',

                        ),
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 10,),
                ///sign in button
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                   child: Container(
                     padding: EdgeInsets.all(18),
                     decoration: BoxDecoration(
                       color: Colors.deepPurple,
                       borderRadius: BorderRadius.circular(12)
                     ),
                     child: Center(
                       child: Text('Sign In',style: TextStyle(
                         color: Colors.white,fontWeight: FontWeight.bold
                       ),),
                     ),
                   ),
                 ),
                SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Not a member?',style: TextStyle(
                      fontWeight: FontWeight.bold
                   ),),
                   Text('Register now',style: TextStyle(
                       color: Colors.blue,fontWeight: FontWeight.bold
                   ),),
                 ],
               ),
             ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
