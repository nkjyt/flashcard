import 'flashcard_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'flashcard_state.dart';

class FlashcardStateNotifier extends StateNotifier<FlashcardState> {
  FlashcardStateNotifier(this.repository) : super(FlashcardState()) {
    //repositoryから受け取ったデータをstateつかって保存する
  }

  final FlashcardRepository repository;

  Future<void> _getFlashcards() async {
    
  }
}
