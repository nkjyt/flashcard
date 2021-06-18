import 'package:flashcard/data/word_data.dart';

import 'flashcard_repository.dart';
import 'package:flashcard/data/references.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'flashcard_state.dart';

class FlashcardStateNotifier extends StateNotifier<FlashcardState>
    with LocatorMixin {
  FlashcardStateNotifier(this.repository) : super(FlashcardState()) {
    //repositoryから受け取ったデータをstateつかって保存する
    _getFlashcards();
  }

  final FlashcardRepository repository;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  DocumentReference userDoc;

  List<WordData> flashcards = [];
  int index = 0;

  Future<void> _getFlashcards() async {
    flashcards = await repository.getFlashcards();
    state = state.copyWith(flashcard: flashcards[index]);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String uid = prefs.getString('uid');
    userDoc = await firestore.collection(Strings.exprimentName).doc(uid);
  }

  Future<void> onTapRemembered() async {
    var flashcard = state.flashcard;
    await print(flashcard);
    flashcard = flashcard.copyWith(count: flashcard.count + 1);
    flashcard = flashcard.copyWith(isRemembered: true);

    await print(flashcard);

    index++;
    state = state.copyWith(flashcard: flashcards[index]);
    userDoc.set({flashcard.word: flashcard.toJson()}, SetOptions(merge: true));

  }

  Future<void> onTapRetry() async {
    var flashcard = state.flashcard;
    await print(flashcard);
    flashcard = flashcard.copyWith(count: flashcard.count + 1);
    flashcard = flashcard.copyWith(isRemembered : false);

    await print(flashcard);

    index++;
    state = state.copyWith(flashcard: flashcards[index]);
    userDoc.set({flashcard.word: flashcard.toJson()}, SetOptions(merge: true));
  }
}
