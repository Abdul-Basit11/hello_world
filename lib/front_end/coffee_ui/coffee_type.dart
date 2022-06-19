import 'package:flutter/material.dart';

class Coffeetype extends StatelessWidget {
  Coffeetype({
    Key? key,
    required this.coffeename,
    required this.isSelect,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  final String coffeename;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeename,
          style: TextStyle(
              color: isSelect ? Colors.orange : Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
