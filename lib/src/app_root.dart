import 'package:flutter/material.dart';
import 'package:quizzles/screens/level_screen.dart';
import 'package:quizzles/screens/question_screen.dart';
import 'package:quizzles/screens/quizzles_home_screen.dart';
import 'package:quizzles/screens/result_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizzlesHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
