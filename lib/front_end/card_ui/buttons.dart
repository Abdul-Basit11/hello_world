import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  ///variables for buttons
  final String Imagepath;
  final String text;


  const Button({Key? key,
    required this.Imagepath,
    required this.text,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 8
                )
              ],
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20)),
          height: 78,
          child: Center(
            child: Image.asset(Imagepath),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          text,
          style:
          TextStyle(color: Colors.grey.shade700, fontSize: 18),
        )
      ],
    );
  }
}
