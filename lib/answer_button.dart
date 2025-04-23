import 'dart:math';

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
   const AnswerButton({required this.answerText,required this.onTap,super.key});

  final String answerText;
  final void Function() onTap;
  Widget build(context){
    return ElevatedButton(style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(
        horizontal: 80, 
        vertical: 10),
      backgroundColor: const Color.fromARGB(255, 75, 2, 88),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40),
    ) ),
          onPressed: onTap, 
          child: Text(answerText,
          style: TextStyle(color: Colors.white),
          ),
        );
  }
}