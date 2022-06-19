import 'package:flutter/material.dart';

class Homepagedry extends StatelessWidget {

  final String ImagePath;
  final String text;

  const Homepagedry({Key? key,required this.ImagePath,required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              child: Image.asset(ImagePath,height: 50,),
              borderRadius: BorderRadius.circular(25),

            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
