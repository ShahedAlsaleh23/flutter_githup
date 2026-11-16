import 'package:flutter/material.dart';
import 'package:flutter_application_21/Quiz App/widgets/answer_widget.dart';
import 'package:flutter_application_21/Quiz%20App/models/answer_model.dart';
import 'package:flutter_application_21/Quiz%20App/models/question_model.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index=0;
  int score=0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Quiz App",style: TextStyle(fontSize: 25,fontWeight: .bold),)),backgroundColor:const Color.fromARGB(252, 146, 45, 38),),
      backgroundColor:const Color.fromARGB(255, 170, 186, 194),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: score>=questions.length*5 ? 
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                children: [
                  Icon(Icons.celebration,
                  size: 200,
                  color:const Color.fromARGB(252, 146, 45, 38) ,),
                  SizedBox(height: 30,),
                  Text("congraulation\nYour score is $score",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: .bold,
                    color: const Color.fromARGB(252, 146, 45, 38)
                  ),),
                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      score=0;
                      index=0;
                    });
                  }, child:Text("Back to quiz"))
                ],
              ),
            ):
            Column(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(questions[index].question,
                    style: TextStyle(
                      fontWeight: .bold,
                      fontSize: 30
                    ),),
                    Column(
                      children:questions[index].answerModel.map((a)=>AnswerWidget(answerModel: a,increaseIndex:()=>setState(() {
                          if(score<questions.length*5){
                          if(index<questions.length-1){
                          index++;
                        }
                            score+=5;
                          }
                         
                        

                        
                        
                        
                      }
                      
                          ) ,)).toList()
                    ),
                  ]),
                    Text("Score : ${score}",
                      style: TextStyle(
                      color:const Color.fromARGB(252, 146, 45, 38),
                      fontSize: 25,
                      fontWeight: .bold,

                    ),)
                    
                  ],
                ),
              
            
          ),
        ),
      ),
    );
  }
}