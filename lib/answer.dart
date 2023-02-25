import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function() selecteHandler;
  String answerlist;

  Answer(this.selecteHandler, this.answerlist, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            selecteHandler();
          },
          child: Text(answerlist)),
    );
  }
}
