import 'package:context_app/services/word_service.dart';
import 'package:flutter/material.dart';

class GameStatus extends StatelessWidget {
  int attemps;
  GameStatus({required this.attemps, super.key});
  final WordService wordService = WordService();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'JOGO: ',
        ),
        Text(
          '#${wordService.getGameId()}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text('TENTATIVAS: '),
              Text(
                attemps.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
