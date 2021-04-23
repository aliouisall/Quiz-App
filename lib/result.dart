import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Your score is : ' + resultScore.toString(),
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: resetHandler, child: Text('Restart Quiz !')),
        ],
      ),
    );
  }
}
