import 'package:flashcard/data/word_data.dart';
import 'package:flutter/material.dart';

class Flashcard extends StatelessWidget {
  Flashcard(this.wordData);

  final WordData wordData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Center(
          child: Column(
            children: [Text(wordData.word), Text(wordData.jpn)],
          ),
        ),
      ),
    );
  }
}
