import "package:flutter/material.dart";
import 'package:flutter_application_1/startscreen.dart';
import 'package:flutter_application_1/question_screen.dart';

class quiz extends StatefulWidget{
  const quiz({super.key});
  @override
  State<quiz> createState(){
    return _quizstate();
  }

}

class _quizstate extends State<quiz>{
  var activescreen="startscreen";
  
  void switchscreen(){
    setState(() {
      activescreen="questionscreen";
    });
  }
  @override
  Widget build(context){
    return MaterialApp(home: Scaffold(backgroundColor: Colors.blue,
    body: activescreen=="startscreen" ? Startscreen(switchscreen)
    :question_screen(),
  ),);
  }
}