import 'package:flutter/material.dart';

import 'head_text.dart';

class ScoreCard extends StatelessWidget {
  int? score;

  ScoreCard({required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
        color: Color(0xff6a49fe),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeadText('Your final score is',color: Colors.white,fontSize: 30,),
          CircleAvatar(
            radius: 120,
            backgroundColor: Color(0xfffbc629),
            child: HeadText('$score',fontSize: 130,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
