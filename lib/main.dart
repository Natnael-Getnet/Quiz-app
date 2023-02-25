import 'package:flutter/material.dart';

import './qiuz.dart';
import './result.dart';
import 'questionlibrary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = QuestionLibrary().questions;

  var _questionIndex = 0;
  var _totalResult = 0;

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalResult = 0;
    });
  }

  void _answerQuestion(correctIndex, answerIndex) {
    if (correctIndex == answerIndex) {
      _totalResult++;
    }

    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('My first application')),
          body: _questionIndex < questions.length
              ? Qiuz(questions, _questionIndex, _answerQuestion)
              : Result(_totalResult, _reset)),
    );
  }
}
