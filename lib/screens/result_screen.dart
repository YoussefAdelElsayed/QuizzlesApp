import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzles/componants/buttons.dart';
import 'package:quizzles/componants/circle_Icon.dart';
import 'package:quizzles/componants/head_text.dart';
import 'package:quizzles/componants/score_card.dart';
import 'package:quizzles/componants/small_text.dart';
import 'package:quizzles/models/questions.dart';
import 'package:quizzles/screens/level_screen.dart';
import 'package:quizzles/screens/question_screen.dart';
import 'package:quizzles/utils/app_navigator.dart';

class ResultScreen extends StatelessWidget {
  Questions? questions;

  ResultScreen({required this.questions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1147),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1f1147),
        leading:
        InkWell(
          onTap: (){
            AppNavigator.navigateToNewScreen(true, context, LevelScreen());
          }, child: CircleIcon(smallIcon: Icons.arrow_back,)),
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
                SmallText('${questions?.correct} out of 10 Questions',fontSize: 15,color: Color(0xff36e7bb),),
              ],
            ),
            ScoreCard(score: (questions?.correct)!*10),
            Buttons(text: 'Try Again', outLine: false, half: false,padding: true,function: (){
              AppNavigator.navigateToNewScreen(true, context, QuestionScreen(questions: level1[1],));
              questions?.correct=0;
              questions?.choicedNumber=0;
            },),
          ],
        ),
      ),
    );
  }
}
