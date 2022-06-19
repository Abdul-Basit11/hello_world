import 'package:flutter/material.dart';
import 'package:hello_world/front_end/figma_dry/verification_dry.dart';

class Verificationcode extends StatelessWidget {
  const Verificationcode({Key? key}) : super(key: key);

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
                      Center(
                        child: Text(
                          'Verification Code',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Please type the verification code send to \n prelookstudio@gmail.com',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Verificationdry(text: ' 2',co: Colors.grey.shade400,),
                          Verificationdry(text: ' 2',co: Colors.grey.shade400,),
                          Verificationdry(text: ' |',co: Color(0xffFEB74C),),
                          Verificationdry(text: ' ',co: Colors.grey.shade400,),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("I don't receive a code!  ",style: TextStyle(fontWeight: FontWeight.bold,wordSpacing: 1.5),),
                          Text("Please resend",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffFEB74C),wordSpacing: 1.5),),
                        ],
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
