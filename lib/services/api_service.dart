import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:watch_one_piece/models/arc.dart';
import 'package:watch_one_piece/models/episode.dart';

class ApiService {
  final String baseUrl = 'http://10.0.2.2:3000/api'; // Adjust as needed

  Future<List<Arc>> fetchArcs() async {
    final response = await http.get(Uri.parse('$baseUrl/arcs'));

    if (response.statusCode == 200) {
      List<dynamic> json = jsonDecode(response.body);
      return json.map((arc) => Arc.fromJson(arc)).toList();
    } else {
      throw Exception('Failed to load arcs');
    }
  }

  Future<List<Episode>> fetchEpisodes(int arcId) async {
    final response = await http.get(Uri.parse('$baseUrl/arcs/$arcId/episodes'));

    if (response.statusCode == 200) {
      List<dynamic> json = jsonDecode(response.body);
      return json.map((episode) => Episode.fromJson(episode)).toList();
    } else {
      throw Exception('Failed to load episodes');
    }
  }
}
