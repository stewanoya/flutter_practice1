import 'package:flutter/material.dart';

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
    var questions = [
      "What's your favourite colour?",
      "What's your favourite animal?",
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
            Text(questions[questionIndex]),
            // raised button is deprecated. ElevatedButton is the replacement.
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
