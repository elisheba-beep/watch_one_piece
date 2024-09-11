import 'package:flutter/material.dart';
import 'package:watch_one_piece/widgets/home_widgets/home_carousel.dart';
import 'package:watch_one_piece/widgets/home_widgets/home_scrollview.dart';
import 'package:watch_one_piece/widgets/shared_widgets/one_piece_logo.dart';

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
      appBar: AppBar(
        title: const OnePieceLogo(),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              // top carousel
              HomeCarousel(
                itemsList: itemsList,
                current: _current,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              // one piece exclusives
              HomeScrollView(
                itemsList: itemsList,
                heading: "One piece Originals and Exclusives >",
                width: MediaQuery.of(context).size.width / 3,
              ),
              // top arcs
              HomeScrollView(
                  itemsList: itemsList,
                  width: MediaQuery.of(context).size.width / 2,
                  heading: "Top ARCS >")
            ],
          ),
        ),
      ),
    );
  }
}
