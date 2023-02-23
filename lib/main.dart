import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(_questionIndex)),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(child: Text("Answer 2"), onPressed: _answerQuestion),
            ElevatedButton(child: Text("Answer 3"), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
