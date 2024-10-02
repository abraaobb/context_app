import 'dart:math';

import 'package:context_app/constants/colors.dart';
import 'package:context_app/constants/dimensions.dart';
import 'package:flutter/material.dart';

class WordItem extends StatelessWidget {
  final int distance;
  final String word;
  const WordItem(this.distance, this.word, {super.key});

  Color getColor() {
    if (distance.toDouble() < Dimensions.nearDistanceRef) {
      return AppColors.nearColor;
    }
    if (distance.toDouble() < Dimensions.farDistanceRef) {
      return AppColors.farColor;
    }
    return AppColors.mediumColor;
  }

  double getBarWidth(int distance, BuildContext ctx) {
    final width = MediaQuery.of(ctx).size.width - 20.0;

    const total = 111155;
    const lambda = 0.5;
    const startX = 0.0;
    const endX = 100.0;
    final startY = pdf(startX, lambda);
    final endY = pdf(endX, lambda);
    final x = distance / total * (endX - startX);
    final result = (pdf(x, lambda) - endY) / (startY - endY) * 100;
    return (result / 100) * width;
  }

  double pdf(double x, double lambda) {
    return lambda * exp((-lambda) * x);
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
          width: getBarWidth(distance, context),
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
              Text((distance + 1).toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16))
            ],
          ),
        ),
      ]),
    );
  }
}
