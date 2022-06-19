import 'package:flutter/material.dart';
import 'package:hello_world/front_end/figma_dry/photo_cake_dry_two.dart';

import '../figma_dry/photocake_dry.dart';

class Photocake extends StatelessWidget {
  const Photocake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Photocakedry(
                  arrow: Icons.arrow_back_ios,
                  search: Icons.search,
                  shoppingcart: Icons.shopping_cart,
                  category: 'Photo Cake'),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Photocakedrytwo(
                                  text1: '5.50',
                                  text2: '4.5',
                                  text3: '25+',
                                  text4: 'Salamon Salad',
                                  text5: 'Baked Salmon fish',
                                  i: Icons.favorite_outlined,
                                  ii: Icons.star,
                                  ImagePath: ('assets/images/salmon.jpg'),
                                  ImagePath1: ('assets/images/piza.jpg'),
                                    text6: '8.25',
                              );
                            }),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                            ),
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade600),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  padding: EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFEB74C),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Short by',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.compare_arrows,
                                        color: Colors.white,
                                        size: 30,
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Fliter',
                                        style: TextStyle(
                                            color: Color(0xffFEB74C),
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.sort_outlined,
                                        color: Color(0xffFEB74C),
                                      )
                                    ],
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
