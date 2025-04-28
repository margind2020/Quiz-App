import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer_button.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/models/quiz_questions.dart';
import 'package:google_fonts/google_fonts.dart';


class question_screen extends StatefulWidget{
  const question_screen({super.key});
  @override
  State<question_screen> createState(){
    return _questionscreen();
  }
}
class _questionscreen extends State<question_screen>{
  var currentquestion1=0;
  void answerquestion(){
    setState(() {
      currentquestion1++;
    });
  }

  @override
  Widget build(context){
    final currentquestion= questions[currentquestion1];
    return SizedBox(
      width:double.infinity,
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Text(currentquestion.question,
           style: GoogleFonts.lato(
            color:  const Color.fromARGB(255, 194, 225, 241),
            fontSize: 24,
            fontWeight: FontWeight.bold,
           ),
           ),
          SizedBox(height: 30,),
          ...currentquestion.ShuffledOptions().map((answer){
            return AnswerButton(
              answerText: answer,
             onTap: answerquestion,);
          })
        ],
        ),
      ),
    );
  }
}