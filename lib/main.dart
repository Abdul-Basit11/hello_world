import 'package:flutter/material.dart';
import 'package:hello_world/front_end/card_ui/for_pract.dart';
import 'package:hello_world/front_end/pinterest/second.dart';

import 'front_end/Login_ui/first_one.dart';
import 'front_end/bee/be_three.dart';
import 'front_end/bee/bee_one.dart';
import 'front_end/bee/bee_two.dart';
import 'front_end/coffee_ui/coffee.dart';

import 'front_end/daily_uis/design.dart';
import 'front_end/daily_uis/login/two.dart';
import 'front_end/daily_uis/ui.dart';
import 'front_end/figma_project/caegory.dart';
import 'front_end/figma_project/cake.dart';
import 'front_end/figma_project/homme.dart';
import 'front_end/figma_project/llogin.dart';
import 'front_end/figma_project/photo_cake.dart';
import 'front_end/figma_project/product_page_cake.dart';
import 'front_end/figma_project/reset_pass.dart';
import 'front_end/figma_project/sign_up.dart';
import 'front_end/figma_project/splash_screen.dart';
import 'front_end/figma_project/verification_code.dart';
import 'front_end/figma_project/welcome_screen.dart';
import 'front_end/from_toutube/homePage.dart';
import 'front_end/from_toutube/intro_screen.dart';
import 'front_end/from_toutube/sidebar.dart';
import 'front_end/house_practice.dart';
import 'front_end/job_app/maaain_screen.dart';
import 'front_end/learning_app/course.dart';
import 'front_end/learning_app/intro_page.dart';
import 'front_end/learning_app/mainpage.dart';
import 'front_end/medical/medical.dart';
import 'front_end/mental_app/lotti_ic.dart';
import 'front_end/pinterest/first.dart';
import 'front_end/pinterest_bank_ui/first_screen.dart';
import 'front_end/pinterest_two/eight.dart';
import 'front_end/pinterest_two/fifth.dart';
import 'front_end/pinterest_two/forth.dart';
import 'front_end/pinterest_two/learn.dart';
import 'front_end/pinterest_two/sec_start_screen.dart';
import 'front_end/pinterest_two/seven.dart';
import 'front_end/pinterest_two/sixth.dart';
import 'front_end/pinterest_two/third_screen.dart';
import 'front_end/raja_yogan/first_project/log_in.dart';
import 'gesture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      //home: Ui(),
      //home: Design(),
      //home: Workui(),
      //home: Stackwidget(),
      //home: Two(),
      //hom/e: Lottiic(),
      //home: Sim(),
      //home: Beeone(),
      //home: Beetwo(),
      //home: Beethree(),
      //home: Forpract(),
      //home: Medical(),
      //home: Housepractice(),
      //home: Coffee(),
      //home: Maaainscreen(),
      //home: Firstone(),
      //home: First(),
      //home: Second(),
      //home: Login(),x
      //home: Learn(),
      //home: Secstartscreen(),
      //home: Thirdscreen(),
      //home: Forth(),
      //home: Fifth(),//
      //home: Sixth(),
      //home: Seven(),
      //home: Eight(),
      //home: Firstscreen(),
      //home: IntroSscreen(),
      //home: Homepage(),
      //home:  Sidebar(),
      //home: Intropage(),
      //home: Course(),
      //home: Splashscreen(),
      //home: Welcomescreen(),
      //home: Signup(),
      //home: Loggin(),
      //home: Verificationcode(),
      //home: Resetpass(),
      //home:Sidemenu(),
      //home: Homme(),
      //home: Category(),
      //home: Cake(),
      //home: Photocake(),
      //home: Gesture(),
      home: productpagecake(),
    );
  }
}
