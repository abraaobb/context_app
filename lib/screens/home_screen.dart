import 'package:context_app/components/game_status.dart';
import 'package:context_app/components/welcome_text.dart';
import 'package:context_app/components/word_item_list.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:context_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(padding: Dimensions.defaultPadding, children: [
      Column(
        children: [],
      )
    ]);
  }
}

// GameStatus(),
//             TextField(
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black)),
//                   hintText: 'Digite uma palavra',
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black, width: 2))),
//             ),
//             WelcomeText(),
