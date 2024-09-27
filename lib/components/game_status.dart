import 'package:flutter/material.dart';

class GameStatus extends StatelessWidget {
  int attemps;
  GameStatus({required this.attemps, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'JOGO: ',
        ),
        const Text(
          '#123',
          style: TextStyle(fontWeight: FontWeight.bold),
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
