import 'package:context_app/constants/colors.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:flutter/material.dart';

class WordItem extends StatelessWidget {
  final double distance;
  final String word;
  const WordItem(this.distance, this.word, {super.key});

  Color getColor() {
    if (distance < Dimensions.nearDistanceRef) {
      return AppColors.nearColor;
    } else if (distance > Dimensions.farDistanceRef) {
      return AppColors.farColor;
    } else {
      return AppColors.mediumColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 55,
      decoration: BoxDecoration(
          color: AppColors.tileBackground,
          borderRadius: Dimensions.defaultRadius),
      child: Stack(children: [
        Container(
          width: distance,
          decoration: BoxDecoration(
              color: getColor(), borderRadius: Dimensions.defaultRadius),
        ),
        Padding(
          padding: Dimensions.defaultPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                word,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(distance.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16))
            ],
          ),
        ),
      ]),
    );
  }
}
