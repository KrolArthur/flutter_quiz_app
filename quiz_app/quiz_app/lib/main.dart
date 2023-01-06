import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myAppState();
  }
}

class myAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Some1 quest',
      'Some2 quest'
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Smths'),),
      body: Column(children: [
        Question(questions[questionIndex]),
        Answer(answerQuestion),
        Answer(answerQuestion),
        Answer(answerQuestion),
      ],)
      ),
    );
  }
}