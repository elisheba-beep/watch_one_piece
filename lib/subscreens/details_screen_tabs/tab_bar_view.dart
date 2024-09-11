import 'package:flutter/material.dart';
import 'package:watch_one_piece/subscreens/details_screen_tabs/build_episodes_tab.dart';
import 'package:watch_one_piece/subscreens/details_screen_tabs/build_explore_tab.dart';
import 'package:watch_one_piece/subscreens/details_screen_tabs/build_more_details_tab.dart';

class OnePieceTabBarView extends StatelessWidget {
  const OnePieceTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
              child: TabBarView(
                children: [
                  buildEpisodesTab(),
                  buildExploreTab(),
                  buildMoreDetailsTab(),
                ],
              ),
            );
  }
}