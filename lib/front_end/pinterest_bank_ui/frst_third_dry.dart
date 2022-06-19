import 'package:flutter/material.dart';

class Firstthirddry extends StatelessWidget {
  final String ImagePath;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final Color;

  const Firstthirddry(
      {Key? key,
      required this.ImagePath,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.Color
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),

        ///list container
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                /// image container.
                Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        ImagePath,
                        scale: 20,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      text2,
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),

                ///receied
              ],
            ),
            Column(
              children: [
                Text(
                  text3,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  text4,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
