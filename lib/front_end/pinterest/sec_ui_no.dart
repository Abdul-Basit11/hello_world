import 'package:flutter/material.dart';

class Sceuino extends StatelessWidget {
  final int no;
  final Color;
  final color;
  const Sceuino({Key? key, required this.no,required this.Color,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Text(
            no.toString(),
            style: TextStyle(color: color,fontWeight: FontWeight.bold),
          ),
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: Color, borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
