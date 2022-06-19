import 'package:flutter/material.dart';

class Beeone extends StatelessWidget {
  const Beeone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bee.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 200,
            left: 100,
            right: 100,
            child: Column(
              children: [
                Image.asset('assets/images/cup.png'),
                Text(
                  'deeps',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'B E E R C A F E',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
