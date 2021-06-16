import 'flashcard_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'flashcard_state.dart';

class FlashcardStateNotifier extends StateNotifier<FlashcardState> {
  FlashcardStateNotifier(this.repository) : super(FlashcardState()) {
    //repositoryから受け取ったデータをstateつかって保存する
    _getFlashcards();
  }

  final FlashcardRepository repository;

  Future<void> _getFlashcards() async {
    await repository.initializeDatabase();
    var flashcards = await repository.getFlashcards();
    state = state.copyWith(flashcards: flashcards);
  }

  Future<void> onTapRemembered() async {

  }

  Future<void> onTapRetry() async {
    
  }
}
