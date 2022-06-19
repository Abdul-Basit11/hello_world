import 'package:flutter/material.dart';

class Beetwo extends StatelessWidget {
  const Beetwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20,
            right: 100,
            left: 100,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/cup.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Text(
                  'deeps',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'B E E R C A F E',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Expanded(
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffFFF01D),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer faucibus ante euismod interdum interdum.',
                        textAlign: TextAlign.justify,
                        textScaleFactor: 1.3,
                        maxLines: 3,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                color:Colors.black,
                                onPressed: () {},
                                child: Text('Sign In',style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Container(
                              height: 40,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                color:Colors.white,
                                onPressed: () {},
                                child: Text('Sign Up',style: TextStyle(color: Colors.black),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
