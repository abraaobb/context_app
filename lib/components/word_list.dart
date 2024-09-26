import 'package:context_app/components/word_item.dart';
import 'package:flutter/material.dart';

class WordList extends StatelessWidget {
  const WordList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        WordItem(320, 'piloto'),
        WordItem(200, 'maria'),
        WordItem(30, 'abraao')
      ],
    );
  }
}
