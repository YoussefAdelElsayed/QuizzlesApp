import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzles/componants/buttons.dart';
import 'package:quizzles/componants/choice_question.dart';
import 'package:quizzles/componants/circle_Icon.dart';
import 'package:quizzles/componants/head_text.dart';
import 'package:quizzles/componants/question_view.dart';
import 'package:quizzles/componants/small_text.dart';
import 'package:quizzles/models/questions.dart';
import 'package:quizzles/screens/level_screen.dart';
import 'package:quizzles/utils/app_navigator.dart';

class QuestionScreen extends StatelessWidget {
  Questions? questions;

  QuestionScreen({required this.questions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1147),
      appBar: AppBar(
        elevation: 0,
        leading: SizedBox(width: 60,),
        backgroundColor: Color(0xff1f1147),
        title: Center(child: HeadText('Level 1',color: Color(0xff36e7bb),fontSize: 20,)),
        actions: [
          InkWell(child: CircleIcon(smallIcon: Icons.menu,),
            onTap: (){
              AppNavigator.navigateToNewScreen(true, context, LevelScreen());
            },
          ),
          SizedBox(width: 1,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 25),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 795,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: level1.length,
                    itemBuilder: (context,index){
                      return QuestionView(questions: level1[index],);
                    },
                  ),
                ),
                Row(
                  children: [
                    Buttons(text: 'Previous', outLine: false, half: true,),
                    Buttons(text: 'Next', outLine: false, half: true),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
