import 'package:context_app/components/word_item.dart';
import 'package:flutter/material.dart';

class WordList extends StatelessWidget {
  List<WordItem> items;
  WordList({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: items,
    );
  }
}
