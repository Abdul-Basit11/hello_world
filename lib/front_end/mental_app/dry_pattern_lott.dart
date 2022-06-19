import 'package:flutter/material.dart';

class Drypatternlott extends StatelessWidget {
  final String emoji;
  final String text;

  const Drypatternlott({required this.text, required this.emoji, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade600),
              child: Column(
                children: [
                  Text(
                    emoji,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              )),
          SizedBox(height: 10,),
          Text(text,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
