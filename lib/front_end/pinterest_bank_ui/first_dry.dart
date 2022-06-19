import 'package:flutter/material.dart';
class Firstdry extends StatelessWidget {

  final String ImagePath;
  final String text1;
  final String text2;

  const Firstdry({Key? key,required this.ImagePath,required this.text1,required this.text2}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.asset(
         ImagePath,
          height: 40,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text1,
          style: TextStyle(color: Colors.grey.shade500),
        ),

        Text(
          text2,
          style: TextStyle(
              color: Color(0xff46B9DF),
              fontWeight: FontWeight.bold,fontSize: 20),
        )
      ],
    );
  }
}
