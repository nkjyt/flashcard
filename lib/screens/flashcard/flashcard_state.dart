import 'package:flashcard/data/word_data.dart';
import 'package:flashcard/screens/flashcard/flashcard.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_state.freezed.dart';

part 'flashcard_state.g.dart';

@freezed
abstract class FlashcardState with _$FlashcardState {
  const factory FlashcardState({WordData flashcard}) =
      _FlashcardState;
  factory FlashcardState.fromJson(Map<String, dynamic> json) =>
      _$FlashcardStateFromJson(json);
}
