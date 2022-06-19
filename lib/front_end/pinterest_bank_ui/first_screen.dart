import 'package:flutter/material.dart';

import 'first_dry.dart';
import 'first_sec_dry.dart';
import 'frst_third_dry.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff46B9DF),
      ),
      body: Container(
        child: Stack(
          children: [
            ///blue Container
            Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xff46B9DF)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hey Sulton,',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'What will yu do today?',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.notifications_none_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    'assets/images/img.png',
                                    height: 35,
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),

            ///2 container
            Align(
              heightFactor: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 5),
                  ]),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),

                        ///balance text
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My total balance',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey.shade500),
                            ),
                            Text(
                              '&3700',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ///repeated column
                            Firstdry(
                              ImagePath: 'assets/images/balance.png',
                              text1: 'Active balance',
                              text2: '&100',
                            ),
                            Firstdry(
                              ImagePath: 'assets/images/credit-card.png',
                              text1: 'Card',
                              text2: '&200',
                            ),
                            Firstdry(
                              ImagePath: 'assets/images/save.png',
                              text1: 'Save It',
                              text2: '&1700',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            /// bottom COntainer
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.grey.shade200,
                height: 310,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),

                  ///main Column
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///card Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          /// repeated Column.
                          Firstsecdry(
                            ImagePath: 'assets/images/credit-card.png',
                            text3: 'Card Center',
                          ),
                          Firstsecdry(
                            ImagePath: 'assets/images/wallet.png',
                            text3: 'E-Wallet',
                          ),
                          Firstsecdry(
                            ImagePath: 'assets/images/send.png',
                            text3: 'Send it',
                          ),
                          Firstsecdry(
                            ImagePath: 'assets/images/other.png',
                            text3: 'Others',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'In & Out Transactions',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      /// Last List View.
                      Expanded(
                        child: Container(
                          color: Colors.grey.shade200,
                          child: Expanded(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Firstthirddry(
                                  ImagePath: 'assets/images/girl.jfif',
                                  text1: 'Beulah Ferguson',
                                  text2: '07 May 2019',
                                  text3: '& 129',
                                  text4: 'Received',
                                  Color: Color(0xff46B9DF),
                                ),
                                Firstthirddry(
                                  ImagePath: 'assets/images/girrly.jpg',
                                  text1: 'George Freeman',
                                  text2: '10 May 2019',
                                  text3: '& 60',
                                  text4: 'Sent',
                                  Color: Colors.red,
                                ),
                                Firstthirddry(
                                  ImagePath: 'assets/images/boy.webp',
                                  text1: 'Willie Barrrett',
                                  text2: '07 May 2019',
                                  text3: '& 170',
                                  text4: 'Received',
                                  Color: Color(0xff46B9DF),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
        backgroundColor: Colors.grey.shade200,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu,size: 18,),label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 18),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search,size: 18),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 18),label: 'Persons'),
        ],
      ),
    );
  }
}
