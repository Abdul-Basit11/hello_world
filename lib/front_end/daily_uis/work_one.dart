import 'package:flutter/material.dart';
class Workui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.blue.shade600]),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.home,
                      color: Colors.blue.shade800,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 330,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none, children: [
                    Positioned(
                      child: Container(
                        constraints:BoxConstraints(maxWidth:320 ),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        height: 280,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  offset: Offset(0.3, 0.3))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                  child: Text(
                                'Log In',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              )),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade800),
                              ),
                              TextFormField(
                                decoration:
                                    InputDecoration(hintText: 'user@gmail.com'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade800),
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      bottom: 100,
                    ),
                    Positioned(
                      bottom: 80,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.blue.shade800,
                          onPressed: () {},
                          child: Text(
                            'Log In',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter*0.7,
                      child: Text(
                        'FORGOT PASSWORD ?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),

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
