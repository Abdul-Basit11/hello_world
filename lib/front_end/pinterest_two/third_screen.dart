import 'package:flutter/material.dart';
import 'package:hello_world/front_end/pinterest_two/third_scrn_dry.dart';

class Thirdscreen extends StatelessWidget {
  const Thirdscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff874FCF),
        ),
        centerTitle: true,
        title: Text(
          'LOG IN',
          style: TextStyle(color: Color(0xff874FCF)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            ///text
            Center(
                child: Text(
              'Learning App',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff874FCF),
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 40,
            ),

            /// text
            Text(
              'Enter Your Log in details to accessyour account',
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff8C57D1),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),

            /// facbook and google,
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff1C04F5),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          height: 30,
                        ),
                        Text(
                          'Google',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffDB4A39),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ],
            ),

            /// containers
            SizedBox(
              height: 35,
            ),
            Thirdscrndry(
              text: 'Email',
              Color: Color(0xff874FCF),
            ),
            SizedBox(
              height: 20,
            ),
            Thirdscrndry(
              text: 'Password',
              Color: Color(0xff874FCF),
            ),
            SizedBox(
              height: 15,
            ),

            /// remember, password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Remember Me?',
                      style: TextStyle(color: Color(0xff874FCF)),
                    ),
                  ],
                ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color(0xffDB4A39)),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff874FCF)),
              child: Center(
                child: Text(
                  'Log in with your account',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: RichText(text: TextSpan(children: [
                TextSpan(text: 'Don''t have an Account?',style: TextStyle(color: Colors.black),),
                TextSpan(text: 'Create account',style: TextStyle(color: Colors.blue.shade800),),
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
