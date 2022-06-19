import 'package:flutter/material.dart';

class Categorydrytwo extends StatelessWidget {



  final String t11;
  final String t12;
  final String t13;

  const Categorydrytwo({Key? key, required this.t11, required this.t12, required this.t13}) : super(key: key);

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
                    shape: BoxShape.circle,
                  ),
                ),
                Text(t11),
              ],
            ), Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xffFEB74C),
                    shape: BoxShape.circle,
                  ),
                ),
                Text(t12),
              ],
            ), Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xffFEB74C),
                    shape: BoxShape.circle,
                  ),
                ),
                Text(t13),
              ],
            ),
          ],
        )
      ],
    );
  }
}
