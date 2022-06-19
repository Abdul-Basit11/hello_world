import 'package:flutter/material.dart';

class Forth extends StatelessWidget {
  const Forth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(
              'Learning App',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff874FCF),
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/online.png',
              height: 200,
            ),
            Text(
              'Select Your course level',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff874FCF),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: Color(0xff874FCF),
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    'Beginner',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xff874FCF))),
                  child: Text(
                    'Intermidate',
                    style: TextStyle(color: Color(0xff874FCF)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xff874FCF))),
                  child: Text(
                    'Expert',
                    style: TextStyle(color: Color(0xff874FCF)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Are you Sure.?',
                  style: TextStyle(color: Color(0xff874FCF)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Color(0xff874FCF),
                borderRadius: BorderRadius.circular(18)
              ),
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
