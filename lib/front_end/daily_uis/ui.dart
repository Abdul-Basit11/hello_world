import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ui extends StatelessWidget {
  const Ui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.more_horiz_outlined,
          color: Colors.black,
          size: 18,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Image.asset('assets/images/img.png')),
          )
        ],
        title: Text(
          '25 Aug,2020',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Task',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/png-removebg-preview.png',
                                      height: 80,
                                      width: 55,
                                      fit: BoxFit.cover,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 18,
                                      color: Colors.white,
                                    )
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                                Text(
                                  'Mobile App Design',
                                  style:
                                      TextStyle(fontSize: 17, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '10 Task',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white60),
                                ),
                              ],
                            ),
                          ),
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.pink.shade200,
                                  Colors.pink.shade300
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            color: Colors.pink.shade300,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pink.shade200,
                                  blurRadius: 8,
                                  offset: Offset(0.1, 0.3))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/coding.png',
                                      height: 45,
                                      width: 44,
                                      fit: BoxFit.cover,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'illustration',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 17),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '6 Task',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          height: 120,
                          width: 140,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.purple.shade200,
                                    blurRadius: 8,
                                    offset: Offset(0.2, 0.3))
                              ],
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.purple.shade100,
                                    Colors.purple.shade200,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple.shade200),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/pending.png',
                                      height: 45,
                                      width: 44,
                                      fit: BoxFit.cover,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Pending',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 17),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '26 Task',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          height: 120,
                          width: 140,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.yellow.shade300,
                                    blurRadius: 8,
                                    offset: Offset(0.2, 0.3))
                              ],
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.orange.shade200,
                                    Colors.orange.shade500,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange.shade500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/light.png',
                                      height: 80,
                                      width: 55,
                                      fit: BoxFit.cover,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 18,
                                      color: Colors.white,
                                    )
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                                Text(
                                  'Web Site\n Design',
                                  style:
                                      TextStyle(fontSize: 17, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '10 Task',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white60),
                                ),
                              ],
                            ),
                          ),
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue.shade300,
                                    blurRadius: 8,
                                    offset: Offset(0.2, 0.3))
                              ],
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.blue.shade100,
                                    Colors.blue.shade300,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue.shade300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'On Going',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.pink.shade200),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Startup Website Design \nwith Responsive',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timelapse_sharp,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text(
                            '10:00 AM - 12;50 pm',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Complete :80 %',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/images/rocket.png',
                    height: 140,
                    width: 140,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
