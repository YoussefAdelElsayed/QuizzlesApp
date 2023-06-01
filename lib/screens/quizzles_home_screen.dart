import 'package:flutter/material.dart';
import 'package:quizzles/componants/buttons.dart';
import 'package:quizzles/componants/head_text.dart';
import 'package:quizzles/componants/small_text.dart';
import 'package:quizzles/componants/two_colors_background.dart';
import 'package:quizzles/screens/level_screen.dart';
import 'package:quizzles/utils/app_navigator.dart';

class QuizzlesHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TwoColorsBackground(topColor: const Color(0xff2a175b), bottomColor: const Color(0xff1f1147)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/app_logo.png'),
                      height: 150,
                    ),
                    HeadText('Quizzles',fontSize: 45,color: Color(0xff36e7bb),),
                  ],
                ),
                Column(
                  children: [
                    HeadText('Let\'s Play!',fontSize: 30,color: Colors.white,),
                    SmallText('Play now and liver up',fontSize: 15,color: Colors.white,),
                  ],
                ),
                Column(
                  children: [
                    Buttons(text: 'Play Now', outLine: false, half: false,padding: true,
                      function: (){
                        AppNavigator.navigateToNewScreen(false, context, LevelScreen());
                      },
                    ),
                    Buttons(text: 'About', outLine: true, half: false,padding: true,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
