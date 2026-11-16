import 'package:flutter/material.dart';
import 'package:flutter_application_21/Quiz%20App/models/answer_model.dart';
class AnswerWidget extends StatelessWidget {
  AnswerModel answerModel;
  VoidCallback increaseIndex;
  AnswerWidget({required this.answerModel,required this.increaseIndex});

  @override 

  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(onPressed:(){
                    answerModel.onPress();
                    increaseIndex();
                  }, 
                  child: Center(child: Text(answerModel.item))),
    );
                
  }
}