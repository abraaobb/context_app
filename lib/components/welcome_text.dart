import 'package:context_app/constants/colors.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimensions.defaultPadding,
      decoration: BoxDecoration(
          color: AppColors.tipBackground,
          borderRadius: Dimensions.defaultRadius),
      child: const Column(
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(children: [
                Icon(Icons.help_outline_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Como jogar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ])),
          Text(
            'Descubra a palavra secreta do dia através do significado.\n\nDepois de enviar uma palavra, você verá o quão próximo ela está da resposta.\n\nPalavras são mais próximas quando são frequentemente utilizadas no mesmo contexto.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
