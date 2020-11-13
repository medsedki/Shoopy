import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/carousel/c1.jpg'),
          AssetImage('assets/carousel/m1.jpeg'),
          AssetImage('assets/carousel/w1.jpeg'),
          AssetImage('assets/carousel/w4.jpeg'),
          AssetImage('assets/carousel/w3.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        autoplayDuration: Duration(milliseconds: 1000),

        //to specify the dot size
        // dotSize: 5.0,
        //to specity the dot color
        // dotColor: Colors.blue,

        //indicatorBgPadding changes the padding of the background
        indicatorBgPadding: 4.0,
      ),
    );
  }
}
