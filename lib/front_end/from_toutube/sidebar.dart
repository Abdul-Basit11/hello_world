import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(60)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/umair.JPG'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdul Basit',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Flutter Developer',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              navigate('Home',true),
              navigate('Profile',false),
              navigate('Acconut',false),
              navigate('Transaction',false),
              navigate('Status',false),
              navigate('Setting',false),
              navigate('Help',false),

            ],
          )),
          Positioned(
            bottom: MediaQuery.of(context).size.height*0.1 ,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.power_settings_new_rounded,size: 30,),
                Text('Log Out',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Text('var 2.0.1'),
          ),
        ],
      ),
    );
  }
  Row navigate(String name,bool isSelected){
    return Row(
      children: [
        (isSelected)?Container(
          width: 5,
          height: 50,
          color: Color(
            0xffffac30
          ),
        ):Container(
          width: 5,
          height: 60,

        ),
        SizedBox(width: 10,),
        Text(name),
      ],
    );
  }
}
