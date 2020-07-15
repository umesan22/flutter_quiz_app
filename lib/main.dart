import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
// runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 15},
        {'text': 'White', 'score': 20},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Rabbit', 'score': 15},
        {'text': 'Snake', 'score': 5},
      ]
    },
    {
      'questionText': 'Who\'s your favorite person?',
      'answers': [
        {'text': 'Max', 'score': 20},
        {'text': 'Max', 'score': 20},
        {'text': 'Max', 'score': 20},
        {'text': 'Max', 'score': 20},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions[_questionIndex])
            : Result(resetHandler: _resetQuiz, resultScore: _totalScore),
      ),
    );
  }
}
