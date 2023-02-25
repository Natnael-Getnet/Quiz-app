import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Qiuz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  Function answerQuestion;

  Qiuz(this.questions, this.questionIndex, this.answerQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(
              () => answerQuestion(
                  questions[questionIndex]['correctIndex'],
                  (questions[questionIndex]['answers'] as List<String>)
                      .indexOf(answer)),
              answer);
        }).toList()
      ],
    );
  }
}
