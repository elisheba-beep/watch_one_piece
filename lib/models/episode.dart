class Episode {
  final int id;
  final String name;
  final int number;
  final String videoUrl;
  final String thumbnail; // Add this line for thumbnail

  Episode({required this.id, required this.name, required this.number, required this.videoUrl, required this.thumbnail});

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
      id: json['id'],
      name: json['name'],
      number: json['number'],
      videoUrl: json['video_url'],
      thumbnail: json['thumbnail'], // Include thumbnail in JSON parsing
    );
  }
}