import 'package:flutter/material.dart';

class Dentistlist extends StatelessWidget {
  final String Imagepath;
  final String text;
  const Dentistlist({
    Key? key,
    required this.Imagepath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.grey.shade300, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            ///2 image container

            ///'Dentist'
            Container(
              height: 30,
              child: Image.asset(
                Imagepath,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
