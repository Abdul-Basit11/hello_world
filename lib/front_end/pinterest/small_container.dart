import 'package:flutter/material.dart';

class Smallcontainer extends StatelessWidget {
  final String ImagePath;
  final Color;
  final String text;

  const Smallcontainer(
      {Key? key,
      required this.ImagePath,
      required this.Color,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color, borderRadius: BorderRadius.circular(12)),
                height: 65,
                child: Image.asset(ImagePath),
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                text,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
