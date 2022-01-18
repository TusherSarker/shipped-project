import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carousel extends StatelessWidget {
  final List<String> imageList = [
    "assets/images/slider/c1.jpg",
    "assets/images/slider/m2.jpg",
    "assets/images/slider/m1.jpeg",
    "assets/images/slider/w4.jpeg",
    "assets/images/slider/w3.jpeg",
    "assets/images/slider/w1.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
          items: imageList
              .map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        Image.asset(
                          e,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
            aspectRatio: 2.0,
            autoPlay: true,
            enlargeCenterPage: true,
          )),
    );
  }
}
