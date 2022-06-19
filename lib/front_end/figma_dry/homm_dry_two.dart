import 'package:flutter/material.dart';


class Hommdrytwo extends StatelessWidget {
  final String texxxxt;
  const Hommdrytwo({Key? key,required this.texxxxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle
          ),
        ),
        SizedBox(height: 4,),
        Text(texxxxt),
      ],
    );
  }
}
