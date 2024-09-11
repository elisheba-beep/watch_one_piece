import 'package:flutter/material.dart';

Widget buildEpisodesTab() {
  return ListView.builder(
    itemCount: 8, // Number of episodes
    itemBuilder: (context, index) {
      return ListTile(
        leading: const Icon(Icons.play_circle_outline),
        title: Text(
          'Episode ${index + 1}',
        ),
        subtitle: Text(
          'Episode Title ${index + 1}',
        ),
        trailing: IconButton(
          icon: const Icon(Icons.download),
          onPressed: () {
            // Download episode logic
          },
        ),
        onTap: () {
          // Play selected episode logic
        },
      );
    },
  );
}
