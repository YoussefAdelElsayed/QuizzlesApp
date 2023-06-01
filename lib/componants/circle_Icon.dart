import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  IconData? smallIcon;

  CircleIcon({required this.smallIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        child: Icon(
          smallIcon,
          color: Colors.white,
          size: 25,
        ),
        radius: 20,
        backgroundColor: Color(0xff2a175b),
      ),
    );
  }
}
