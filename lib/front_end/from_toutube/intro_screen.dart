import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';

class IntroSscreen extends StatelessWidget {
  const IntroSscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/wal.jfif'),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '06:22 AM',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        height: 25,
                        width: 25,
                        child: Image.asset(
                          'assets/images/cloud.png',
                          color: Colors.orange.shade800,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '34`C',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Aug 1,2020 | Wednesday',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 20,),
                  Expanded(
                    child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/small_logo-removebg-preview.png'),
                                fit: BoxFit.contain)),
                      ),
                      Text(
                        'eWalle',
                        style: GoogleFonts.rubik(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Open An Account For \nDigital E-Wallet Solution,\nInstant Payouts\n\njoin for free',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                      ),
                    ),
                  ),
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                   },
                   child: Container(
                     padding: EdgeInsets.all(15),
                     decoration: BoxDecoration(
                       color: Colors.orange.shade600,
                       borderRadius: BorderRadius.circular(20)
                     ),
                     child: Center(
                       child: Row(
                         mainAxisAlignment:MainAxisAlignment.center,
                         children: [
                           Text('Sign Up'),
                           Icon(Icons.arrow_forward)
                         ],
                       ),
                     ),
                   ),
                 ),
                  SizedBox(height: 20,),
                  Center(child: Text('Create An Account',style: TextStyle(color: Colors.grey),))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
