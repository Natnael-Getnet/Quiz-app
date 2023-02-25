import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function() resetHandler;
  const Result(this.result, this.resetHandler, {super.key});

  String get getResult {
    return 'you have answered $result questions correctly';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getResult,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text("Restart quiz"),
          )
        ],
      ),
    );
  }
}
