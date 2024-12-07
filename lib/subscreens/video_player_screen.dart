import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:watch_one_piece/models/episode.dart';
import 'package:watch_one_piece/services/api_service.dart';

class VideoPlayerScreen extends StatefulWidget {
  final int episodeNumber;
  final int arcId;

  const VideoPlayerScreen(
      {super.key, required this.arcId, required this.episodeNumber});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late Future<Episode> _episodeFuture;
  BetterPlayerController? _betterPlayerController;

  @override
  void initState() {
    super.initState();
    _episodeFuture =
        ApiService().fetchEpisode(widget.arcId, widget.episodeNumber);
  }

  void _initializeBetterPlayer(String videoUrl) {
    if (videoUrl.isEmpty || !Uri.tryParse(videoUrl)!.isAbsolute) {
      print('Invalid or empty video URL: $videoUrl');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Video Error'),
          content: const Text('Invalid or inaccessible video URL.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    final betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      videoUrl,
    );

    _betterPlayerController = BetterPlayerController(
      const BetterPlayerConfiguration(
        autoPlay: true,
        aspectRatio: 16 / 9,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          enablePlayPause: true,
          enableFullscreen: true,
        ),
      ),
      betterPlayerDataSource: betterPlayerDataSource,
    );
  }

  @override
  void dispose() {
    _betterPlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Episode Player'),
      ),
      body: FutureBuilder<Episode>(
        future: _episodeFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error fetching episode: ${snapshot.error}');
            return const Center(child: Text('Error loading episode'));
          } else if (snapshot.hasData) {
            final episode = snapshot.data!;
            print('Video URL: ${episode.videoUrl}');

            if (_betterPlayerController == null) {
              _initializeBetterPlayer(episode.videoUrl);
            }

            return Column(
              children: [
                if (_betterPlayerController != null)
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: BetterPlayer(
                      controller: _betterPlayerController!,
                    ),
                  )
                else
                  const Center(child: CircularProgressIndicator()),
                const SizedBox(height: 10),
                Text(
                  episode.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Episode ${episode.episodeNumber}'),
              ],
            );
          } else {
            return const Center(child: Text('No episode data'));
          }
        },
      ),
    );
  }
}
