import 'package:flashcard/data/word_data.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Flashcard extends StatelessWidget {
  Flashcard(this.wordData);

  final WordData wordData;
  GlobalKey<FlipCardState> flipKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: flipKey,
      front: Center(
        child: GestureDetector(
          child: Text(
            wordData.word,
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () => flipKey.currentState.toggleCard(),
        ),
      ),
      back: Center(
        child: GestureDetector(
          child: Text(
            wordData.jpn,
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () => flipKey.currentState.toggleCard(),
        ),
        
      ),
    );
  }
}
