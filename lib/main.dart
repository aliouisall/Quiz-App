import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final questions = [
    {
      'question': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Blue', 'score': 3},
        {'text': 'Red', 'score': 1},
        {'text': 'Black', 'score': 5}
      ]
    },
    {
      'question': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Dog', 'score': 0},
        {'text': 'Cat', 'score': 2},
        {'text': 'Lion', 'score': 4}
      ]
    },
    {
      'question': 'Who\'s your favorite Football Player ?',
      'answers': [
        {'text': 'Messi', 'score': 1},
        {'text': 'Neymar', 'score': 2},
        {'text': 'De Bruyne', 'score': 3}
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerChosen(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerChosen: _answerChosen,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
