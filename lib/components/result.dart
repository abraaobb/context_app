import 'package:context_app/components/word_item.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int distance;
  final String word;
  const Result({required this.distance, required this.word, super.key});

  @override
  Widget build(BuildContext context) {
    if (distance == -1) {
      return const Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text('Não conheço esta palavra'),
      );
    } else if (distance == -2) {
      return const Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text('Você ja tentou essa palavra'),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: WordItem(distance, word),
    );
  }
}
