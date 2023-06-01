import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzles/componants/buttons.dart';
import 'package:quizzles/componants/circle_Icon.dart';
import 'package:quizzles/componants/head_text.dart';
import 'package:quizzles/componants/score_card.dart';
import 'package:quizzles/componants/small_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1147),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1f1147),
        leading: CircleIcon(smallIcon: Icons.arrow_back,),
        title: Center(child: HeadText('Results',color: Color(0xff36e7bb),fontSize: 20,)),
        actions: [
          SizedBox(width: 50,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SmallText('Total correct answers',fontSize: 15,color: Colors.white,),
                SmallText('6 out of 10 Questions',fontSize: 15,color: Color(0xff36e7bb),),
              ],
            ),
            ScoreCard(score: 60),
            Buttons(text: 'Try Again', outLine: false, half: false),
          ],
        ),
      ),
    );
  }
}
