import 'package:flutter/material.dart';

class Jobcard extends StatelessWidget {
  final String companyName;
  final String title;
  final String imagePath;
  final int hour;

  Jobcard({
    required this.companyName,
    required this.title,
    required this.imagePath,
    required this.hour,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(12),
          width: 250,
          color: Colors.grey.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    child: Image.asset(imagePath),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                        color: Colors.grey.shade500,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Part Time',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Text('\$'+hour.toString()+'/hr'),
            ],
          ),
        ),
      ),
    );
  }
}
