import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff874FCF),
          child: Center(
            child: Text('Learning App',style: TextStyle(fontSize: 40,color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
