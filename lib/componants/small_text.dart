import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String? text;
  double? fontSize = 10;
  Color? color = Colors.grey[400];

  SmallText(this.text, {Key? key, this.fontSize, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(text!,
        style: TextStyle(
          fontSize: fontSize,
          color: color,

        ),
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
