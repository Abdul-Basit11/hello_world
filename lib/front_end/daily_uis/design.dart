import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Design extends StatelessWidget {
  const Design({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularPercentIndicator(
                            lineWidth: 6,
                            radius: 75,
                            percent: 0.8,
                            progressColor: Colors.red,
                            center: CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xff6588E4),
                                child: Image.asset(
                                  'assets/images/coding.png',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Column(
                            children: [
                              Text(
                                'Sourav Suman',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'App Developer',
                                style: TextStyle(
                                    color: Color(0xffB78C5B), fontSize: 16),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xffF9BE7D),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                width: double.infinity,
                height: 250,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Tasks',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.calendar_today),
                    ),
                  ],
                ),
                ListTile(
                  dense: true,
                  leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(Icons.timelapse_sharp)),
                  title: Text('To Do'),
                  subtitle: Text('5 tasks now,1 startes'),
                ),
                ListTile(
                  dense: true,
                  leading: CircleAvatar(
                      backgroundColor: Color(0xffF9BE7D),
                      child: Icon(
                        Icons.pan_tool_rounded,
                        color: Colors.white,
                      )),
                  title: Text('In Progress'),
                  subtitle: Text('11 tasks now,1 startes'),
                ),
                ListTile(
                  dense: true,
                  leading: CircleAvatar(
                      backgroundColor: Color(0xff6588E4),
                      child: Icon(Icons.done_all_rounded)),
                  title: Text('Done'),
                  subtitle: Text('18 tasks now,13 startes'),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Active Projects',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircularPercentIndicator(
                                center: Text(
                                  '25%',
                                  style: TextStyle(color: Colors.white),
                                ),
                                radius: 70,
                                percent: 0.3,
                                progressColor: Colors.white,
                              ),
                              //SizedBox(height: 55,),
                              Row(
                                children: [
                                  Text(
                                    'Medical App',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '9 hours progress',
                                    style: TextStyle(color: Colors.white24),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Color(0xff309398),
                        ),
                        height: 170,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircularPercentIndicator(
                                center: Text(
                                  '25%',
                                  style: TextStyle(color: Colors.white),
                                ),
                                radius: 70,
                                percent: 0.3,
                                progressColor: Colors.white,
                              ),
                              //SizedBox(height: 55,),
                              Row(
                                children: [
                                  Text(
                                    'Making History \nNotes',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '20 hours progress',
                                    style: TextStyle(color: Colors.white24),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Color(0xffE46470),
                        ),
                        height: 170,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
