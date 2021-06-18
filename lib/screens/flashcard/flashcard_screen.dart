import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'flashcard.dart';
import 'flashcard_state_notifier.dart';
import 'flashcard_repository.dart';
import 'package:flashcard/widgets/button.dart';

final studyStateProvider = StateNotifierProvider((ref) => StudyState(false));
final indexStateProvider = StateNotifierProvider((ref) => IndexState(0));

class StudyState extends StateNotifier<bool> {
  StudyState(bool isStudying) : super(isStudying);
  void toggle() => state = !state;
}

class IndexState extends StateNotifier<int> {
  IndexState(int index) : super(index);
  void addIndex() => state++;
}

class FlashcardScreen extends HookWidget {
  String user_id = "";
  FlashcardScreen({Key key, this.user_id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(user_id);
    final isStudying = useProvider(studyStateProvider.state);

    return Scaffold(
        appBar: AppBar(
          title: Text("Flashcard sample"),
          centerTitle: true,
        ),
        body: isStudying
            ? Container(
                child: FlashcardPage(),
                alignment: Alignment.bottomCenter,
              )
            : ElevatedButton(
                onPressed: () => context.read(studyStateProvider).toggle(),
                child: Text('start studying')));
  }
}

class FlashcardPage extends HookWidget {
  final flashcardProvider = StateNotifierProvider(
      (_) => FlashcardStateNotifier(FlashcardRepository()));
  final index = useProvider(indexStateProvider.state);

  @override
  Widget build(BuildContext context) {
    final flashcardNotifier = useProvider(flashcardProvider);
    final state = useProvider(flashcardProvider.state);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            flex: 1,
            child: _countIndicator(state.flashcards[index].count.toString())),
        Expanded(
          flex: 5,
          child: Flashcard(state.flashcards[index]),
        ),
        Expanded(
          flex: 2,
          child: buttonFlashcard(
              'remembred',
              Colors.green,
              () => flashcardNotifier.onTapRemembered(index),
              Icon(Icons.check_circle_outline)),
        ),
        Expanded(
            flex: 2,
            child: buttonFlashcard(
                'retry', Colors.red, () {}, Icon(Icons.replay_outlined))),
      ],
    );
    /* Container(
        alignment: Alignment.bottomCenter, child: Flashcard(state.flashcards[index]) */
    /* ListView.builder(
        itemCount: state.flashcards.length,
          itemBuilder: (context, int index) =>
              Flashcard(state.flashcards[index])); */
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
