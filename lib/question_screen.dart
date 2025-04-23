import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer_button.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/models/quiz_questions.dart';

class question_screen extends StatefulWidget{
  const question_screen({super.key});
  @override
  State<question_screen> createState(){
    return _questionscreen();
  }
}
class _questionscreen extends State<question_screen>{

  @override
  Widget build(context){
    final currentquestion= questions[0];
    return SizedBox(
      width:double.infinity,
      height: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(currentquestion.question,style: TextStyle(color: Colors.white),),
        SizedBox(height: 30,),
        AnswerButton(
          answerText: currentquestion.options[0],
          onTap: () {},
        ),
        SizedBox(height: 10,),
        AnswerButton(answerText: currentquestion.options[1],
        onTap: () {},
        ),
        SizedBox(height: 10,),
        AnswerButton(answerText: currentquestion.options[2],
        onTap: () {},
        ),
        SizedBox(height: 10,),
        AnswerButton(answerText: currentquestion.options[3],
        onTap: () {},
        ),
      ],
      ),
    );
  }
}