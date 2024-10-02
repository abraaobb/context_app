import 'dart:convert';
import 'package:context_app/models/distance.dart';
import 'package:http/http.dart' as http;

class WordService {
  Future<Distance> getDistance(String word) async {
    final url = Uri.parse(
        'https://api.contexto.me/machado/pt-br/game/${getGameId()}/$word');
    final result = await http.get(url);
    final decoded = jsonDecode(result.body);
    var distance = decoded['distance'];
    final Distance response =
        Distance(distance: distance, word: decoded['word']);
    return response;
  }

  String getGameId() {
    final initialDate = DateTime(2022, 2, 23);
    final currentDate = DateTime.now();
    return (currentDate.difference(initialDate).inDays).toString();
  }
}
