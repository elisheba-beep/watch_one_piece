import 'package:flutter/material.dart';

class OnePieceListView extends StatelessWidget {
  const OnePieceListView({
    super.key,
    required this.url,
    required this.itemCount,
    required this.title,
    required this.numberOfEpisodes,
  });
  final int itemCount;
  final String url;
  final String title;
  final int numberOfEpisodes;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.asset(
                  height: 150,
                  width: 200,
                  url),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    (numberOfEpisodes == 1) ? "$numberOfEpisodes episode" : "$numberOfEpisodes episodes",
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Text(
                ">",
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
