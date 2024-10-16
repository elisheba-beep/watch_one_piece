import 'package:flutter/material.dart';
import 'package:watch_one_piece/subscreens/details_screen.dart';

class OnePieceListView extends StatefulWidget {
  const OnePieceListView(
      {super.key,
      required this.url,
      required this.itemCount,
      required this.title,
      required this.numberOfEpisodes,
      this.edit = false});
  final int itemCount;
  final String url;
  final String title;
  final int numberOfEpisodes;
  final bool edit;

  @override
  State<OnePieceListView> createState() => _OnePieceListViewState();
}

bool value = false;

class _OnePieceListViewState extends State<OnePieceListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.itemCount,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsScreen(),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.edit
                  ? Checkbox(
                      value: value,
                      onChanged: (value) {
                        value = true;
                      })
                  : const SizedBox(),
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(height: 150, width: 200, widget.url),
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
                      widget.title,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      (widget.numberOfEpisodes == 1)
                          ? "${widget.numberOfEpisodes} episode"
                          : "${widget.numberOfEpisodes} episodes",
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
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
      ),
    );
  }
}
