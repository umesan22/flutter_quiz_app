import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        'Black',
        'White',
        'Red',
        'Blue',
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'Dog',
        'Cat',
        'Rabbit',
        'Other',
      ]
    },
    {
      'questionText': 'Who\'s your favorite person?',
      'answers': [
        'Max',
        'Max',
        'Max',
        'Max',
      ]
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
