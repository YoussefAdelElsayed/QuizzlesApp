import 'package:flutter/material.dart';
import 'package:quizzles/componants/small_text.dart';
import 'package:quizzles/models/questions.dart';

import 'choice_question.dart';
import 'head_text.dart';

class QuestionView extends StatefulWidget {
  Questions? questions;


  QuestionView({required this.questions});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  List<bool> chosies= [
    false,false,false,false
  ];
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText((widget.questions?.counter==10)?'10/10':'0${widget.questions?.counter}/10',fontSize: 10,color: Color(0xff36e7bb),),
            SmallText(widget.questions?.question,fontSize: 20,color: Colors.white,),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Image(
            image: NetworkImage('https://cdn.mos.cms.futurecdn.net/YMtayWGwpiau57vwqDrDad.jpg'),
            fit: BoxFit.contain,
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color:(chosies[0])? Color(0xff36e7bb): null,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xff6a49fe),
                child: HeadText('${1}',color: Colors.white,fontSize: 18,),
              ),
              MaterialButton(
                onPressed: (){
                  setState(() {
                    for(int i=0; i<4;i++){
                      chosies[i]=false;
                      chosies[0]=true;
                      widget.questions?.choicedNumber=1;
                      print(widget.questions?.choicedNumber);
                    }
                  });
                },
                child: HeadText(widget.questions?.answers![0],color:(chosies[0])?Colors.black :Colors.white,fontSize: 20,),
              ),
            ],
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color:(chosies[1])? Color(0xff36e7bb): null,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xff6a49fe),
                child: HeadText('${2}',color: Colors.white,fontSize: 18,),
              ),
              MaterialButton(
                onPressed: (){
                  setState(() {
                    for(int i=0; i<4;i++){
                      chosies[i]=false;
                      chosies[1]=true;
                      widget.questions?.choicedNumber=2;
                      print(widget.questions?.choicedNumber);
                    }
                  });
                },
                child: HeadText(widget.questions?.answers![1],color:(chosies[1])?Colors.black :Colors.white,fontSize: 20,),
              ),
            ],
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color:(chosies[2])? Color(0xff36e7bb): null,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xff6a49fe),
                child: HeadText('${3}',color: Colors.white,fontSize: 18,),
              ),
              MaterialButton(
                onPressed: (){
                  setState(() {
                    for(int i=0; i<4;i++){
                      chosies[i]=false;
                      chosies[2]=true;
                      widget.questions?.choicedNumber=3;
                      print(widget.questions?.choicedNumber);
                    }
                  });
                },
                child: HeadText(widget.questions?.answers![2],color:(chosies[2])?Colors.black :Colors.white,fontSize: 20,),
              ),
            ],
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color:(chosies[3])? Color(0xff36e7bb): null,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xff6a49fe),
                child: HeadText('${4}',color: Colors.white,fontSize: 18,),
              ),
              MaterialButton(
                onPressed: (){
                  setState(() {
                    for(int i=0; i<4;i++){
                      chosies[i]=false;
                      chosies[3]=true;
                      widget.questions?.choicedNumber=4;
                      print(widget.questions?.choicedNumber);
                    }
                  });
                },
                child: HeadText(widget.questions?.answers![3],color:(chosies[3])?Colors.black :Colors.white,fontSize: 20,),
              ),
            ],
          ),
        )
      ],
    );
  }
}
