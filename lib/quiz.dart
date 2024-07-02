import 'package:flutter/material.dart';
import 'package:flutter_guide/question.dart';
import 'package:flutter_guide/answer.dart';

class Quiz extends StatelessWidget{
  final List<Map<String, Object>> questions;
  final Function answequestion;
  final int questionindex;
  Quiz({required this.questions,required this.answequestion(int score),required this.questionindex});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
    Question(questions[questionindex]['questionText']as String,),
    ...(questions[questionindex]['answer'] as List<Map<String, Object>>).map((answer){
    return Answer(()=>answequestion(answer['score']),
        answer['text'] as String);
    }).toList()
    ],);
  }
}