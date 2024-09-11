import 'package:flutter/material.dart';
import 'package:watch_one_piece/subscreens/details_screen_tabs/tab_bar.dart';
import 'package:watch_one_piece/subscreens/details_screen_tabs/tab_bar_view.dart';
import 'package:watch_one_piece/widgets/shared_widgets/download_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Watch One Piece'),
        ),
        body: Column(
          children: [
            // Banner with Play button
            Stack(
              children: [
                Image.asset(
                  'assets/images/one_piece_logo.png', // Replace with actual banner image
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'One Piece',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                        ),
                        onPressed: () {
                          // Play episode logic here
                        },
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('Play S1 E1'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const DownloadButton(),
            const OnePieceTabBar(),
            const OnePieceTabBarView(),
          ],
        ),
      ),
    );
  }
}
