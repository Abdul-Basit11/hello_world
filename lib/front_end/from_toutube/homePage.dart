import 'package:flutter/material.dart';

import 'homepage_dry.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/small_logo-removebg-preview.png'))),
                ),
                Text(
                  'eWalle',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'Accouunt Overview',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),

            ///grey COntainer.
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '20,600',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('Current Balance')
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange.shade500),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            ///Send Money.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Send Money',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/scanner.png'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),

            ///main listView Container.
            Container(
              height: 140,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ///circle
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange.shade500),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  ///1 list COntainer
                  Homepagedry(
                    ImagePath: 'assets/images/girrly.jpg',
                    text: 'Milly',
                  ),
                  Homepagedry(
                    ImagePath: 'assets/images/umair.JPG'
                        '',
                    text: 'Umair',
                  ),
                  Homepagedry(
                    ImagePath: 'assets/images/cat.jpg',
                    text: 'kitti',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.drag_indicator_sharp)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                children: [
                  serviceWidget('credit-card', 'Balance'),
                  serviceWidget('cloud', 'Weather'),
                  serviceWidget('bill', 'Bill '),
                  serviceWidget('black', 'I dont see'),
                  serviceWidget('clock', 'Time'),
                  serviceWidget('coding', 'I am Coding'),
                  serviceWidget('cup', 'Tea'),
                  serviceWidget('apple', 'Apple'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column serviceWidget(String img, String name) {
    return Column(
      children: [
        Expanded(
            child: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/$img.png'),
                        scale: 13)),
              ),
            ),
          ),
        )),
        SizedBox(height: 5,),
        Text(name,style: TextStyle(color: Colors.grey.shade700),)
      ],
    );
  }
}
