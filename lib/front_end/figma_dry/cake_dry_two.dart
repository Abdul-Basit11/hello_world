import 'package:flutter/material.dart';

class Cakedrytwo extends StatelessWidget {
  final String cake;
  final IconData iI;

  const Cakedrytwo({Key? key, required this.cake, required this.iI})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color: Color(0xffEAF6EF),borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cake,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Icon(
              iI,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
