import 'package:flutter/material.dart';

class Hommedrythree extends StatelessWidget {

final String text;
final IconData i;

  const Hommedrythree({Key? key, required this.text, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(i),
      title: Text(text),
    );
  }
}
