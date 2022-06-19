import 'package:flutter/material.dart';

class Loggin extends StatelessWidget {
  const Loggin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/background.png'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 625,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment(0.6,0),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.black,blurRadius: 1)
                          ],
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'E-Mail',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Your email or phone',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),

                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextField(

                        obscuringCharacter: '.',

                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 14,horizontal: 12),
                            suffix: Icon(
                              Icons.visibility,color: Colors.grey,
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),

                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),

                            ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                          )
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                          child: Text(
                        'Fogot password',
                        style: TextStyle(color: Color(0xffFEB74C)),
                      )),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Color(0xffFEB74C),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.2,
                              vertical: 15),
                          onPressed: () {},
                          child: Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dont have an account  '),
                          Text(
                            'Sign Up',
                            style: TextStyle(color: Color(0xffFEB74C)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 2,
                            width: 70,
                            color: Colors.grey,
                          ),
                          Text(
                            'Sign in with',
                            style: TextStyle(color: Colors.black),
                          ),
                          Container(
                            height: 2,
                            width: 70,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  child:
                                      Image.asset('assets/images/facebook.png'),
                                ),
                                Text('FACEBOOK'),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.blue.shade800)),
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  child:
                                      Image.asset('assets/images/google.png'),
                                ),
                                Text('Google'),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.red.shade800)),
                          )),
                        ],
                      ),
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
