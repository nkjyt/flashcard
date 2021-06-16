import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'flashcard.dart';
import 'flashcard_state_notifier.dart';
import 'flashcard_repository.dart';

final studyStateProvider = StateNotifierProvider((ref) => StudyState(false));

class StudyState extends StateNotifier<bool> {
  StudyState(bool isStudying) : super(isStudying);
  void toggle() => state = !state;
}

class FlashcardScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isStudying = useProvider(studyStateProvider.state);

    return Scaffold(
        appBar: AppBar(
          title: Text("Flashcard sample"),
          centerTitle: true,
        ),
        body: isStudying
            ? Container(
                child: _List(),
                alignment: Alignment.bottomCenter,
              )
            : ElevatedButton(
                onPressed: () => context.read(studyStateProvider).toggle(),
                child: Text('start studying')));
  }
}

class _List extends HookWidget {
  final flashcardProvider = StateNotifierProvider(
      (_) => FlashcardStateNotifier(FlashcardRepository()));
  @override
  Widget build(BuildContext context) {
    final state = useProvider(flashcardProvider.state);
    return Container(
        
        alignment: Alignment.bottomCenter,
        child: Flashcard(state.flashcards[0])
        /* ListView.builder(
        itemCount: state.flashcards.length,
          itemBuilder: (context, int index) =>
              Flashcard(state.flashcards[index])); */
        );
  }
}
