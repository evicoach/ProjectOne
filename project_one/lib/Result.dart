import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    String resultText = '';
    if (resultScore <= 8) {
      resultText = 'You\'re awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You\'re strange';
    } else {
      resultText = 'You\'re so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
      ),
    );
  }
}
