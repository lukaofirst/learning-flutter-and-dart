// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 16) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 20) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 25) {
      resultText = 'You are... strange?!';
    } else {
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: resetHandler, child: Text('Restart the Quiz!'))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
