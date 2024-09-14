import 'package:context_app/constants/colors.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:flutter/material.dart';

class WordItem extends StatelessWidget {
  const WordItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          color: AppColors.tileBackground,
          borderRadius: Dimensions.defaultRadius),
      child: Stack(children: [
        Container(
          width: 10,
          decoration: BoxDecoration(
              color: Colors.cyan, borderRadius: Dimensions.defaultRadius),
        ),
        const Padding(
          padding: Dimensions.defaultPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'piloto',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text('22',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
            ],
          ),
        ),
      ]),
    );
  }
}
