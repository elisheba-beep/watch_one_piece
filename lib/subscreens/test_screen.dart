import 'package:flutter/material.dart';
import 'package:watch_one_piece/widgets/shared_widgets/one_piece_episode_card.dart';
import '../models/episode.dart';
import '../services/api_service.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late Future<List<Episode>> episodes;

  @override
  void initState() {
    super.initState();
    episodes = ApiService().fetchEpisodes(); // Fetch episodes from the API
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watch One Piece'),
      ),
      body: FutureBuilder<List<Episode>>(
        future: episodes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return OnePieceEpisodeCard(episode: snapshot.data![index]);
              },
            );
          } else {
            return const Center(child: Text('No episodes available.'));
          }
        },
      ),
    );
  }
}
