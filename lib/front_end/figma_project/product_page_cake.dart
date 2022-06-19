import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class productpagecake extends StatefulWidget {
  const productpagecake({Key? key}) : super(key: key);

  @override
  State<productpagecake> createState() => _productpagecakeState();
}

class _productpagecakeState extends State<productpagecake> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage('assets/images/carrot.jpg'),
            //         fit: BoxFit.cover)),
           child: PageView(
             scrollDirection: Axis.horizontal,
             controller:_controller,
             children: [
           Container(
           width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .5,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/carrot.jpg'),
              fit: BoxFit.cover)),),
             ],
           ),
          ),
          Positioned(
              top: 60,
              left: 17,
              right: 16,
              child: Container(
                height: 35,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      height: 31,
                      width: 31,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(8)),
                      alignment: Alignment(1, 0),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      child: CircleAvatar(
                          backgroundColor: Color(0xffFE724C),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          )),
                      height: 31,
                      width: 31,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(8)),
                      alignment: Alignment(1, 0),
                    )
                  ],
                ),
              )),
          SmoothPageIndicator(controller: _controller, count: 5,effect: WormEffect(
            dotColor: Colors.grey,
            dotWidth: 8,
            dotHeight: 8,
            activeDotColor: Colors.white
          ),),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
