import 'package:flutter/material.dart';
class Doctorlist extends StatelessWidget {


  final String Imagepath;
  final IconData icon;
  final String rating;
  final String docname;
  final String doctor;




  const Doctorlist({Key? key,

required this.Imagepath,
required this.icon,
required this.rating,
required this.docname,
required this.doctor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade300,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                Imagepath,
                height: 50,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(icon,color: Colors.red,),
                Text(rating),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                Text(docname),
                Text(doctor),
              ],
            )
          ],
        ),
      ),
    );
  }
}
