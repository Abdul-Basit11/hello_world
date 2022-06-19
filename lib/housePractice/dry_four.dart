import 'package:flutter/material.dart';

class Dryfour extends StatelessWidget {

  final String t1;
  final String t2;
  final String t3;

  const Dryfour({Key? key, required this.t1,required this.t2,required this.t3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Color(0xffFEB74C),
                      shape: BoxShape.circle),
                ),
                Text(t1),
              ],
            ),
            SizedBox(width: 5,),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Color(0xffFEB74C),
                      shape: BoxShape.circle),
                ),
                Text(t2),
              ],
            ),
            SizedBox(width: 5,),

            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Color(0xffFEB74C),
                      shape: BoxShape.circle),
                ),
                Text(t3),
              ],
            ),
            SizedBox(width: 5,),


          ],
        ),
        SizedBox(height: 20),

      ],
    );
  }
}
