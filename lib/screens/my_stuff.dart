import 'package:flutter/material.dart';
import 'package:watch_one_piece/subscreens/details_screen_tabs/settings_screen.dart';
import 'package:watch_one_piece/widgets/shared_widgets/one_piece_list_view.dart';

class MyStuff extends StatefulWidget {
  const MyStuff({super.key});

  @override
  State<MyStuff> createState() => _MyStuffState();
}

class _MyStuffState extends State<MyStuff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              const CircleAvatar(
                child: Icon(Icons.person),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Tomiwa",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Watchlist",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 24,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "1 video",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text(
                    "Filter",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const OnePieceListView(
                url: 'assets/images/carousel1.jpeg',
                itemCount: 1,
                title: 'Enies Lobby Arc',
                numberOfEpisodes: 5)
          ],
        ),
      ),
    );
  }
}
