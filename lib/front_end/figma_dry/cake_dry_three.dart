import 'package:flutter/material.dart';

class Cakedrythree extends StatelessWidget {

  final String txtt;

  const Cakedrythree({Key? key, required this.txtt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffFFE082),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(txtt,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
          ),),
        ),
      ),
    );
  }
}
