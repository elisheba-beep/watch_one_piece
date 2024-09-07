import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/episode.dart';

class ApiService {
  static const String baseUrl = 'https://one-piece-episodes.p.rapidapi.com';
  static const String seasonId = 'GYVNM8476';  // Example season ID
  static const String language = 'es'; // Language, can be updated as needed

  Future<List<Episode>> fetchEpisodes() async {
    final response = await http.get(
      Uri.parse('$baseUrl/one_piece/episodes_by_season/$seasonId?language=$language'),
      headers: {
        'x-rapidapi-key': 'a205791455msha260d2f39cbb28cp15c397jsn0a0c7033fa47',  // Replace with your actual API key
        'x-rapidapi-host': 'one-piece-episodes.p.rapidapi.com',
      },
    );

    if (response.statusCode == 200) {
      // Parse the response
      final data = json.decode(response.body);
      if (data['message'] == 'Success') {
        List<dynamic> episodesJson = data['episodes'];
        return episodesJson.map((json) => Episode.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load episodes');
      }
    } else {
      throw Exception('Failed to connect to the API');
    }
  }
}
