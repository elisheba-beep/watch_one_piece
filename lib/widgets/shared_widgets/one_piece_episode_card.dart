import 'package:flutter/material.dart';
import 'package:watch_one_piece/models/episode.dart';

class OnePieceEpisodeCard extends StatelessWidget {
  final Episode episode;

  const OnePieceEpisodeCard({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.network(episode.thumbnail, width: 80, fit: BoxFit.cover),
        title: Text(episode.name),
        subtitle: Text('Episode: ${episode.number}'),
        trailing: const Icon(Icons.play_arrow),
        onTap: () {
          // Handle tap to navigate to the episode details screen
        },
      ),
    );
  }
}
