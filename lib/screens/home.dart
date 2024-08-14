import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> itemsList = [
    'assets/images/carousel1.jpeg',
    'assets/images/carousel2.webp',
    'assets/images/carousel3.jpg',
    'assets/images/carousel4.jpeg',
  ];

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Image(
                width: MediaQuery.sizeOf(context).width / 2,
                height: 50,
                image: const AssetImage("assets/images/one_piece_logo.png"),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 250.0,
                  viewportFraction: 1.5,
                  initialPage: 0,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: itemsList
                  .map(
                    (item) => itemsList.isEmpty
                        ? Image.asset(
                            width: MediaQuery.of(context).size.width,
                            'assets/images/one_piece_logo.png')
                        : Image.asset(
                            width: MediaQuery.of(context).size.width,
                            item,
                            fit: BoxFit.fill,
                          ),
                  )
                  .toList(),
            ),
            DotsIndicator(
              dotsCount: itemsList.length,
              position: _current.toDouble(),
              decorator: DotsDecorator(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                size: const Size(8, 8),
                activeSize: const Size(18, 8),
              ),
            )
          ],
        ),
      ),
    );
  }
}
