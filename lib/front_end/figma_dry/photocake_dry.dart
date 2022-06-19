import 'package:flutter/material.dart';

class Photocakedry extends StatelessWidget {


  final IconData arrow;
  final IconData search;
  final IconData shoppingcart;
  final String category;

  const Photocakedry({Key? key, required this.arrow, required this.search, required this.shoppingcart, required this.category}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            /// icon arrow back..
            Container(
              alignment: Alignment(0.5, 0),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 1)
                  ]),
              child: Icon(
                arrow,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 15,),
            Text(
              category,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Expanded(child: Container()),
        Container(
          alignment: Alignment(0, 0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 1)
              ]),
          child: Icon(
            search,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 15,),
        Container(
          alignment: Alignment(0, 0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
 borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 1)
              ]
          ),
          child: Icon(
            shoppingcart,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
