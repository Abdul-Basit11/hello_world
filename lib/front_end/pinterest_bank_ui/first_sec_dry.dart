import 'package:flutter/material.dart';

class Firstsecdry extends StatelessWidget {

  final String ImagePath;
  final String text3;

  const Firstsecdry({Key? key,required this.ImagePath,required this.text3}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          child: Image.asset(
            ImagePath,            scale: 15,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.all(10),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
    text3,
          style: TextStyle(color: Colors.grey.shade500),
        ),
      ],
    );
  }
}
