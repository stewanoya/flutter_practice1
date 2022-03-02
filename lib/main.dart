// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
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
  var questionIndex = 0;

  void answerQuestion() {
    print("Answer Chosen");
    setState(() {
      questionIndex++;
    });
  }

  @override // common practice - if providing method that also exists in the class
  // that I'm extending
  // let dart know that the override is deliberate.
  Widget build(BuildContext context) {
    // a map is like a js object or a ruby hash.
    var questions = [
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

    return MaterialApp(
      // scaffold creates a basic page design (color, layout etc.)
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        // body can only take 1 widget
        // there are different types of widgets (visible and invisible)
        body: Column(
          // because of inference, I don't need have widget specified as a type.
          // flutter figures out the type based on what's in the list.
          children: <Widget>[
            Question(
              questions[questionIndex]["questionText"],
            ),
            // the spread operator removes the nested array left by the map method
            // therefore taking each answer widget and adding it to the original
            // children list.
            ...(questions[questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
