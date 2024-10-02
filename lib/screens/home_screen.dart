import 'dart:math';

import 'package:context_app/components/game_status.dart';
import 'package:context_app/components/welcome_text.dart';
import 'package:context_app/components/word_item.dart';
import 'package:context_app/components/word_list.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController inputController = TextEditingController();

  int attemps = 0;

  List<WordItem> wordList = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: Dimensions.defaultPadding,
        child: ListView(
          children: [
            GameStatus(
              attemps: attemps,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: inputController,
              onSubmitted: computeWordEntry,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Digite uma palavra',
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2))),
            ),
            SizedBox(
              height: 10,
            ),
            Offstage(offstage: attemps != 0, child: WelcomeText()),
            SizedBox(
              height: 10,
            ),
            Offstage(offstage: attemps == 0, child: WordList(items: wordList))
          ],
        ));
  }

  void computeWordEntry(String value) async {
    final distance = await getDistance(value);
    setState(() {
      wordList.add(WordItem(distance['distance'], value));
      wordList.sort((a, b) => a.distance.compareTo(b.distance));
      attemps++;
      inputController.clear();
    });
    developer.log('usuario digitou: $value e foi tentativa: $attemps');
  }

  Future<Map<String, dynamic>> getDistance(String word) async {
    final url =
        Uri.parse('https://api.contexto.me/machado/pt-br/game/952/$word');

    final result = await http.get(url);
    var distance = Random().nextInt(100);
    return {
      'distance': distance.toDouble(),
    };
  }
}
