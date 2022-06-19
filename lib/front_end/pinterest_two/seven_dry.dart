import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Sevendry extends StatelessWidget {


  final String ImagePath;
  final String txt1;
  final String txt2;
  final String txt3;

  const Sevendry({Key? key,required this.ImagePath,required this.txt1,required this.txt2,required this.txt3}) : super(key: key);






  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 130,
                width: 100,
                child: Image.asset(
                  ImagePath,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    txt1,
                    style: TextStyle(
                        color: Color(0xff874FCF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    txt2,
                    style: TextStyle(color: Color(0xff874FCF)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(txt3),
                  SizedBox(height: 5,),
                  LinearPercentIndicator(
                    lineHeight: 8,
                    progressColor: Color(0xff874FCF),
                    percent: 0.4,

                    backgroundColor: Colors.grey.shade300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
