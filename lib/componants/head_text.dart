import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {

  String? text;
  double? fontSize = 15;
  Color? color = Colors.black;

  HeadText(this.text, {this.fontSize, this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(text!,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}
