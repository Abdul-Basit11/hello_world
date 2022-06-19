import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/front_end/figma_project/welcome_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: AnimatedSplashScreen(
          backgroundColor: Color(0xffFEB74C),
          nextScreen: Welcomescreen(),
          splash: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Maachao',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              Image.asset('assets/images/maachao.png')
            ],
          ),
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}
