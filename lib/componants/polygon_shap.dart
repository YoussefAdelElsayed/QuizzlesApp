import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:quizzles/models/polygon.dart';
import 'package:quizzles/models/questions.dart';
import 'package:quizzles/screens/question_screen.dart';
import 'package:quizzles/utils/app_navigator.dart';
import 'head_text.dart';

class PolygonShap extends StatelessWidget {
   Polygon? polygon;

   PolygonShap({required this.polygon});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: (polygon?.isLocked)!?0.5:1,
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star_border_outlined,color: Colors.orangeAccent,size: 30,),
                Icon(Icons.star_border_outlined,color: Colors.orangeAccent,size: 30,),
                Icon(Icons.star_border_outlined,color: Colors.orangeAccent,size: 30,),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                InkWell(
                  onTap:(polygon?.isLocked)!?(){}: (){
                    AppNavigator.navigateToNewScreen(true, context, QuestionScreen(questions: level1[1],));
                  },
                  child: ClipPolygon(
                    sides: 5,
                    borderRadius: 15.0,
                    child: Container(
                      color: polygon?.color,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HeadText('Level', color: Colors.white,fontSize: 20,),
                          HeadText(((polygon?.counter)!<10)?'0${polygon?.counter}':'${polygon?.counter}', color: Colors.white,fontSize: 20,),
                        ],
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: (polygon?.isLocked)!?1:0,
                  child:(polygon?.isLocked)!? Icon(
                    Icons.lock,
                    color: Colors.orange,
                    size: 75,
                  ):null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
