// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite Stew?',
      'answers': [
        {'text': 'Stew', 'score': 1},
        {'text': 'Stew', 'score': 1},
        {'text': 'Stew', 'score': 1},
        {'text': 'Stew', 'score': 1},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  @override // common practice - if providing method that also exists in the class
  // that I'm extending
  // let dart know that the override is deliberate.
  Widget build(BuildContext context) {
    // a map is like a js object or a ruby hash.

    return MaterialApp(
      // scaffold creates a basic page design (color, layout etc.)
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        // body can only take 1 widget
        // there are different types of widgets (visible and invisible)
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
