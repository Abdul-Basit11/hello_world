import 'package:flutter/material.dart';

class Sixthdry extends StatelessWidget {
  final String ImagePath;
  final String text1;
  final String text2;


  const Sixthdry(
      {Key? key, required this.ImagePath, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Card(
        elevation: 4,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 120,
                child: Image.asset(ImagePath),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
              text1,
                style: TextStyle(color: Color(0xff874FCF)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text2,
                style: TextStyle(color: Color(0xff874FCF)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
