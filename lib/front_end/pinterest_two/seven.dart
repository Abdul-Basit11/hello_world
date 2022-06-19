import 'package:flutter/material.dart';
import 'package:hello_world/front_end/pinterest_two/seven_dry.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Seven extends StatelessWidget {
  const Seven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Classes',
          style: TextStyle(color: Color(0xff874FCF)),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff874FCF),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Sevendry(
              ImagePath: 'assets/images/art.png',
              txt1: 'Arts And Humanities',
              txt2: 'Draw and paint Arts ',
              txt3: '40% complete',
            ),
            SizedBox(height: 20,),
            Sevendry(
              ImagePath: 'assets/images/laww.png',
              txt1: 'Arts And Humanities',
              txt2: 'Business & Law ',
              txt3: '40% complete',
            ),
          ],
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Color(0xff874FCF)),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.class_outlined,color:Colors.grey ,),label: 'My Class'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined,color: Color(0xff874FCF),),label: 'Account'),
          ],
        )
    );
  }
}
