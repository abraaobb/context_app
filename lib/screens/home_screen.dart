import 'package:context_app/components/game_status.dart';
import 'package:context_app/components/welcome_text.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: Dimensions.defaultPadding,
        child: Column(
          children: [GameStatus(), WelcomeText()],
        ));
  }
}
