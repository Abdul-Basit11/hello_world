import 'package:flutter/material.dart';

class Textlist extends StatelessWidget {


  final String text;
  final bool istite;

  Textlist(
  {
    required this.text,
    required this.istite,
}
      );


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(text,style: TextStyle(fontSize: 20,color: istite ? Colors.black : Colors.grey,),),
    );

  }
}
