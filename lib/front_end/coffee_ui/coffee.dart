import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'coffee_dry.dart';
import 'coffee_type.dart';

class Coffee extends StatefulWidget {
  const Coffee({Key? key}) : super(key: key);

  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeety.length; i++) {
        coffeety[i][1] = false;
      }
      coffeety[index][1] = true;
    });
  }

  final List coffeety = [
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'FIND THE BEST COFFEE FOR YOU',
              style: GoogleFonts.bebasNeue(fontSize: 54),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee..',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                //border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          ///listview
          Container(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeety.length,
                  itemBuilder: (context, index) {
                    return Coffeetype(
                        coffeename: coffeety[index][0],
                        isSelect: coffeety[index][1],
                        onTap: () {
                          coffeeTypeSelected(index);
                        });
                  })),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Coffeedry(
                  ImagePath: 'assets/images/coff.webp',
                  coffname: 'Latte',
                  coffprice: '4.20',
                ),
                Coffeedry(
                  ImagePath: 'assets/images/cappicono.jpg',
                  coffname: 'Cappucino',
                  coffprice: '4.00',
                ),
                Coffeedry(
                  ImagePath: 'assets/images/black.png',
                  coffname: 'Black',
                  coffprice: '3.00',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
    );
  }
}
