import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
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
  late VideoPlayerController _controller;
  late Future<Episode> _episodeFuture;

  @override
  void initState() {
    super.initState();
    _episodeFuture =
        ApiService().fetchEpisode(widget.arcId, widget.episodeNumber);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _initializeAndPlay(String videoUrl) {
    _controller = VideoPlayerController.network((videoUrl))
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
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
            return const Center(child: Text('Error loading episode'));
          } else if (snapshot.hasData) {
            final episode = snapshot.data!;
            _initializeAndPlay(episode.videoUrl);

            return Column(
              children: [
                if (_controller.value.isInitialized)
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
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
