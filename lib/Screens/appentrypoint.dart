import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AppEntryPoint extends StatelessWidget {
  AppEntryPoint({super.key});

  final List<String> imgList = [
    'https://img.freepik.com/premium-vector/teacher-teaching-online-mobile-phone-with-books-papers-background-vector-illustration_432516-2327.jpg?size=626&ext=jpg&ga=GA1.1.1084936283.1675699374&semt=ais',
    'https://img.freepik.com/premium-vector/open-book-mountain-geography-read-school-education-knowledge-concept_48369-11831.jpg?size=626&ext=jpg&ga=GA1.1.1084936283.1675699374&semt=ais',
    'https://img.freepik.com/free-vector/man-choosing-book-home-library-flyer-template_74855-15089.jpg?size=626&ext=jpg&ga=GA1.1.1084936283.1675699374&semt=ais'
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0x3d618fff), Color(0x0d131fee)])),
      child: Scaffold(
        body: Center(
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.all(8),
            child: ListView(
              // ignore: duplicate_ignore,
              children: [
                CarouselSlider(
                    items: imgList
                        // ignore: avoid_unnecessary_containers
                        .map((item) => Container(
                              child: ClipRRect(
                                child: Image.network(
                                  item,
                                  fit: BoxFit.fill,
                                  height: 700,
                                ),
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                        pageSnapping: true,
                        padEnds: true,
                        autoPlay: false,
                        viewportFraction: 1,
                        enlargeCenterPage: false,
                        height: 700)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
