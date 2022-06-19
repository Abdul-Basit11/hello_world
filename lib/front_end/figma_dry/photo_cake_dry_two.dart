import 'package:flutter/material.dart';

class Photocakedrytwo extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final IconData i;
  final IconData ii;
  final String ImagePath;
  final String ImagePath1;
  final String text6;

  const Photocakedrytwo(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5,
      required this.i,
      required this.ii,
      required this.ImagePath,
      required this.ImagePath1,
        required this.text6
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 180,
                width: 150,
                child: Column(
                  children: [
                    /// inside pic container..
                    Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                ImagePath,
                              ),
                              fit: BoxFit.fill),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        text1,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 18),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white.withOpacity(0.5)),
                                      padding: EdgeInsets.all(3),
                                      child: Icon(
                                        i,
                                        color: Colors.white,
                                      ),
                                      alignment: Alignment(0, 0),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey, blurRadius: 1)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        text2,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Icon(
                                        ii,
                                        color: Colors.yellow.shade800,
                                        size: 18,
                                      ),
                                      Text(
                                        text3,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              bottom: -15,
                              left: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Text(
                            text4,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            text5,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 180,
                width: 150,
                child: Column(
                  children: [
                    /// inside pic container..
                    Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                ImagePath1,
                              ),
                              fit: BoxFit.fill),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        text6,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 18),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffFE724C)),
                                      padding: EdgeInsets.all(3),
                                      child: Icon(
                                        i,
                                        color: Colors.white,
                                      ),
                                      alignment: Alignment(0, 0),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey, blurRadius: 1)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        text2,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Icon(
                                        ii,
                                        color: Colors.yellow.shade800,
                                        size: 18,
                                      ),
                                      Text(
                                        text3,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              bottom: -15,
                              left: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Text(
                            text4,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            text5,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
