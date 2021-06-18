import 'flashcard_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'flashcard_state.dart';

class FlashcardStateNotifier extends StateNotifier<FlashcardState>
    with LocatorMixin {
  FlashcardStateNotifier(this.repository) : super(FlashcardState()) {
    //repositoryから受け取ったデータをstateつかって保存する
    _getFlashcards();
  }

  final FlashcardRepository repository;

  Future<void> _getFlashcards() async {
    var flashcards = await repository.getFlashcards();
    state = state.copyWith(flashcards: flashcards);
  }

  Future<void> onTapRemembered(int index) async {
    var flashcards = state.flashcards;
    await print(flashcards[index]);
    flashcards[index] = flashcards[index].copyWith(count : flashcards[index].count + 1);
    await print(flashcards[index]);

    state = state.copyWith(flashcards: flashcards);
    await print(state.flashcards[index].count);
  }

  Future<void> onTapRetry() async {}
}
