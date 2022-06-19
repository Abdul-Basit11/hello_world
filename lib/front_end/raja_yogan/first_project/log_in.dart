import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),

                /// Text.
                Text(
                  'HELLO',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'THERE',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '.',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade800),
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Email',
                  style: GoogleFonts.bebasNeue(
                      fontSize: 15, color: Colors.grey.shade600),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'SARAH@SPOTIFY',
                    hintStyle: GoogleFonts.bebasNeue(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: GoogleFonts.bebasNeue(
                        fontSize: 15, color: Colors.grey.shade600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade800,decoration: TextDecoration.underline,decorationColor: Colors.grey,decorationThickness: 2),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              child: Image.asset('assets/images/facebook.png')),
                          Text(
                            'Log in with facebook',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
              Center(
                child: RichText(text: TextSpan(children: [
                  TextSpan(text: 'New to Spotify?',style: TextStyle(color: Colors.black),),
                  TextSpan(text: 'Register',style: TextStyle(color: Colors.green.shade800),),
                ])),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
