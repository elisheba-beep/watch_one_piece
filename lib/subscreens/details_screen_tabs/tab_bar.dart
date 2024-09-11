import 'package:flutter/material.dart';

class OnePieceTabBar extends StatelessWidget {
  const OnePieceTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return // Tab Bar
       const TabBar(
      tabs: [
        Tab(text: 'Episodes'),
        Tab(text: 'Explore'),
        Tab(text: 'More Details'),
      ],
    );
  }
}
