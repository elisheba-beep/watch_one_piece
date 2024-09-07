class Episode {
  final String id;
  final String title;
  final String description;
  final String image;
  final String episode;
  final String seasonTitle;
  final String seasonId;
  final String nextEpisodeId;
  final String nextEpisodeTitle;
  final String url;

  Episode({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.episode,
    required this.seasonTitle,
    required this.seasonId,
    required this.nextEpisodeId,
    required this.nextEpisodeTitle,
    required this.url,
  });

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      episode: json['episode'],
      seasonTitle: json['season_title'],
      seasonId: json['season_id'],
      nextEpisodeId: json['next_episode_id'],
      nextEpisodeTitle: json['next_episode_title'],
      url: json['url'],
    );
  }
}
