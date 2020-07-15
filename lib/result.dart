import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int resultScore;

  Result({this.resetHandler, this.resultScore});

  String get resultPhrase {
    String resultText;

    if (resultScore <= 30) {
      resultText = 'not bad';
    } else {
      resultText = 'You are good person';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Reset Quiz!'),
          onPressed: resetHandler,
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
