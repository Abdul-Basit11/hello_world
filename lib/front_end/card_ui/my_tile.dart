import 'package:flutter/material.dart';

class Mytile extends StatelessWidget {

  final String ImagePath1;
  final String stat;
  final String stat1;
  final IconData icon;


  const Mytile({Key? key,
  required this.ImagePath1,
  required this.stat,
  required this.stat1,
  required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade100),
              height: 65,
              child: Image.asset(ImagePath1),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stat,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  stat1,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
              ],
            ),
          ],
        ),
        Icon(icon)
      ],
    );
  }
}
