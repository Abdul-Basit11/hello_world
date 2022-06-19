import 'package:flutter/material.dart';

class Welcomedry extends StatelessWidget {

  final String ImagePath;

  const Welcomedry({Key? key,required this.ImagePath}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Image.asset(ImagePath),
    );
  }
}
