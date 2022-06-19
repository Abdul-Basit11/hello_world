import 'package:flutter/material.dart';

class Secuistar extends StatelessWidget {

  final IconData icon;
 final Color;
  const Secuistar({Key? key,required this.icon,required this.Color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(icon,color: Color,);
  }
}
