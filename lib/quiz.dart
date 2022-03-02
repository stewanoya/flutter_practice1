import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({this.questions, this.answerQuestion, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      // because of inference, I don't need have widget specified as a type.
      // flutter figures out the type based on what's in the list.
      children: <Widget>[
        Question(
          questions[questionIndex]["questionText"] as String,
        ),
        // the spread operator removes the nested array left by the map method
        // therefore taking each answer widget and adding it to the original
        // children list.
        ...(questions[questionIndex]["answers"] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
