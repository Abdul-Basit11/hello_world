import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/front_end/job_app/job_card.dart';
import 'package:hello_world/front_end/job_app/recent_job_card.dart';

class Maaainscreen extends StatelessWidget {
  final List jobCard = [
    ['Uber', 'UI Designer', 24, 'assets/images/uber.png'],
    ['Google', 'Product Dev', 80, 'assets/images/google.png'],
    ['Apple', 'Software Engineer', 30, 'assets/images/apple.png'],
  ];

  final List recentjobCard = [
    ['Nike', 'Web Designer', 24, 'assets/images/nike.png'],
    ['Apple', 'Product Dev', 80, 'assets/images/apple.png'],
    ['Google', 'Software Engineer', 30, 'assets/images/google.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 75,
            ),

            ///App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white)),
                height: 50,
                child: Image.asset(
                  'assets/images/menu.png',
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            /// discover a path
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Discover a New Path',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                                height: 30,
                                child: Image.asset(
                                  'assets/images/search.png',
                                  color: Colors.grey.shade600,
                                )),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Search for a job',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey.shade700),
                    height: 50,
                    child: Image.asset(
                      'assets/images/settings.png',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'For You',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 160,
              child: ListView.builder(
                  itemCount: jobCard.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Jobcard(
                      companyName: jobCard[index][0],
                      title: jobCard[index][1],
                      hour: jobCard[index][2],
                      imagePath: jobCard[index][3],
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),

            /// discover a path
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Recently Added',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 150,
                child: ListView.builder(
                    itemCount:recentjobCard.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Recentjobcard(
                        comname: recentjobCard[index][0],
                        jobTitle: recentjobCard[index][1],
                        hourly: recentjobCard[index][2],
                        imagePath: recentjobCard[index][3],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
