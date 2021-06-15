import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'flashcard.dart';
import 'flashcard_state_notifier.dart';
import 'flashcard_repository.dart';

class FlashcardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flashcard sample"),
        centerTitle: true,
      ),
      body: _List(),
    );
  }
}

class _List extends StatelessWidget {
  final flashcardProvider = StateNotifierProvider(
      (_) => FlashcardStateNotifier(FlashcardRepository()));
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final state = watch(flashcardProvider.state);
      return ListView.builder(
        itemCount: state.flashcards.length,
          itemBuilder: (context, int index) =>
              Flashcard(state.flashcards[index]));
    });
  }
}
