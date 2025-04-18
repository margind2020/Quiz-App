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
  Widget? activescreen;
  initState(){
    super.initState();
    activescreen=Startscreen(switchscreen);
  }
  void switchscreen(){
    setState(() {
      activescreen=question_screen();
    });
  }
  @override
  Widget build(context){
    return MaterialApp(home: Scaffold(backgroundColor: Colors.blue,
    body: activescreen,
  ),);
  }
}