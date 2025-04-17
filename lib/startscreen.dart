import 'package:flutter/material.dart';


class Startscreen extends StatelessWidget{
  const Startscreen({super.key});
  @override
  Widget build(context){
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/quiz_logo.png",
        width: 250,color: const Color.fromARGB(150, 255, 255, 255),),
        const SizedBox(height: 50,),
        const Text("Learn Flutter the fun way",
        style: TextStyle(color: Colors.white,
        fontSize: 25
        ),
        ),
        const SizedBox(height: 20,),
        OutlinedButton.icon(onPressed: (){}, 
        label: Text("Start Quiz",
        style: TextStyle(color:Colors.white,
        fontSize: 15),
        ),icon: Icon(Icons.arrow_right_alt,
        color: Colors.white,size: 25,),
        )
      ],
    ),
    );
  }
  }