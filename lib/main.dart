import 'package:flutter/material.dart';
import 'package:flutter_guide/quiz.dart';
import 'package:flutter_guide/result.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  static const _questions=[
    {'questionText':'what\'s your favorite colour?',
      'answer':[{'text':'BLACK','score':10},
        {'text':'BLUE','score':40},
        {'text':'RED','score':20},
        {'text':'GREEN','score':30}],},
    {'questionText':'what\'s your favorite animal?',
      'answer':[{'text':'TIGER','score':5},
        {'text':'DOG','score':20},
        {'text':'CAT','score':15},
        {'text':'ELEPHANT','score':10}],},
    {'questionText':'who\'s your favorite actor?',
      'answer':[{'text':'TOM HOLLAND','score':10},
        {'text':'RAYN REYNOLDS','score':40},
        {'text':'HENRY','score':20},
        {'text':'RDJ',"score":30}],},
  ];
  var _questionindex=0;
  var _totalscore=0;
  void _reset(){
    setState(() {
      _questionindex=0;
      _totalscore=0;
    });

  }
  void _answequestion(int score) {

    _totalscore += score;

    setState(() {
      _questionindex=_questionindex+1;
    });

    print(_questionindex);
    if (_questionindex < _questions.length){
      print('we have more questions?');
    }else{
      print('no more question');
    }
  }

  @override
  Widget build(BuildContext context){

    return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('Quiz App'),),
        body:_questionindex < _questions.length?
        Quiz(
          answequestion: _answequestion,
          questionindex: _questionindex,
          questions: _questions,)
         :Result(_totalscore,_reset),
    ),);
  }
}
