import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MovieCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 150,//120
    //margin: EdgeInsets.only(top:10),
    child: Carousel(
      images:[
        //Image.asset('slideimages/1.jpg', fit: BoxFit.fill,),
        //Image.asset('iconimages/action.png'),
        //AssetImage('iconimages/action.png'),
        AssetImage('slideimages/1.jpg'),
        AssetImage('slideimages/2.jpg'),
        AssetImage('slideimages/3.jpg'),
        AssetImage('slideimages/4.jpg'),
      ],
      dotSize: 4.0,
      dotSpacing: 20.0,
      dotColor: Colors.red,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.black.withOpacity(0.9),
      autoplay: true,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds:5),
      //borderRadius: true,
      //radius: Radius.circular(30.0),
    ),
  );
  }
}



