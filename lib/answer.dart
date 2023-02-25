import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerList;

  const Answer(this.selectHandler, this.answerList, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            selectHandler();
          },
          child: Text(answerList)),
    );
  }
}
