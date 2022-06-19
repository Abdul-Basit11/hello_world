import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'buttons.dart';
import 'my_card.dart';
import 'my_tile.dart';


class Forpract extends StatelessWidget {
  ///indicator
  final _controller = PageController();
  final _place = Opacity(
    opacity: 0,
    child: IconButton(
      onPressed: () {},
      icon: Icon(Icons.no_cell),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'MY',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Card',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey[400],
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            ///container:
            Container(
              height: 180,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Mycard(
                    balance: 5250.20,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.deepPurple.shade300,
                  ),
                  Mycard(
                    balance: 342.23,
                    cardNumber: 12345678,
                    expiryMonth: 11,
                    expiryYear: 23,
                    color: Colors.blue.shade300,
                  ),
                  Mycard(
                    balance: 420.42,
                    cardNumber: 12345678,
                    expiryMonth: 8,
                    expiryYear: 22,
                    color: Colors.green.shade300,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotWidth: 15,
                dotHeight: 15,
                dotColor: Colors.grey.shade400,
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///send button
                  Button(
                      Imagepath: 'assets/images/send-money.png', text: 'Send'),

                  ///pay button
                  Button(
                      Imagepath: 'assets/images/credit-card.png', text: 'Pay'),

                  /// bill buttin
                  Button(Imagepath: 'assets/images/bill.png', text: 'Bill'),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Mytile(
                      ImagePath1: 'assets/images/analysis.png',
                      stat: 'Statistics',
                      stat1: 'Payments and income',
                      icon: Icons.arrow_forward_ios_rounded),
                  SizedBox(
                    height: 8,
                  ),
                  Mytile(
                      ImagePath1: 'assets/images/cash-flow.png',
                      stat: 'Transaction',
                      stat1: 'Transaction history',
                      icon: Icons.arrow_forward_ios_rounded),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        backgroundColor: Colors.pink,
        onPressed: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Medical()));
        },
        child: Icon(Icons.money),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.grey[700],
            ),
            _place,
            Icon(
              Icons.settings,
              size: 30,
              color: Colors.grey[700],
            ),
          ],
        ),
      ),
    );
  }
}
