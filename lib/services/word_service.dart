import 'dart:convert';
import 'package:context_app/models/distance.dart';
import 'package:http/http.dart' as http;

class WordService {
  Future<Distance> getDistance(String word) async {
    final url =
        Uri.parse('https://api.contexto.me/machado/pt-br/game/952/$word');
    final result = await http.get(url);
    final decoded = jsonDecode(result.body);
    var distance = decoded['distance'];
    final Distance response =
        Distance(distance: distance, word: decoded['word']);
    return response;
  }
}
