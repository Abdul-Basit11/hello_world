import 'package:flutter/material.dart';

class Housepracticedry extends StatelessWidget {

  final String ImagePath;
  final String img;
  final IconData icon;
  final String text;

  const Housepracticedry({Key? key, required this.ImagePath, required this.img, required this.icon, required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(icon,color: Colors.grey,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(),
                        border: InputBorder.none,
                        hintText:
                        text),
                  ),
                ),
              ],
            ),
          ),
        ),
        Image.asset(ImagePath),
        Image.asset('assets/images/$img.png'),
      ],
    );
  }
}
