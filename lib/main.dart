import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // common practice - if providing method that also exists in the class
  // that I'm extending
  // let dart know that the override is deliberate.
  Widget build(BuildContext context) {
    return MaterialApp(
      // scaffold creates a basic page design (color, layout etc.)
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Text("This is default text"),
      ),
    );
  }
}
