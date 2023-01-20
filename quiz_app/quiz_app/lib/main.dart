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
  final questions = const [
    {
      'question' : 'Question1',
      'answers' : ['Uno', 'Dos', 'Tres', 'Quatro']
    },
    {
      'question' : 'Question2',
      'answers' : ['Uno2', 'Dos2', 'Tres2', 'Quatro2']
    },
    {
      'question' : 'Question3',
      'answers' : ['Uno3', 'Dos3', 'Tres3', 'Quatro3']
    } 
];

  void answerQuestion() {
    if (questionIndex < questions.length) {

    }
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < questions.length ? Column(
          children: [
            Question(
              questions[questionIndex]['question'] as String,
            ),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
      ],)
      : Center(
          child: Text('You did it'),
        ),
      ),
    );
  }
}