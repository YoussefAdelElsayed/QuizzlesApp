import 'dart:math';
import 'package:flutter/material.dart';
import 'clipped_parts_widget.dart';

class TwoColorsBackground extends StatelessWidget {

  Color? topColor;
  Color? bottomColor;

  TwoColorsBackground({required this.topColor,required this.bottomColor});

  @override
  Widget build(BuildContext context) {
    return ClippedPartsWidget(
      top: Container(
        color: topColor,
      ),
      bottom: Container(
        color: bottomColor,
      ),
      splitFunction: (Size size, double x) {
        // normalizing x to make it exactly one wave
        final normalizedX = x / size.width * 3.5 * pi;
        final waveHeight = size.height / 50;
        final y = size.height / 2.4 - sin(normalizedX) * waveHeight;

        return y;
      },
    );
  }
}
