import 'package:flutter/material.dart';
import 'head_text.dart';

class ChoiceQuestion extends StatefulWidget {
  String? answer;
  int? count;
  bool? isChoiced;

  ChoiceQuestion({required this.answer,required this.count,});

  @override
  State<ChoiceQuestion> createState() => _ChoiceQuestionState();
}

class _ChoiceQuestionState extends State<ChoiceQuestion> {

  List<bool> chosies= [
    false,false,false,false
  ];
  @override

  @override
  Widget build(BuildContext context) {
    print('thisssssssssssssssssss${widget.count!-1} ${chosies}');
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color:(chosies[widget.count!-1])? Color(0xff36e7bb): null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(width: 20,),
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xff6a49fe),
            child: HeadText('${widget.count}',color: Colors.white,fontSize: 18,),
          ),
          MaterialButton(
            onPressed: (){
              setState(() {
                for(int i=0; i<4;i++){
                  chosies[i]=false;
                  print('false');
                  if(widget.count!-1 == i){
                    chosies[i]=true;
                    print('in the if');
                  }
                  print('${chosies[i]}'+'$i');
                }
              });
            },
            child: HeadText(widget.answer,color:(chosies[widget.count!-1])?Colors.black :Colors.white,fontSize: 20,),
          ),
        ],
      ),
    );
  }
}
