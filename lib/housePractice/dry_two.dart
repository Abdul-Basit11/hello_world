import 'package:flutter/material.dart';

class Drytwo extends StatelessWidget {

  final IconData iconn;
  final IconData iconnn;
  final String tex;

  const Drytwo({Key? key, required this.iconn, required this.tex,required this.iconnn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconn,
          color: Colors.white,
        ),
        Text(
          tex,
          overflow: TextOverflow.clip,
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          iconnn,
          color: Colors.white,
        ),
      ],
      mainAxisSize: MainAxisSize.max,
    );
  }
}
