import 'package:flutter/material.dart';
import 'package:quizzles/componants/small_text.dart';
import 'package:quizzles/models/questions.dart';

import 'choice_question.dart';

class QuestionView extends StatelessWidget {
  Questions? questions;


  QuestionView({required this.questions});

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText((questions?.counter==10)?'10/10':'0${questions?.counter}/10',fontSize: 10,color: Color(0xff36e7bb),),
            SmallText(questions?.question,fontSize: 20,color: Colors.white,),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Image(
            image: NetworkImage('https://cdn.mos.cms.futurecdn.net/YMtayWGwpiau57vwqDrDad.jpg'),
            fit: BoxFit.contain,
          ),
        ),
        ChoiceQuestion(answer:questions?.answers![0] , count: 1, isChoiced: false),
        ChoiceQuestion(answer:questions?.answers![1] , count: 2, isChoiced: false),
        ChoiceQuestion(answer:questions?.answers![2] , count: 3, isChoiced: false),
        ChoiceQuestion(answer:questions?.answers![3] , count: 4, isChoiced: false),
      ],
    );
  }
}
