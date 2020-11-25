import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSlider1 extends StatefulWidget {
  @override
  _CarouselSlider1State createState() => _CarouselSlider1State();
}

class _CarouselSlider1State extends State<CarouselSlider1> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
              autoPlayInterval: Duration(seconds: 5),
              height: 185.0,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1800),
              onPageChanged: (index, n) {
                setState(() {
                  _currentIndex = index;
                });
              }),
          items: CarouselImg.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.9),
                        offset: Offset(0, 2),
                        blurRadius: 1.0,
                        spreadRadius: 0.3,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(i),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(CarouselImg, (index, url) {
            return Container(
              height: 10,
              width: 10,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentIndex == index ? Color(0XFF0000c4) : Colors.grey),
            );
          }),
        )
      ],
    );
  }

  List<String> CarouselImg = [
    'assets/images/card1.jpeg',
    'assets/images/card2.jpeg',
    'assets/images/card3.jpeg'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (int i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
}
