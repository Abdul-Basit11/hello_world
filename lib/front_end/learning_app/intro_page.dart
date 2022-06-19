import 'package:flutter/material.dart';
import 'package:hello_world/front_end/learning_app/mainpage.dart';

class Intropage extends StatelessWidget {
  const Intropage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff5954),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          /// main Cotainer
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// learning
                Container(
                  child: Text(
                    'Online Learning',
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                /// is  not the next
                Container(
                  child: Text(
                    'is not the next',
                    style: TextStyle(
                      fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        ),
                  ),
                ),
                /// big thing
                Container(
                  child: Text(
                    'big thing,',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                /// it is now the big
                Container(
                  child: Text(
                    'it is now the ',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'BIG THING,',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],

            ),
          ),
          /// stack
          Stack(
             children: [
           Container(
             height: MediaQuery.of(context).size.height*0.5,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               image: DecorationImage(

                 image: AssetImage('assets/images/khabi.png')
               )
             ),
           ),
               Positioned(
                 bottom: 20,
                 left: 0,
                 right: 0,
                 child: Center(
                   child: InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpage()));
                     },
                     child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15 ),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(30)
                       ),
                       child: Text('Continue..',
                         style: TextStyle(
                             fontSize: 20,
                             color: Colors.black,
                             fontWeight: FontWeight.w800),),
                     ),
                   ),
                 ),
               ),
            ],
          ),
        ],
      ),
    );
  }
}
