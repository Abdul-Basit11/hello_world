import 'package:flutter/material.dart';
import 'package:hello_world/front_end/figma_dry/cake_dry.dart';
import 'package:hello_world/front_end/figma_dry/cake_dry_three.dart';
import 'package:hello_world/front_end/figma_dry/cake_dry_two.dart';

class Cake extends StatelessWidget {

  final List photoCake=[
    'Photo Cake',
    'Chocolate Cake',
    'Customized Cake',
    'Strawberry Cake',
    'Pinata Cake',
  ];

  final List cakeList=[
    ['All Cake',Icons.arrow_forward_ios],
    ['Cake By Flavour',Icons.add],
    ['Cake + Combos',Icons.add],
    ['Cake By Ocassion',Icons.add],
    ['Cake By Price',Icons.add],

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Cakedry(
                  arrow: Icons.arrow_back_ios,
                  search: Icons.search,
                  favorite: Icons.favorite,
                  category: 'Cake'),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                    itemCount: cakeList.length,
                    itemBuilder: (context, i) {
                      return Cakedrytwo(
                        cake: cakeList[i][0],
                        iI: cakeList[i][1],

                      );
                    }),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffEAF6EF),
                  borderRadius: BorderRadius.circular(20)
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Cake By Types',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          Icon(Icons.minimize_rounded)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Expanded(
                        child: ListView.builder(
                            itemCount: photoCake.length,
                            itemBuilder: (context,index){
                          return Cakedrythree(txtt: photoCake[index]);
                        }),
                      )
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
