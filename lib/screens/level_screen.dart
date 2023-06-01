import 'package:flutter/material.dart';
import 'package:quizzles/componants/circle_Icon.dart';
import 'package:quizzles/componants/head_text.dart';
import 'package:quizzles/componants/polygon_shap.dart';
import 'package:quizzles/models/polygon.dart';


class LevelScreen extends StatelessWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1147),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1f1147),
        title: Center(child: HeadText('Levels',color: Color(0xff36e7bb),fontSize: 20,)),
        actions: [
          SizedBox(width: 50,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              childAspectRatio: .84
            ),
            itemCount: polygon.length,
            itemBuilder: (context,index){
              return PolygonShap(polygon: polygon[index],);
            }
        ),
      ),

    );
  }
}
