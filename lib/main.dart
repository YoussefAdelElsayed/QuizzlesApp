import 'package:flutter/material.dart';
import 'package:quizzles/src/app_root.dart';

void main() {
  runApp(const AppRoot());
}
// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: ClippedPartsWidget(
//           top: Container(
//             color: const Color(0xff2a175b),
//           ),
//           bottom: Container(
//             color: const Color(0xff1f1147),
//           ),
//           splitFunction: (Size size, double x) {
//             // normalizing x to make it exactly one wave
//             final normalizedX = x / size.width * 3.5 * pi;
//             final waveHeight = size.height / 50;
//             final y = size.height / 2.2 - sin(normalizedX) * waveHeight;
//
//             return y;
//           },
//         ),
//       ),
//     ),
//   );
// }




