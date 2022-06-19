import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fifth_dry.dart';

class Fifth extends StatelessWidget {
  const Fifth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home',
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
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'WELCOME BACK JOHN DOE',
              style: TextStyle(
                fontSize: 35,
                color: Color(0xff874FCF),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                      color: Color(0xff874FCF),
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    'Book Class',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                      color: Color(0xff874FCF),
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    'My Class',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Last Classes',
              style: TextStyle(color: Color(0xff874FCF), fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  /// main Container
                  Fifthdry(
                    ImagePath: 'assets/images/art.png',
                    text1: 'Arts and Humanities',
                    text2: 'Draw and paint Arts',
                    text3: '2h 25min',
                  ),Fifthdry(
                    ImagePath: 'assets/images/program.png',
                    text1: 'Computer & techno;ogy',
                    text2: 'Programming',
                    text3: '7h 2min',
                  ),
                ],
              ),
            ),
          ],
        ),
      ), bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.grey,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.grey),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.class_outlined,color: Color(0xff874FCF),),label: 'My Class'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outlined,color: Color(0xff874FCF),),label: 'Account'),
      ],
    )

    );
  }
}
