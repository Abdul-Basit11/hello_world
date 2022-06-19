import 'package:flutter/material.dart';

import 'course.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello Developers',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/cart.jpg')),
                        shape: BoxShape.circle),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'What do you \nwant to \nlearn today?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          coursewidget(
                            'Multimedia',
                            'Animation Course',
                            Color(0xffff6a65),
                            Color(0xffff5954),
                            'bill',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          coursewidget(
                              'Socialmedia',
                              'Social media Monitioring',
                              Color(0xffe9eefa),
                              Colors.white,
                              'cup'),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          coursewidget(
                            'Programming',
                            'python for everyday',
                            Color(0xffe9eefa),
                            Colors.white,
                            'cup',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          coursewidget(
                              'Graphic Design',
                              'Fundamentals of design',
                              Color(0xffbdcddfa),
                              Color(0xffcedaff),
                              'bill'),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.subscriptions,
                          size: 25,
                          color: Color(0xff2657ce).withOpacity(0.5),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle_filled,
                          size: 25,
                          color: Color(0xff2657ce).withOpacity(0.5),

                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Course()));
                        },
                        icon: Icon(
                          Icons.account_circle,
                          size: 25,
                          color: Color(0xff2657ce).withOpacity(0.5),

                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container coursewidget(String category, String title, Color categorycolor,
    Color bgcolor, String img) {
  /// red big container.
  return Container(
    padding: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
    decoration: BoxDecoration(
      color: bgcolor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: InkWell(
      onTap: () {},
      child: Column(
        children: [
          /// multimedia wala hai.
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: categorycolor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '$category',
              style: TextStyle(
                  color: (categorycolor == Color(0xfe9eefa)
                      ? Color(0xff2657ce)
                      : Colors.black)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$title',
            style: TextStyle(
                color: (bgcolor == Color(0xffff5954)
                    ? Colors.white
                    : Colors.black),
                fontSize: 12),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 5,
                width: 80,
                color: (bgcolor == Color(0xffff5954)
                    ? Colors.red
                    : Color(0xff2657ce)),
              ),
              Expanded(
                  child: Container(
                height: 5,
                color: (bgcolor == Color(0xffff5954)
                    ? Colors.white.withOpacity(0.4)
                    : Color(0xff2657ce).withOpacity(0.3)),
              )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Hero(
            tag: '$img',
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/$img.png'))),
            ),
          ),
        ],
      ),
    ),
  );
}
