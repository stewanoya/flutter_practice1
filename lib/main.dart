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
      home: Text("Hello, wow it's working!!"),
    );
  }
}
