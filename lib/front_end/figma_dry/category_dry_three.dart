import 'package:flutter/material.dart';

class Categorydrythree extends StatelessWidget {
  final IconData ic;
  final IconData icc;
  final String offerservice;
  final String get;
  final String graboffer;

  const Categorydrythree(
      {Key? key, required this.ic, required this.icc, required this.offerservice, required this.get, required this.graboffer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Color(0xffEAF6EF)),
    padding: EdgeInsets.all(12),
    width: double.infinity,
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    /// offer
    Row(
    children: [
    Text(
    offerservice,
    style: TextStyle(
    color: Colors.black,
    ),
    ),
    SizedBox(
    width: 8,
    ),
    Icon(
    ic,
    size: 18,
    )
    ],
    ),
    SizedBox(
    height: 15,
    ),

    /// get
    Text(
    '$get 25%',
    style: TextStyle(
    fontSize: 40, fontWeight: FontWeight.bold),
    ),
    SizedBox(
    height: 15,
    ),

    /// grab offer
    Container(
    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.4),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.white),
    child: Row(
    children: [
    Text(
    graboffer,
    style:
    TextStyle( color: Colors.grey),
    ),
    SizedBox(
    width: 8,
    ),
    Icon(
    icc,
    color: Colors.grey,
    size: 18,
    )
    ],
    ),
    ),
    ],
    ),
    ),
    );
  }
}
