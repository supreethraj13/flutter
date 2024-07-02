import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultscore;
  final VoidCallback reset;

  Result(this.resultscore,this.reset);

  String get resultPhrase{
    String resultText;
    if(resultscore==100){
      resultText='You are awsome and innocent';
    }else if(resultscore>=90){
      resultText='Pretty likeable';
    }else if(resultscore>=80){
      resultText='OK';
    }else{
      resultText='meh';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Center(
        child: Column(
        children:<Widget>[Text(resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
          TextButton(onPressed: reset, child: Text('Restart Quiz'))
    ],
    ),
    );
  }
}