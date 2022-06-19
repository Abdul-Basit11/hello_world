import 'package:flutter/material.dart';
import 'package:hello_world/front_end/figma_dry/category_dry.dart';
import 'package:hello_world/front_end/figma_dry/category_dry_three.dart';
import 'package:hello_world/front_end/figma_dry/category_dry_two.dart';

class Category extends StatelessWidget {
  final _placeholder = Opacity(
      opacity: 0,
      child: IconButton(onPressed: null, icon: Icon(Icons.no_cell)));

  final List cateGories = [
    ['Cake', 'Gift', 'Decoration'],
    ['Hira MUA', 'Video', 'Food PAckages'],
    ['Buy/Rent', 'Book Table', 'Hira Musician'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),

              /// first row...
              Categorydry(
                  arrow: Icons.arrow_back_ios,
                  search: Icons.search,
                  favorite: Icons.favorite,
                  category: 'Categories'),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(color: Colors.white),
                child: ListView.builder(
                    itemCount: cateGories.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Categorydrytwo(
                          t11: cateGories[index][0],
                          t12: cateGories[index][1],
                          t13: cateGories[index][2]);
                    }),
              ),
              SizedBox(
                height: 18,
              ),
              Categorydrythree(
                  ic: Icons.info,
                  icc: Icons.arrow_forward_ios,
                  offerservice: 'Offer AC Service',
                  get: 'Get',
                  graboffer: 'Grab Offer')
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFEC401),
        onPressed: () {},
        child: Icon(Icons.window_outlined),
      ),
      bottomNavigationBar: BottomAppBar(

        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home,color: Colors.red,),
            Icon(Icons.delivery_dining,color: Colors.grey,),
            _placeholder,
            Icon(Icons.shopping_cart,color: Colors.grey),
            Icon(Icons.person_pin,color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
