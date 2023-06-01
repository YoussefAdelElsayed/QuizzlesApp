import 'package:flutter/material.dart';

import 'head_text.dart';

class ChoiceQuestion extends StatefulWidget {
  String? answer;
  int? count;
  bool? isChoiced;

  ChoiceQuestion({required this.answer,required this.count,required this.isChoiced});

  @override
  State<ChoiceQuestion> createState() => _ChoiceQuestionState();
}

class _ChoiceQuestionState extends State<ChoiceQuestion> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    widget.isChoiced=false;
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color:(widget.isChoiced!)? Color(0xff36e7bb): null,
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
                widget.isChoiced = true;
              });
            },
            child: HeadText(widget.answer,color:(widget.isChoiced!)?Colors.black :Colors.white,fontSize: 20,),
          ),
        ],
      ),
    );
  }
}
