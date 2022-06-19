import 'package:flutter/material.dart';

class Boxlist extends StatelessWidget {
  final String ImagePath;
  final IconData icon;
  final String mountainname;
  final String cityname;

   Boxlist(
  {
    required this.ImagePath,
    required this.mountainname,
    required this.icon,
    required this.cityname,


}
       );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(image: AssetImage(ImagePath),fit: BoxFit.cover,)),
            Positioned(
              bottom: 20,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(mountainname,style: TextStyle(fontSize: 18,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(icon,size: 18,color: Colors.white,),
                        Text(cityname,style: TextStyle(color: Colors.white),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        height: 200,
        width: 150,
      ),
    );
  }
}
