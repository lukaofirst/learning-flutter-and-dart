// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Blue', 'score': 8},
        {'text': 'Orange', 'score': 6}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 4},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Lion', 'score': 7}
      ]
    },
    {
      'questionText': 'Who\'s your favorite team?',
      'answers': [
        {'text': 'Liverpool', 'score': 9},
        {'text': 'Barcelona', 'score': 10},
        {'text': 'PSG', 'score': 7},
        {'text': 'Bayern Munich', 'score': 8}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more buttons');
    } else {
      print('No more buttons');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
