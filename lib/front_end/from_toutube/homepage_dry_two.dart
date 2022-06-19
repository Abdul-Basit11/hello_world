import 'package:flutter/material.dart';

class Homepagedrytwo extends StatelessWidget {

  final IconData icon;
  final String text;

  const Homepagedrytwo({Key? key, required this.icon,required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(8),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
        ],
      ),
    );
  }
}
