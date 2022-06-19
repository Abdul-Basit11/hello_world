import 'package:flutter/material.dart';

class Coffeedry extends StatelessWidget {


  final String ImagePath;
  final String coffname;
  final String coffprice;

  Coffeedry({
    required this.ImagePath,
    required this.coffname,
    required this.coffprice,
});





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,bottom: 20),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black54
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(ImagePath,height: 100,fit: BoxFit.cover,)),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(coffname,style: TextStyle(fontSize: 20),),
                SizedBox(height: 5),

                Text('with Almond milk',style: TextStyle(color: Colors.grey.shade700),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ '+coffprice),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,

                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
        width: 180,
      ),
    );
  }
}
