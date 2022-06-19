import 'package:flutter/material.dart';
import 'package:hello_world/front_end/pinterest_two/sixth_dry.dart';
import 'package:hello_world/front_end/pinterest_two/sixth_sec_dry.dart';

class Sixth extends StatelessWidget {
  const Sixth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Book Yours Classes',
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
            height: 20,
          ),
          /// 1 listview top
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                /// main Container
                Sixthdry(
                    ImagePath: 'assets/images/art.png',
                    text1: 'Art and Humanities',
                    text2: '12 Course'),
                Sixthdry(
                    ImagePath: 'assets/images/program.png',
                    text1: 'Computer & technology',
                    text2: '14 Course'),
                Sixthdry(
                    ImagePath: 'assets/images/art.png',
                    text1: 'Law & politics',
                    text2: '5 Course'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          /// Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select class',
                      style: TextStyle(color: Color(0xff874FCF), fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: Color(0xff874FCF),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          Text(
                            'Arts & Humanities',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Class Type',
                      style: TextStyle(color: Color(0xff874FCF), fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: Color(0xff874FCF),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          Text(
                            'Group Study',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 19,
          ),
          /// align text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Arts & Humanities',
                  style: TextStyle(color: Color(0xff874FCF), fontSize: 19),
                )),
          ),

          /// 2 listview
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                /// main Container
                Sixthsecdry(
                    ImagePath: 'assets/images/art.png',
                    textone: 'Art and Humanities',
                    texttwo: '12 Course'),
                Sixthsecdry(
                    ImagePath: 'assets/images/program.png',
                    textone: 'Computer & technology',
                    texttwo: '14 Course'),
                Sixthsecdry(
                    ImagePath: 'assets/images/art.png',
                    textone: 'Law & politics',
                    texttwo: '5 Course'),
              ],
            ),
          ),
            SizedBox(height: 20,),
          /// chectbox row
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                ),
                SizedBox(width: 10,),
                Text('Are you sure with selected class.?',
                  style: TextStyle(color: Color(0xff874FCF)),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          /// button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Container(
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
          ),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
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
