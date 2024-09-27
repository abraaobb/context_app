import 'package:context_app/components/game_status.dart';
import 'package:context_app/components/welcome_text.dart';
import 'package:context_app/components/word_list.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final attemps = 2;

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
            Offstage(offstage: attemps == 0, child: WordList())
          ],
        ));
  }
}
