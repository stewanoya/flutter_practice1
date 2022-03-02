import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // tells dart that this value will never change after it's initial construction
  // otherwise flutter will complain that it's not in final state even though it's
  // marked immutable.
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
