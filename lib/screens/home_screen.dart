import 'package:context_app/components/game_status.dart';
import 'package:context_app/components/welcome_text.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:context_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: Dimensions.defaultPadding,
        child: Column(
          children: [
            Container(
              height: 55,
              decoration: BoxDecoration(
                  color: AppColors.tileBackground,
                  borderRadius: Dimensions.defaultRadius),
              child: Stack(children: [
                Container(
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: Dimensions.defaultRadius),
                ),
                const Padding(
                  padding: Dimensions.defaultPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'piloto',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text('22',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16))
                    ],
                  ),
                ),
              ]),
            )
          ],
        ));
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
