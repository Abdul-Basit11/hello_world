import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final IconData icon;
  final String exercisename;
  final numberofexercise;
  final color;

  const Exercise({
    Key? key,
    required this.icon,
    required this.exercisename,
    required this.numberofexercise,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: color,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exercisename,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.5,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      numberofexercise.toString() + 'Exercise',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz_outlined),
          ],
        ),
      ),
    );
  }
}
