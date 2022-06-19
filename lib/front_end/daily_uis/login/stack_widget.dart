import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stackwidget extends StatefulWidget {
  @override
  State<Stackwidget> createState() => _StackwidgetState();
}

class _StackwidgetState extends State<Stackwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/top_one.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                height: 450,
                width: 310,
                decoration: BoxDecoration(
                  //color: Color(0xffBDBDBD),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6,
                        offset: Offset(0.8, 0.8)),
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 6,
                        offset: Offset(-0.8, -0.8)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SIGN IN',
                        style: TextStyle(
                            color: Color(0xff333366),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                offset: Offset(2.0, 2.0),
                                spreadRadius: 3),
                          ]),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              hintText: 'Abdul Basit',
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color(0xff333366),
                                size: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                offset: Offset(2.0, 2.0),
                                spreadRadius: 3),
                          ]),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              hintText: 'Passsword',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey,
                                size: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        height: 45,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(),
                          color: Color(0xff333366),
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => Two()));
                          },
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey),
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: RichText(
                            text: TextSpan(
                                text: 'dont have an account?',
                                style: TextStyle(color: Colors.grey),
                                children: [
                              TextSpan(
                                  text: 'SIGN UP',
                                  style: TextStyle(
                                      color: Color(0xff333366),
                                      fontWeight: FontWeight.bold))
                            ])),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
