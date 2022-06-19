import 'package:flutter/material.dart';

class Verificationdry extends StatelessWidget {

  final String text;
  final Color co;
  const Verificationdry({Key? key, required this.text,required this.co}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        height: 70,
        width: 60,
        child: TextField(
          decoration: InputDecoration(
              hintText:  text,
              hintStyle: TextStyle(color: Color(0xffFEB74C)),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: co),
                borderRadius: BorderRadius.circular(14)
              )
          ),
        ));
  }
}

