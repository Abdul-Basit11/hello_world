import 'package:flutter/material.dart';

class Fifthdry extends StatelessWidget {
  final String ImagePath;
  final String text1;
  final String text2;
  final String text3;

  const Fifthdry(
      {Key? key,
      required this.ImagePath,
      required this.text1,
      required this.text2,
      required this.text3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 2,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  ImagePath,
                ),
                height: 100,
                width: 200,
              ),
              Text(text1,
                style: TextStyle(color: Color(0xff874FCF)),),
              SizedBox(
                height: 20,
              ),
              Text(
                text2,
                style: TextStyle(color: Color(0xff874FCF),fontSize: 18,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(text3,
                style: TextStyle(color: Color(0xff874FCF)),)
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
