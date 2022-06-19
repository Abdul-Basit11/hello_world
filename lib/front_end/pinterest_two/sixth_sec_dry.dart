import 'package:flutter/material.dart';

class Sixthsecdry extends StatelessWidget {
  final String ImagePath;
  final String textone;
  final String texttwo;


  const Sixthsecdry(
      {Key? key, required this.ImagePath, required this.textone, required this.texttwo})
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
                height: 60,
                width: 120,
                child: Image.asset(ImagePath),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                textone,
                style: TextStyle(color: Color(0xff874FCF)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                texttwo,
                style: TextStyle(color: Color(0xff874FCF)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
