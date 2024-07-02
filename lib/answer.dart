import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final VoidCallback select;
  final String answerText;


  Answer(this.select, this.answerText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: select, child: Text(answerText)),
    );
  }
}