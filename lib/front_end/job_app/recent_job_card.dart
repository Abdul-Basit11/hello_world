import 'package:flutter/material.dart';

class Recentjobcard extends StatelessWidget {


  final String comname;
  final String jobTitle;
  final String imagePath;
  final int hourly;

Recentjobcard(
  {
    required this.comname,
    required this. jobTitle,
    required this.imagePath,
    required this.hourly,
}
    );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.white)
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
               children: [
                 Container(
                   padding: EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color: Colors.grey.shade300
                   ),
                   height: 40,
                   child: Image.asset(imagePath),
                 ),
                 SizedBox(width: 10,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(jobTitle,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                     Text(comname),
                   ],
                 ),
               ],
            ),
            Container(
              padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.shade300
                ),
                child: Text('\$ '+hourly.toString()+'/hr',style: TextStyle(color: Colors.white),)),

          ],
        ),
      ),
    );
  }
}
