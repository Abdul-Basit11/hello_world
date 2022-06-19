import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/front_end/figma_dry/welcome_dry.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              /// main Container orange.
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade800,
                          blurRadius: 3,
                          offset: Offset(2, 2))
                    ],
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(180)),
                    color: Color(0xffFEB74C)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),

                      /// first text
                      Text(
                        'Welcome To \n maachao',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),

                      /// sec text
                      Text(
                        '#1 All in one Party Services App',
                        style: TextStyle(fontSize: 17),
                      ),

                      SizedBox(
                        height: 25,
                      ),

                      /// images
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Welcomedry(ImagePath: 'assets/images/figma_burger.png'),
                                Welcomedry(ImagePath: 'assets/images/figma_drink.png'),
                                Welcomedry(ImagePath: 'assets/images/figma_cloth.png'),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Welcomedry(ImagePath: 'assets/images/figma_camera.png'),
                                Welcomedry(ImagePath: 'assets/images/figma_celebration.png'),
                                Welcomedry(ImagePath: 'assets/images/figma_singing.png'),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Welcomedry(ImagePath: 'assets/images/figma_greeting.png'),
                                Welcomedry(ImagePath: 'assets/images/figma_parcel.png'),
                                Welcomedry(ImagePath: 'assets/images/figma_cakee.png'),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Let's.maachao ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),

                    /// divider.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 2,
                          color: Colors.black,
                        ),
                        Text(
                          'sign in with',
                          style: TextStyle(fontSize: 18),
                        ),
                        Container(
                          width: 50,
                          height: 2,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    /// Button.
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
                              border: Border.all(color: Colors.blue.shade800)),
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
                                child: Image.asset('assets/images/google.png'),
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFEACA),
                          border: Border.all(color: Color(0xffFEB74C))),
                      child: Text(
                        'Start with email or phone',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Already have an account? sign in ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
