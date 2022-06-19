import 'package:flutter/material.dart';

class Sim extends StatelessWidget {
  const Sim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffABF8E7),
                  Color(0xff8778C7),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 160,
                    ),
                    CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xff8778C7),
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 50,
                        ))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 320,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none, children: [
                    Positioned(
                      child: Container(
                        //margin: EdgeInsets.only(left: 20,right: 20),
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0.5, 0.5),
                          )
                        ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Center(
                                  child: Text(
                                'L0GIN',
                                style: TextStyle(fontSize: 22),
                              )),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.blue.shade800),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'my@gmail.com',
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.blue.shade800),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'my@gmail.com',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      bottom: 100,
                      right: 20,
                      left: 20,
                    ),
                    Positioned(
                      bottom: 85,
                      left: 50,
                      right: 50,
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Color(0xff8778C7),
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 100,
                      right: 100,
                      child: Text('FORGOT PASSWORD ?',
                        style: TextStyle(color: Colors.grey),),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
