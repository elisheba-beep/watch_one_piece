import 'package:flutter/material.dart';
import 'package:watch_one_piece/screens/search.dart';
import 'package:watch_one_piece/widgets/shared_widgets/one_piece_list_view.dart';

class Downloads extends StatefulWidget {
  const Downloads({super.key});

  @override
  State<Downloads> createState() => _DownloadsState();
}

bool edit = false;

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "Downloads",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "43 videos  30 hours  3.9 GB",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      edit = !edit;
                    });
                  },
                  child: const Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            OnePieceListView(
              url: 'assets/images/carousel1.jpeg',
              title: 'Wano Arc',
              itemCount: 5,
              numberOfEpisodes: 1,
              edit: edit,
            ),
            const SizedBox(
              height: 30,
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Search(),
                  ),
                );
              },
              child: const Text(
                "Download more videos",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
