class Arc {
  final int id;
  final String name;
  final String thumbnail;

  Arc({required this.id, required this.name, required this.thumbnail});

  factory Arc.fromJson(Map<String, dynamic> json) {
    return Arc(
      id: json['id'],
      name: json['name'],
      thumbnail: json['thumbnail'],
    );
  }
}