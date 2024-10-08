import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:watch_one_piece/subscreens/details_screen.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({
    super.key,
    required this.itemsList,
    required int current,
    required this.onPageChanged,
  }) : _current = current;

  final List<String> itemsList;
  final int _current;
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
            viewportFraction: 1.5,
            initialPage: 0,
            scrollDirection: Axis.horizontal,
            onPageChanged: onPageChanged,
          ),
          items: itemsList
              .map(
                (item) => itemsList.isEmpty
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailsScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                            width: MediaQuery.of(context).size.width,
                            'assets/images/one_piece_logo.png'),
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailsScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          width: MediaQuery.of(context).size.width,
                          item,
                          fit: BoxFit.fill,
                        ),
                      ),
              )
              .toList(),
        ),
        DotsIndicator(
          dotsCount: itemsList.length,
          position: _current,
          decorator: DotsDecorator(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            size: const Size(8, 8),
            activeSize: const Size(18, 8),
          ),
        ),
      ],
    );
  }
}
