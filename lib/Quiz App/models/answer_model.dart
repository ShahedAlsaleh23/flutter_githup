import 'package:flutter/scheduler.dart';

class AnswerModel {
  //method
  VoidCallback onPress;
  //answer
  String item;

  AnswerModel({required this.item,required this.onPress});
}