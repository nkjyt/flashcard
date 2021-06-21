import 'package:flashcard/data/word_data.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Flashcard extends StatelessWidget {
  Flashcard(this.wordData);

  final WordData wordData;
  GlobalKey<FlipCardState> flipKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlipCard(
        key: flipKey,
        front: _wordCard(wordData.word),
        back: _wordCard(wordData.jpn),
      ),
    );
  }

  Widget _wordCard(String text) {
    return Container(
      width: 600,
      height: 300,
      //color: Colors.grey[100],
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
      child: GestureDetector(
        child: Text(
          text,
          style: TextStyle(fontSize: 70.0),
        ),
        onTap: () => flipKey.currentState.toggleCard(),
      ),
    );
  }

  Widget _buttonWidget(String text, Color color, Function onTap, Icon icon) {
    return Container(
      width: 500,
      margin: EdgeInsets.all(24.0),
      child: ElevatedButton.icon(
          onPressed: () => onTap,
          icon: icon,
          label: Text(
            text,
            style: TextStyle(fontSize: 32.0),
          ),
          style: ElevatedButton.styleFrom(
              primary: color, onPrimary: Colors.black)),
    );
  }

  Widget _countIndicator(String text) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 30.0, 0.0),
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}
