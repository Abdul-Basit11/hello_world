import 'package:flutter/material.dart';

class Eightdry extends StatelessWidget {

final String text1;
final IconData icon;

  const Eightdry({Key? key,required this.text1,required this.icon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1,style: TextStyle(color: Color(0xff874FCF),fontSize: 20),),
          Icon(icon,color: Color(0xff874FCF),)
        ],
      ),
    );
  }
}
