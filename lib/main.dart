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

  final _questions = [
    {
      "questionText": "What's your favourite colour?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": ["Rabbit", "Snake", "Elephant", "Lion"]
    },
    {
      "questionText": "Who's your favorite Stew?",
      "answers": ["Stew", "Stew", "Stew", "Stew"]
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
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
            : Result(),
      ),
    );
  }
}
