import 'package:context_app/components/game_status.dart';
import 'package:context_app/components/welcome_text.dart';
import 'package:context_app/components/word_item.dart';
import 'package:context_app/components/word_list.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

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
              onSubmitted: getText,
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

  void getText(String value) {
    setState(() {
      attemps++;
    });
    developer.log('usuario digitou: $value e foi tentativa: $attemps');
  }
}
