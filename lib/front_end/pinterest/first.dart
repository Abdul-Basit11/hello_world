import 'package:flutter/material.dart';
import 'package:hello_world/front_end/pinterest/second.dart';
import 'package:hello_world/front_end/pinterest/small_container.dart';
import 'package:hello_world/front_end/pinterest/textlist.dart';

import 'boxlist.dart';

class First extends StatelessWidget {
  /// Places
  List places = [
    [
      'Places',
      true,
    ],
    ['Inspiration', false],
    ['Emotions', false],
  ];

  /// Mountain Details
  List mountain = [
    [
      'assets/images/mountain.jpg',
      'Cascade',
      Icons.location_on,
      'Canada,Bnoff'
    ],
    [
      'assets/images/mountain.jpg',
      'Cascade',
      Icons.location_on,
      'USA,California'
    ],
    ['assets/images/mountain.jpg', 'Cascade', Icons.location_on, 'Pakistan,K2'],
  ];



  List small=[
    [Colors.grey.shade400.withOpacity(0.4),'assets/images/satellite.png','Rocket'],
    [Colors.orange.shade300.withOpacity(0.4),'assets/images/balloons.png','Balloon'],
    [Colors.blue.shade300.withOpacity(0.4),'assets/images/parachuting.png','Paraschute'],
    [Colors.green.shade300.withOpacity(0.4),'assets/images/mountains.png','Hill Climb'],

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),

            /// app Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    child: Image.asset(
                      'assets/images/menu.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 35,
                      width: 35,
                      child: Image.asset(
                        'assets/images/mountain.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// Text
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                },
                child: Text(
                  'Discover',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            /// Text list
            SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              child: ListView.builder(
                  itemCount: places.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Textlist(
                      text: places[index][0],
                      istite: places[index][1],
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),

            /// container list:
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 2),
              child: Container(
                height: 220,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Boxlist(
                        ImagePath: mountain[index][0],
                        mountainname: mountain[index][1],
                        icon: mountain[index][2],
                        cityname: mountain[index][3],
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            /// Explore text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore more',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            /// small container
            SizedBox(
              height: 20
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 10),
              child: Container(
                height: 100,
                child: ListView.builder(
                    itemCount: small.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Smallcontainer(
                        Color: small[index][0],
                        ImagePath: small[index][1],
                        text: small[index][2],
                      );
                    }),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade300,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu,),label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Persons'),
        ],
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
