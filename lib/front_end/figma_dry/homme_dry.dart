import 'package:flutter/material.dart';

class Hommedry extends StatelessWidget {
  final String discount;
  final String percentage;
  final String vegetables;
  final String seeDetails;
  final String ImagePath;

  Hommedry(
      {Key? key,
      required this.discount,
      required this.percentage,
      required this.vegetables,
      required this.seeDetails,
      required this.ImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)],
            gradient: LinearGradient(colors: [
              Color(0xffFFC300),
              Color(0xffF2A42D),
              Color(0xffFEB74C)
            ]),
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(20)),
        height: 190,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '$discount',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$percentage%',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$vegetables',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFE082),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: EdgeInsets.all(6),
                    child: Text('$seeDetails'),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                'assets/images/$ImagePath.png',
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
