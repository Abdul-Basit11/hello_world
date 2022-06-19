import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/front_end/pinterest/sec_ui_no.dart';
import 'package:hello_world/front_end/pinterest/sec_ui_star.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/beauty.jpg',
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                'assets/images/menu.png',
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 200,
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),

                      /// first row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Yosemite',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$250',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      //SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 20,
                          ),
                          Text(
                            'USA,California',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Secuistar(
                            icon: Icons.star,
                            Color: Colors.yellow.shade800,
                          ),
                          Secuistar(
                            icon: Icons.star,
                            Color: Colors.yellow.shade800,
                          ),
                          Secuistar(
                            icon: Icons.star,
                            Color: Colors.yellow.shade800,
                          ),
                          Secuistar(
                            icon: Icons.star,
                            Color: Colors.yellow.shade800,
                          ),
                          Secuistar(
                            icon: Icons.star_border_rounded,
                            Color: Colors.grey.shade600,
                          ),
                          Text('[4.0]'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'People',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),

                      Text(
                        'Number of people in your group',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      /// small Container of Numbers
                      Row(
                        children: [
                          Sceuino(
                            no: 1,
                            Color: Colors.black,
                            color: Colors.white,
                          ),
                          Sceuino(
                            no: 2,
                            Color: Colors.grey.shade300,
                            color: Colors.black,
                          ),
                          Sceuino(
                            no: 3,
                            Color: Colors.grey.shade300,
                            color: Colors.black,
                          ),
                          Sceuino(
                            no: 4,
                            Color: Colors.grey.shade300,
                            color: Colors.black,
                          ),
                          Sceuino(
                            no: 5,
                            Color: Colors.grey.shade300,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci ve'
                        'lit...,There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 10,),
                      /// last container
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(14),
                            child:Text('❤'),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(14),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Book trip Now ',style: TextStyle(color: Colors.white,fontSize: 16),),
                                    Text('»',style: TextStyle(color: Colors.white,fontSize: 16),),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.blueAccent.shade400
                              ),
                            ),
                          ),
                        ],
                      ),
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
