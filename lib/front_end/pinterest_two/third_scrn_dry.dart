import 'package:flutter/material.dart';

class Thirdscrndry extends StatelessWidget {
  final Color;
  final String text;

  const Thirdscrndry({Key? key, required this.Color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(color: Color),
          borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Text(text),
        ],
      ),
    );
  }
}
