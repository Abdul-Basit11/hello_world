import 'package:flutter/material.dart';
import 'package:hello_world/front_end/pinterest/textlist.dart';

class Secstartscreen extends StatelessWidget {
  const Secstartscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff874FCF),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            /// image
            Image.asset('assets/images/learn.png'),

            ///text
            Text(
              'Online Learning Platorm',
              style: TextStyle(
                  color: Color(0xff874FCF),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'eque porro quisquam est qui dolorem ipsum quia dolor sit'
                  ' amet, consectetur, adipisci velit.est qui dolorem ipsum quia dolor sit amet',
              style: TextStyle(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10    ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff874FCF)
              ),
              child: Center(
                child: Text('Start Learning',style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
