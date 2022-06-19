import 'package:flutter/material.dart';
import 'package:hello_world/front_end/daily_uis/login/stack_widget.dart';
import 'package:hello_world/front_end/figma_dry/homm_dry_three.dart';
import 'package:hello_world/housePractice/dry_four.dart';
import 'package:hello_world/housePractice/dry_two.dart';
import 'package:hello_world/housePractice/housepractice_dry_one.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homme extends StatelessWidget {
  PageController _controller = PageController();

  final List listtile = [
    ['My Profile', Icons.person],
    ['My Orders', Icons.bookmark_border_rounded],
    ['Contact us', Icons.contact_page_outlined],
    ['Help & FAQ', Icons.person],
    ['Blog', Icons.person],
    ['Share App', Icons.share],
    ['Rate Our App', Icons.star],
  ];
  final List Cake = [
    ['Cake', 'Gift', 'Decoration'],
    ['Biscuit', 'Video', 'Food Package'],
    ['Buy/rent', 'Book Table', 'Hire Musician'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              arrowColor: Colors.orange,
              accountName: Text(
                'Kushali Bali',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              accountEmail: Text(
                'maachao@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xffFEB74C),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/g.jpg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView.builder(
                    itemCount: listtile.length,
                    itemBuilder: (context, index) {
                      return Hommedrythree(
                          text: listtile[index][0], i: listtile[index][1]);
                    })),
            Container(
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.4, left: 20),
              width: 70,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.power_settings_new_sharp,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Log out',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffFEB74C),
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/maachao.png',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffFEB74C),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Housepracticedry(
                              ImagePath: 'assets/images/icons.png',
                              img: 'Notification',
                              icon: Icons.search,
                              text: 'Seargch for fruit and food'),
                          SizedBox(
                            height: 20,
                          ),
                          Drytwo(
                              iconn: Icons.location_on_outlined,
                              tex: 'Sent to Pamulang Barat Residence No.5,RT ',
                              iconnn: Icons.keyboard_arrow_down_outlined)
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 6),
                    child: Container(
                      color: Colors.transparent,
                      height: 180,
                      child: PageView.builder(
                          controller: _controller,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Image.asset('assets/images/fra.png'),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                          effect: ExpandingDotsEffect(
                              dotColor: Colors.grey,
                              activeDotColor: Color(0xffFEB74C)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Text(
                          'Category',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: Cake.length,
                            itemBuilder: (context, index) {
                              return Dryfour(
                                t1: Cake[index][0],
                                t2: Cake[index][1],
                                t3: Cake[index][2],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
