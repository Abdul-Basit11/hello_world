import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'dentist_list.dart';
import 'docto_list.dart';


class Medical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Jerome Bell',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400, shape: BoxShape.circle),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assets/images/img.png')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.pink.shade100,
                ),
                child: Row(
                  children: [
                    ///image
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/doctor.png'))
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you Feel',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Fill out your medical card right now'),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: (){
                              //Navigator.push(context, MaterialPageRout)
                            },
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple.shade300,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ///textform field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'How can we help you',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Colors.grey.shade300),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            /// list view
            Container(
              height: 65,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  /// 1 container
                  Dentistlist(
                    Imagepath: 'assets/images/tooth.png',
                    text: 'Dentist',
                  ),
                  Dentistlist(
                    Imagepath: 'assets/images/surgeon.png',
                    text: 'Surgeon',
                  ),
                  Dentistlist(
                    Imagepath: 'assets/images/drugs.png',
                    text: 'Pharmacist',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
              children: [
                Doctorlist(
                  Imagepath: 'assets/images/doc.jpg',
                  icon: Icons.star,
                  rating: '4.9',
                  docname: 'DR.Abdul Basit ',
                  doctor: 'Therapist',
                ),
                Doctorlist(
                  Imagepath: 'assets/images/lady.jpg',
                  icon: Icons.star,
                  rating: '4.9',
                  docname: 'DR.Abdul Basit ',
                  doctor: 'Therapist',
                ),
              ],
            )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
