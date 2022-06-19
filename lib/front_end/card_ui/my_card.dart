import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {

  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;


  const Mycard({Key? key,


      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color,



  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              'Balance',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '&'+balance.toString(),
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: TextStyle(color: Colors.grey.shade400),
                ),
                Text(
                  expiryMonth.toString()+'/'+expiryYear.toString(),
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
