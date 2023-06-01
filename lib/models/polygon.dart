import 'package:flutter/material.dart';

class Polygon{
  static int count = 0;
  Color? color;
  int? counter;
  bool isLocked = true;
  Polygon({required this.color, required this.isLocked}){
   count+=1;
   counter=count;
  }
}

List<Polygon> polygon = [
  Polygon(color: Colors.deepPurple,isLocked: false),
  Polygon(color: Colors.blue,isLocked: true),
  Polygon(color: Colors.orangeAccent,isLocked: true),
  Polygon(color: Colors.green,isLocked: true),
  Polygon(color: Colors.pinkAccent,isLocked: true),
  Polygon(color: Colors.deepPurple,isLocked: true),
  Polygon(color: Colors.blue,isLocked: true),
  Polygon(color: Colors.orangeAccent,isLocked: true),
  Polygon(color: Colors.green,isLocked: true),
  Polygon(color: Colors.pinkAccent,isLocked: true),
  Polygon(color: Colors.deepPurple,isLocked: true),
  Polygon(color: Colors.blue,isLocked: true),
  Polygon(color: Colors.orangeAccent,isLocked: true),
  Polygon(color: Colors.green,isLocked: true),
  Polygon(color: Colors.pinkAccent,isLocked: true),
  Polygon(color: Colors.deepPurple,isLocked: true),
  Polygon(color: Colors.blue,isLocked: true),
  Polygon(color: Colors.orangeAccent,isLocked: true),
  Polygon(color: Colors.green,isLocked: true),
  Polygon(color: Colors.pinkAccent,isLocked: true),
];