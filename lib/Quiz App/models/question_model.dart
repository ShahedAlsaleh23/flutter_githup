import 'package:flutter/material.dart';
import 'package:flutter_application_21/Quiz%20App/models/answer_model.dart';

class QuestionModel {
  String question;
  List<AnswerModel>answerModel;
  QuestionModel({required this.question,required this.answerModel});
}
List<QuestionModel> questions=[
  QuestionModel(question: "What is your fav food?",answerModel:[
     AnswerModel(item: "Pasta", onPress:()=>debugPrint("Pasta") ),
      AnswerModel(item: "Pitzaa", onPress:()=>debugPrint("Pitzaa") ),
      AnswerModel(item: "Burger", onPress:()=>debugPrint("Burger") ),
  ] ),
  QuestionModel(question: "What is your fav color?",answerModel:[
      AnswerModel(item: "Red", onPress:()=>debugPrint("Red") ),
      AnswerModel(item: "Blue", onPress:()=>debugPrint("Blue") ),
      AnswerModel(item: "Black", onPress:()=>debugPrint("Black") ),
  ]),
  QuestionModel(question: "What is your fav programing lang?",answerModel:[
      AnswerModel(item: "Python", onPress:()=>debugPrint("Python") ),
      AnswerModel(item: "Java", onPress:()=>debugPrint("Java") ),
      AnswerModel(item: "c++", onPress:()=>debugPrint("c++") ),
  ]),
  QuestionModel(question: "What is your fav language?",answerModel:[
      AnswerModel(item: "English", onPress:()=>debugPrint("English") ),
      AnswerModel(item: "Arabic", onPress:()=>debugPrint("Arabic") ),
      AnswerModel(item: "Turkish", onPress:()=>debugPrint("Turkish") ),
  ]),
];