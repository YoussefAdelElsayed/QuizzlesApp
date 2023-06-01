import 'package:flutter/material.dart';

class AppNavigator{
  static navigateToNewScreen(bool isFinished, BuildContext context,screen){
    if(isFinished){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => screen));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
    }
  }
}