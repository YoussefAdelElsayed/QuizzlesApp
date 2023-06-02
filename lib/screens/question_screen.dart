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
import 'package:quizzles/screens/result_screen.dart';
import 'package:quizzles/utils/app_navigator.dart';

class QuestionScreen extends StatefulWidget {
  Questions? questions;

  QuestionScreen({required this.questions});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  PageController _pageController = PageController(initialPage: 0);
  int pageNumber=0;
  @override
  Widget build(BuildContext context) {
    print('Correct ${widget.questions?.correct}');
    print('Choiced ${widget.questions?.choicedNumber}');
    print('Answer ${level1[pageNumber].answerNumber}');
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
                    physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    itemCount: level1.length,
                    itemBuilder: (context,index){
                      // pageNumber=index+1;
                      return QuestionView(questions: level1[index],);
                    },
                  ),
                ),
                Row(
                  children: [
                    Buttons(text: 'Previous', outLine: false, half: true,function: (){
                      setState(() {
                        if(pageNumber>0){pageNumber--;}
                        _pageController.previousPage(duration: Duration(microseconds: 1), curve: Curves.ease);
                      });
                    },),
                    InkWell(
                      onTap: (){
                        setState(() {
                          pageNumber++;
                          _pageController.nextPage(duration: Duration(microseconds: 1), curve: Curves.ease);
                          if (level1[pageNumber].answerNumber==widget.questions?.choicedNumber){
                            widget.questions?.correct++;
                          }

                        });
                      },
                      child:(pageNumber == 9)?Buttons(text: 'Finish', outLine: false, half: true,function: (){
                        AppNavigator.navigateToNewScreen(true, context, ResultScreen(questions: level1[1],));
                      },): Buttons(text: 'Next', outLine: false, half: true,),
                    ),
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
