import 'package:flutter/material.dart';
import 'package:hello_world/front_end/pinterest_two/eight_dry.dart';

class Eight extends StatelessWidget {
  const Eight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Account',
          style: TextStyle(color: Color(0xff874FCF)),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff874FCF),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),

          /// User
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Row(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/img.png',
                      height: 80,
                    ),
                    borderRadius: BorderRadius.circular(120),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'User2gmail.com',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(color: Color(0xff874FCF), boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 5),
            ]),
            height: 160,
          ),
          SizedBox(
            height: 20,
          ),
          Eightdry(
            text1: 'Account Setting',
            icon: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 10,
          ),

          Eightdry(
            text1: 'Download Options',
            icon: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 10,
          ),

          Eightdry(
            text1: 'Notifications Setting',
            icon: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 20,
          ),
          Eightdry(
            text1: 'Priacy & Policy',
            icon: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 10,
          ),

          Eightdry(
            text1: 'Help Center',
            icon: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 10,
          ),
          Eightdry(
            text1: 'About Us',
            icon: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Delete Account',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                )),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xff874FCF)
              ),
              child: Center(
                child: Text('Log Out',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Color(0xff874FCF)),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.class_outlined,color: Color(0xff874FCF),),label: 'My Class'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined,color: Colors.grey,),label: 'Account'),
          ],
        )
    );
  }
}
