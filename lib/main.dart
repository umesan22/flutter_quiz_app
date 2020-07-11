import 'package:flutter/material.dart';

import './question.dart';

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
  List<String> questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  var _questionIndex = 0;

  void answer() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void answer2() {
    setState(() {
      _questionIndex -= 1;
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
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              // onPressed: () => print('sample'),
              onPressed: answer2,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('sample');
              },
            ),
          ],
        ),
      ),
    );
  }
}
