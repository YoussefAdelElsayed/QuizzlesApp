import 'package:flutter/material.dart';

import 'head_text.dart';

class Buttons extends StatelessWidget {
  String? text;
  bool? outLine;
  bool? half;
  void Function()? function;
  bool? padding = false;
  Buttons({required this.text,required this.outLine,required this.half,this.function,this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (half!)? 20.0 : (padding!)?25:0,vertical: 15.0),
      child: Container(
        height: (half!)? 45 : 70,
        width: (half!)? 140 : double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: (outLine!)? null : Color(0xff6a49fe),
          border: (outLine!)?Border.all(
            color: Color(0xff6a49fe),
            width: 2.0,
          ) : null,
        ),
        child: MaterialButton(
          onPressed: function,
          child: HeadText(text, fontSize: (half!)? 15 : 20, color: (outLine!)? Color(0xff6a49fe): Colors.white,),
        ),
      ),
    );
  }
}
