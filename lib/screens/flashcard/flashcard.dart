import 'package:flashcard/data/word_data.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Flashcard extends StatelessWidget {
  Flashcard(this.wordData);

  final WordData wordData;
  GlobalKey<FlipCardState> flipKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlipCard(
          key: flipKey,
          front: Container(
            margin: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
            child: GestureDetector(
              child: Text(
                wordData.word,
                style: TextStyle(fontSize: 40.0),
              ),
              onTap: () => flipKey.currentState.toggleCard(),
            ),
          ),
          back: Container(
            margin: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
            child: GestureDetector(
              child: Text(
                wordData.jpn,
                style: TextStyle(fontSize: 40.0),
              ),
              onTap: () => flipKey.currentState.toggleCard(),
            ),
          ),
        ),
        _buttonWidget(
            'remembred', Colors.green, () {}, Icon(Icons.check_circle_outline)),
        _buttonWidget('retry', Colors.red, () {}, Icon(Icons.replay_outlined))
      ],
    );
  }

  Widget _buttonWidget(String text, Color color, Function onTap, Icon icon) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: SizedBox(
        width: 300,
        height: 50,
        child: ElevatedButton.icon(
            onPressed: () => onTap,
            icon: icon,
            label: Text(text),
            style: ElevatedButton.styleFrom(
                primary: color, onPrimary: Colors.black)),
      ),
    );
  }
}
